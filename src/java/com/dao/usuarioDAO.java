/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.interfaces.ImpUsuarioDao;
import com.model.usuario;
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
public class usuarioDAO implements ImpUsuarioDao {
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection con;
    private final static String SQL_VALIDA = "SELECT * FROM usuario WHERE usuario=? AND clave=?";
    private final static String SQL_CREATE = "INSERT INTO usuario (USUARIO, CLAVE, IDTRABAJADOR) VALUES (?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE usuario SET USUARIO=?, CLAVE=?, IDTRABAJADOR=? WHERE idusuario=?";
    private final static String SQL_DELETE = "DELETE FROM usuario WHERE idusuario=?";
    private final static String SQL_SEARCH = "SELECT *FROM usuario WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM usuario";
    private final static String SQL_READ = "SELECT *FROM usuario WHERE idusuario=?";
    private final static String SQL_BUSCAR = "SELECT *FROM usuario WHERE idusuario=?";
  
    public String validar(String user, String clave) {
        String iduser = null;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_VALIDA);
            ps.setString(1, user);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            while (rs.next()) {
                iduser = rs.getString("idusuario");
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
        return iduser;
    }

    @Override
    public List<usuario> ReadAll() {
        List<usuario> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario x = new usuario();
                x.setIdusuario(rs.getInt("idusuario"));
                x.setUsuario(rs.getString("usuario"));
                x.setClave(rs.getString("clave"));
                x.setIdtrabajador(rs.getInt("idtrabajador"));
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
    public List<usuario> Read(int id) {
        List<usuario> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_READ);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario x = new usuario();
                ps.setInt(1, x.getIdusuario());
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
    public int update(usuario x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_UPDATE);
            ps.setString(1, x.getUsuario());            
            ps.setString(2, x.getClave());
            ps.setInt(3, x.getIdtrabajador());
            ps.setInt(4, x.getIdusuario());
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
    public int insert(usuario x) {
        int op = 0;
        try {
            con = DBConn.getConnection();
            ps =con.prepareStatement(SQL_CREATE);
            ps.setString(1, x.getUsuario());            
            ps.setString(2, x.getClave());
            ps.setInt(3, x.getIdtrabajador());
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
    public List<usuario> buscar(int id) {
        List<usuario> lista = new ArrayList<>();
        try {
            con = DBConn.getConnection();
            ps = con.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario x = new usuario();
                x.setIdusuario(rs.getInt("idusuario"));
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
