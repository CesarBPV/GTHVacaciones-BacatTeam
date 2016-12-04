/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpDetalle_vacacionDao;
import com.model.detalle_vacacion;
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
public class detalle_vacacionDAO implements ImpDetalle_vacacionDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO detalle_vacacion (FECHA_INICIO, FECHA_FIN, VACACION_ID) VALUES (?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE detalle_vacacion SET FECHA_INICIO=?,FECHA_FIN=?,VACACION_ID=? WHERE iddetalle_vacacion=?";
    private final static String SQL_DELETE = "DELETE FROM detalle_vacacion WHERE iddetalle_vacacion=?";
    private final static String SQL_SEARCH = "SELECT *FROM detalle_vacacion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM detalle_vacacion";
    private final static String SQL_READ = "SELECT *FROM detalle_vacacion WHERE iddetalle_vacacion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM detalle_vacacion WHERE iddetalle_vacacion=?";

    @Override
    public List<detalle_vacacion> ReadAll() {
        List<detalle_vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                detalle_vacacion x = new detalle_vacacion();
                x.setIddetalle_vacacion(rs.getString("iddetalle_vacacion"));
                x.setFecha_inicio(rs.getDate("fecha_inicio"));
                x.setFecha_fin(rs.getDate("fecha_fin"));
                x.setVacacion_id(rs.getString("vacacion_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<detalle_vacacion> Read(String id) {
        List<detalle_vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                detalle_vacacion x = new detalle_vacacion();
                ps.setString(1, x.getIddetalle_vacacion());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(detalle_vacacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setDate(1, x.getFecha_inicio());
            ps.setDate(2, x.getFecha_fin());
            ps.setString(3, x.getVacacion_id());
            ps.setString(4, x.getIddetalle_vacacion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(detalle_vacacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setDate(1, x.getFecha_inicio());
            ps.setDate(2, x.getFecha_fin());
            ps.setString(3, x.getVacacion_id());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return op;        
    }

    @Override
    public int delete(String id) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_DELETE);
            ps.setString(1, id);
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public List<detalle_vacacion> buscar(String id) {
        List<detalle_vacacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                detalle_vacacion x = new detalle_vacacion();
                x.setIddetalle_vacacion(rs.getString("iddetalle_vacacion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
