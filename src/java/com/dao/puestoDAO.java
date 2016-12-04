/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpPuestoDao;
import com.model.puesto;
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
public class puestoDAO implements ImpPuestoDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO puesto (NOMBRE, SECCION_ID) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE puesto SET NOMBRE=?, SECCION_ID=? WHERE idpuesto=?";
    private final static String SQL_DELETE = "DELETE FROM puesto WHERE idpuesto=?";
    private final static String SQL_SEARCH = "SELECT *FROM puesto WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM puesto";
    private final static String SQL_READ = "SELECT *FROM puesto WHERE idpuesto=?";
    private final static String SQL_BUSCAR = "SELECT *FROM puesto WHERE idpuesto=?";

    @Override
    public List<puesto> ReadAll() {
        List<puesto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                puesto x = new puesto();
                x.setIdpuesto(rs.getString("idpuesto"));
                x.setNombre(rs.getString("nombre"));
                x.setSeccion_id(rs.getString("seccion_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<puesto> Read(String id) {
        List<puesto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                puesto x = new puesto();
                ps.setString(1, x.getIdpuesto());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(puesto x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getSeccion_id());
            ps.setString(3, x.getIdpuesto());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(puesto x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getSeccion_id());
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
    public List<puesto> buscar(String id) {
        List<puesto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                puesto x = new puesto();
                x.setIdpuesto(rs.getString("idpuesto"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
