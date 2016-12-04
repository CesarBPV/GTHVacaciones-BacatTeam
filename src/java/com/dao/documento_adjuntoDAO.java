/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpDocumento_adjuntoDao;
import com.model.documento_adjunto;
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
public class documento_adjuntoDAO implements ImpDocumento_adjuntoDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT *FROM documento_adjunto WHERE user=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO documento_adjunto (DIRECCION_DOC, NOMBRE_DOC, DESCRIPCION_DOC) VALUES (?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE documento_adjunto SET DIRECCION_DOC=?, NOMBRE_DOC=?, DESCRIPCION_DOC=? WHERE documento_adjunto_id=?";
    private final static String SQL_DELETE = "DELETE FROM documento_adjunto WHERE documento_adjunto_id=?";
    private final static String SQL_SEARCH = "SELECT *FROM documento_adjunto WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM documento_adjunto";
    private final static String SQL_READ = "SELECT *FROM documento_adjunto WHERE documento_adjunto_id=?";
    private final static String SQL_BUSCAR = "SELECT *FROM documento_adjunto WHERE documento_adjunto_id=?";
  
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
    public List<documento_adjunto> ReadAll() {
        List<documento_adjunto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                documento_adjunto x = new documento_adjunto();
                x.setDocumento_adjunto_id(rs.getInt("documento_adjunto_id"));
                x.setDireccion_doc(rs.getString("direccion_doc"));
                x.setNombre_doc(rs.getString("nombre_doc"));
                x.setDescripcion_doc(rs.getString("descripcion_doc"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<documento_adjunto> Read(int id) {
        List<documento_adjunto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                documento_adjunto x = new documento_adjunto();
                ps.setInt(1, x.getDocumento_adjunto_id());
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;  }

    @Override
    public int update(documento_adjunto x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getDireccion_doc());
            ps.setString(2, x.getNombre_doc());
            ps.setString(3, x.getDescripcion_doc());
            ps.setInt(4, x.getDocumento_adjunto_id());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int insert(documento_adjunto x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getDireccion_doc());
            ps.setString(2, x.getNombre_doc());
            ps.setString(3, x.getDescripcion_doc());
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
    public List<documento_adjunto> buscar(int id) {
        List<documento_adjunto> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                documento_adjunto x = new documento_adjunto();
                x.setDocumento_adjunto_id(rs.getInt("documento_adjunto_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
