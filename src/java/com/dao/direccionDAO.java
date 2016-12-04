/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.Operaciones;
import com.model.direccion;
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
public class direccionDAO implements Operaciones<direccion> {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT *FROM direccion WHERE user=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO direccion (NOMBRE, FILIAL) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE direccion SET NOMBRE=?, FILIAL=? WHERE iddireccion=?";
    private final static String SQL_DELETE = "DELETE FROM direccion WHERE iddireccion=?";
    private final static String SQL_SEARCH = "SELECT *FROM direccion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM direccion";
    private final static String SQL_READ = "SELECT *FROM direccion WHERE iddireccion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM direccion WHERE iddireccion=?";
  
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
    public List<direccion> ReadAll() {
        List<direccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                direccion x = new direccion();
                x.setIddireccion(rs.getInt("iddireccion"));
                x.setNombre(rs.getString("nombre"));
                x.setFilial(rs.getString("filial"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<direccion> Read(int id) {
        List<direccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                direccion x = new direccion();
                ps.setInt(1, x.getIddireccion());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(direccion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getFilial());
            ps.setInt(3, x.getIddireccion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(direccion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getFilial());
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
    public List<direccion> buscar(int id) {
        List<direccion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                direccion x = new direccion();
                x.setIddireccion(rs.getInt("iddireccion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
