/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.vacacion_autorizacion;
import com.util.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.interfaces.ImpVacacion_autorizacionDao;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kael74
 */
public class vacacion_autorizacionDAO implements ImpVacacion_autorizacionDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO vacacion_autorizacion (ESTADO, NROPASO, VACACION_ID, PUESTO_ID) VALUES (?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE vacacion_autorizacion SET ESTADO=?, NROPASO=?, VACACION_ID=?, PUESTO_ID=? WHERE idautorizacion_vacacion=?";
    private final static String SQL_DELETE = "DELETE FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";
    private final static String SQL_SEARCH = "SELECT *FROM vacacion_autorizacion WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM vacacion_autorizacion";
    private final static String SQL_READ = "SELECT *FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";
    private final static String SQL_BUSCAR = "SELECT *FROM vacacion_autorizacion WHERE idautorizacion_vacacion=?";

    @Override
    public List<vacacion_autorizacion> ReadAll() {
        List<vacacion_autorizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_autorizacion x = new vacacion_autorizacion();
                x.setIdautorizacion_vacacion(rs.getString("idautorizacion_vacacion"));
                x.setEstado(rs.getString("estado"));
                x.setNropaso(rs.getString("nropaso"));
                x.setVacacion_id(rs.getString("vacacion_id"));
                x.setPuesto_id(rs.getString("puesto_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }

    @Override
    public List<vacacion_autorizacion> Read(String id) {
        List<vacacion_autorizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
             ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_autorizacion x = new vacacion_autorizacion();
               
                x.setIdautorizacion_vacacion(rs.getString("idautorizacion_vacacion"));
                x.setEstado(rs.getString("estado"));
                x.setNropaso(rs.getString("nropaso"));
                x.setVacacion_id(rs.getString("vacacion_id"));
                x.setPuesto_id(rs.getString("puesto_id"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;  }

    @Override
    public int update(vacacion_autorizacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getEstado());
            ps.setString(2, x.getNropaso());
            ps.setString(3, x.getVacacion_id());
            ps.setString(4, x.getPuesto_id());
            ps.setString(5, x.getIdautorizacion_vacacion());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return op;
    }

    @Override
    public int insert(vacacion_autorizacion x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getEstado());
            ps.setString(2, x.getNropaso());
            ps.setString(3, x.getVacacion_id());
            ps.setString(4, x.getPuesto_id());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
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
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return op;
    }

    @Override
    public List<vacacion_autorizacion> buscar(String id) {
        List<vacacion_autorizacion> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                vacacion_autorizacion x = new vacacion_autorizacion();
                x.setIdautorizacion_vacacion(rs.getString("idautorizacion_vacacion"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        finally{
            try {
                con=DBConn.close();
            } catch (SQLException ex) {
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista;
    }
}
