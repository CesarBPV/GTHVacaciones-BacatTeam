/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpContratoDao;
import com.model.contrato;
import com.util.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kael74
 */
public class contratoDAO implements ImpContratoDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO contrato (PUESTO_ID, FECHA_DESDE, FECHA_HASTA, IDTRABAJADOR) VALUES (?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE contrato SET PUESTO_ID=?, FECHA_DESDE=?, FECHA_HASTA=?, IDTRABAJADOR=? WHERE idcontrato=?";
    private final static String SQL_DELETE = "DELETE FROM contrato WHERE idcontrato=?";
    private final static String SQL_SEARCH = "SELECT *FROM contrato WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM contrato";
    private final static String SQL_READ = "SELECT *FROM contrato WHERE idcontrato=?";
    private final static String SQL_BUSCAR = "SELECT *FROM contrato WHERE idcontrato=?";

    @Override
    public List<contrato> ReadAll() {
        List<contrato> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                contrato x = new contrato();
                x.setPuesto_id(rs.getString("puesto_id"));
                x.setIdcontrato(rs.getString("idcontrato"));
                x.setFecha_desde(rs.getDate("fecha_desde"));
                x.setFecha_hasta(rs.getDate("fecha_hasta"));
                x.setIdtrabajador(rs.getString("idtrabajador"));
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
    public List<contrato> Read(String id) {
        List<contrato> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                contrato x = new contrato();
                x.setPuesto_id(rs.getString("puesto_id"));
                x.setIdcontrato(rs.getString("idcontrato"));
                x.setFecha_desde(rs.getDate("fecha_desde"));
                x.setFecha_hasta(rs.getDate("fecha_hasta"));
                x.setIdtrabajador(rs.getString("idtrabajador"));
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
    public int update(contrato x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getPuesto_id());
            ps.setDate(2, x.getFecha_desde());
            ps.setDate(3, x.getFecha_hasta());
            ps.setString(4, x.getIdtrabajador());
            ps.setString(5, x.getIdcontrato());
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
    public int insert(contrato x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getIdcontrato());
            ps.setDate(2, x.getFecha_desde());
            ps.setDate(3, x.getFecha_hasta());
            ps.setString(4, x.getIdtrabajador());
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
    public List<contrato> buscar(String id) {
        List<contrato> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                contrato x = new contrato();
                x.setIdcontrato(rs.getString("idcontrato"));
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
