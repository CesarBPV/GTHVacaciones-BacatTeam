/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpTrabajadorDao;
import com.model.trabajador;
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
public class trabajadorDAO implements ImpTrabajadorDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO trabajador (NOMBRES, APELLIDOS, SEXO, TIPO_DOC, NUM_DOC, CORREO, FECHA_NAC) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE trabajador SET NOMBRES=?, APELLIDOS=?, SEXO=?, TIPO_DOC=?, NUM_DOC=?, CORREO=?, FECHA_NAC=? WHERE idtrabajador=?";
    private final static String SQL_DELETE = "DELETE FROM trabajador WHERE idtrabajador=?";
    private final static String SQL_SEARCH = "SELECT * FROM trabajador WHERE user=?";
    private final static String SQL_READALL = "SELECT * FROM trabajador";
    private final static String SQL_READ = "SELECT * FROM trabajador WHERE idtrabajador=?";
    private final static String SQL_BUSCAR = "SELECT * FROM trabajador WHERE idtrabajador=?";

    @Override
    public List<trabajador> ReadAll() {
        List<trabajador> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                trabajador x = new trabajador();
                x.setNombres(rs.getString("nombres"));
                x.setApellidos(rs.getString("apellidos"));
                x.setSexo(rs.getString("sexo"));
                x.setTipo_doc(rs.getString("tipo_doc"));
                x.setNum_doc(rs.getInt("num_doc"));
                x.setCorreo(rs.getString("correo"));
                x.setFecha_nac(rs.getDate("fecha_nac"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<trabajador> Read(String id) {
        List<trabajador> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                trabajador x = new trabajador();
                x.setIdtrabajador(rs.getString("idtrabajador"));
                x.setCorreo(rs.getString("correo"));
                x.setApellidos(rs.getString("apellidos"));
                x.setFecha_nac(rs.getDate("fecha_nac"));
                x.setNombres(rs.getString("nombres"));
                x.setSexo(rs.getString("sexo"));
                x.setTipo_doc(rs.getString("tipo_doc"));
                x.setNum_doc(rs.getInt("num_doc"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(trabajador x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getNombres());
            ps.setString(2, x.getApellidos());
            ps.setString(3, x.getSexo());
            ps.setInt(4, x.getNum_doc());
            ps.setString(5, x.getTipo_doc());
            ps.setString(6, x.getCorreo());
            ps.setDate(7, x.getFecha_nac());
            ps.setString(8, x.getIdtrabajador());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(trabajador x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombres());
            ps.setString(2, x.getApellidos());
            ps.setString(3, x.getSexo());
            ps.setInt(4, x.getNum_doc());
            ps.setString(5, x.getTipo_doc());
            ps.setString(6, x.getCorreo());
            ps.setDate(7, x.getFecha_nac());
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
    public List<trabajador> buscar(String id) {
        List<trabajador> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                trabajador x = new trabajador();
                x.setIdtrabajador(rs.getString("idtrabajador"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
