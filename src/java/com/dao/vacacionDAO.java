/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.Operaciones;
import com.model.vacacion;
import com.util.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kael74
 */
public class vacacionDAO implements Operaciones<vacacion> {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT *FROM vacacion WHERE user=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO vacacion (IDCONTRATO, ES_VACACION, SOLICITUD_VACACION, REPROGRAMACION_VACACION) VALUES (?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE vacacion SET IDCONTRATO=?, ES_VACACION=?, SOLICITUD_VACACION=?, REPROGRAMACION_VACACION=? WHERE idvacacion=?";
    private final static String SQL_DELETE = "DELETE FROM vacacion WHERE idvacacion=?";
    private final static String SQL_SEARCH = "SELECT *FROM vacacion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM vacacion";
    private final static String SQL_READ = "SELECT *FROM vacacion WHERE idvacacion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM vacacion WHERE idvacacion=?";
  
    public int validar(String user, String clave) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_VALIDA);
            ps.setString(1, user);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while (rs.next()) {
                op = 1;
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public List<vacacion> ReadAll() {
        List<vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion x = new vacacion();
                x.setIdvacacion(rs.getInt("idvacacion"));
                x.setEs_vacacion(rs.getInt("es_vacacion"));                
                x.setSolicitud_vacacion(rs.getInt("solicitud_vacacion"));
                x.setReprogramacion_vacacion(rs.getInt("reprogramacion_vacacion"));
                x.setIdcontrato(rs.getInt("idcontrato"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<vacacion> Read(int id) {
        List<vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion x = new vacacion();
                ps.setInt(1, x.getIdvacacion());                
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(vacacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setInt(1, x.getIdcontrato());
            ps.setInt(2, x.getEs_vacacion());
            ps.setInt(3, x.getSolicitud_vacacion());
            ps.setInt(4, x.getReprogramacion_vacacion());
            ps.setInt(5, x.getIdvacacion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(vacacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setInt(1, x.getIdcontrato());
            ps.setInt(2, x.getEs_vacacion());
            ps.setInt(3, x.getSolicitud_vacacion());
            ps.setInt(4, x.getReprogramacion_vacacion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return op;        
    }

    @Override
    public int delete(int id) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_DELETE);
            ps.setInt(1, id);
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public List<vacacion> buscar(int id) {
        List<vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion x = new vacacion();
                x.setIdvacacion(rs.getInt("idvacacion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
