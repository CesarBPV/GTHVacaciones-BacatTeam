/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpSeccionDao;
import com.model.seccion;
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
public class seccionDAO implements ImpSeccionDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO seccion (NOMBRE, AREA_ID) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE seccion SET NOMBRE=?, AREA_ID=? WHERE idseccion=?";
    private final static String SQL_DELETE = "DELETE FROM seccion WHERE idseccion=?";
    private final static String SQL_SEARCH = "SELECT *FROM seccion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM seccion";
    private final static String SQL_READ = "SELECT *FROM seccion WHERE idseccion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM seccion WHERE idseccion=?";

    @Override
    public List<seccion> ReadAll() {
        List<seccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                seccion x = new seccion();
                x.setIdseccion(rs.getString("idusuario"));
                x.setNombre(rs.getString("nombre"));
                x.setArea_id(rs.getString("area_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<seccion> Read(String id) {
        List<seccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                seccion x = new seccion();
                ps.setString(1, x.getIdseccion());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(seccion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getArea_id());
            ps.setString(3, x.getIdseccion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(seccion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getArea_id());
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
    public List<seccion> buscar(String id) {
        List<seccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                seccion x = new seccion();
                x.setIdseccion(rs.getString("idseccion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
