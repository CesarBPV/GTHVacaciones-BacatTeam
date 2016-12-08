/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpDepartamentoDao;
import com.model.departamento;
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
public class departamentoDAO implements ImpDepartamentoDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_CREATE = "INSERT INTO departamento (NOMBRE, DIRECCION_ID) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE departamento SET nombre=? WHERE iddepartamento=?";
    private final static String SQL_DELETE = "DELETE FROM departamento WHERE iddepartamento=?";
    private final static String SQL_SEARCH = "SELECT *FROM departamento WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM departamento";
    private final static String SQL_READ = "SELECT *FROM departamento WHERE iddepartamento=?";
    private final static String SQL_BUSCAR = "SELECT *FROM departamento WHERE iddepartamento=?";


    @Override
    public List<departamento> ReadAll() {
        List<departamento> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento x = new departamento();
                x.setIddepartamento(rs.getString("iddepartamento"));
                x.setNombre(rs.getString("nombre"));
                x.setDireccion_id(rs.getString("direccion_id"));
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
    public List<departamento> Read(String id) {
        List<departamento> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                 departamento x = new departamento();
                x.setIddepartamento(rs.getString("iddepartamento"));
                x.setNombre(rs.getString("nombre"));
                x.setDireccion_id(rs.getString("direccion_id"));
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
    public int update(departamento x) {
        int op = 0;
        try {
            con = DBConn.getConnection();           
            ps = con.prepareStatement(SQL_UPDATE);            
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getDireccion_id());
            ps.setString(3, x.getIddepartamento());
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
    public int insert(departamento x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getNombre());
            ps.setString(2, x.getDireccion_id());
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
    public List<departamento> buscar(String id) {
        List<departamento> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento x = new departamento();
                x.setIddepartamento(rs.getString("iddepartamento"));
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
