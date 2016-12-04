/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpVacacion_actualizacionDao;
import com.model.vacacion_actualizacion;
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
public class vacacion_actualizacionDAO implements ImpVacacion_actualizacionDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT *FROM vacacion_autorizacion WHERE user=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO vacacion_autorizacion (ESTADO, NROPASO, VACACION_ID, PUESTO_ID) VALUES (?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE vacacion_autorizacion SET ESTADO=?, NROPASO=?, VACACION_ID=?, PUESTO_ID=? WHERE idautorizacion_vacacion=?";
    private final static String SQL_DELETE = "DELETE FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";
    private final static String SQL_SEARCH = "SELECT *FROM vacacion_autorizacion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM vacacion_autorizacion";
    private final static String SQL_READ = "SELECT *FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";
  
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
    public List<vacacion_actualizacion> ReadAll() {
        List<vacacion_actualizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_actualizacion x = new vacacion_actualizacion();
                x.setIdautorizacion_vacacion(rs.getInt("idautorizacion_vacacion"));
                x.setEstado(rs.getString("estado"));
                x.setNropaso(rs.getString("nropaso"));
                x.setVacacion_id(rs.getInt("vacacion_id"));
                x.setPuesto_id(rs.getInt("puesto_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<vacacion_actualizacion> Read(int id) {
        List<vacacion_actualizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_actualizacion x = new vacacion_actualizacion();
                ps.setInt(1, x.getIdautorizacion_vacacion());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(vacacion_actualizacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getEstado());
            ps.setString(2, x.getNropaso());
            ps.setInt(3, x.getVacacion_id());
            ps.setInt(4, x.getPuesto_id());
            ps.setInt(5, x.getIdautorizacion_vacacion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(vacacion_actualizacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getEstado());
            ps.setString(2, x.getNropaso());
            ps.setInt(3, x.getVacacion_id());
            ps.setInt(4, x.getPuesto_id());
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
    public List<vacacion_actualizacion> buscar(int id) {
        List<vacacion_actualizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_actualizacion x = new vacacion_actualizacion();
                x.setIdautorizacion_vacacion(rs.getInt("idautorizacion_vacacion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
