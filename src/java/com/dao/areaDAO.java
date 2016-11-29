/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.Operaciones;
import com.model.area;
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
public class areaDAO implements Operaciones<area> {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT *FROM AREA WHERE user=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO AREA ( nombre, departamento) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE AREA SET nombre=?, departamento=? WHERE idarea=?";
    private final static String SQL_DELETE = "DELETE FROM AREA WHERE idarea=?";
    private final static String SQL_SEARCH = "SELECT *FROM AREA WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM AREA";
    private final static String SQL_READ = "SELECT *FROM AREA WHERE idarea=?";
    private final static String SQL_BUSCAR = "SELECT *FROM AREA WHERE idarea=?";
  
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
    public List<area> ReadAll() {
        List<area> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                area x = new area();
                x.setIdarea(rs.getInt("idarea"));
                x.setNombre(rs.getString("nombre"));
                x.setDepartamento_id(rs.getInt("deparatamento"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<area> Read(int id) {
        List<area> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                area x = new area();
                ps.setInt(1, x.getIdarea());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(area x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getNombre());
            ps.setInt(2, x.getDepartamento_id());
            ps.setInt(3, x.getIdarea());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(area x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombre());
            ps.setInt(2, x.getDepartamento_id());
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
    public List<area> buscar(int id) {
        List<area> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                area x = new area();
                x.setIdarea(rs.getInt("idarea"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
