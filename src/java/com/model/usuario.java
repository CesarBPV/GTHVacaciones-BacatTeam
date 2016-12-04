/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author Jose_Luis
 */
public class usuario {
    private String idusuario;
    private String usuario;
    private String clave;
    private String idtrabajador;

    public usuario() {
    }

    public usuario(String idtrabajador, String usuario, String clave) {
        this.idtrabajador = idtrabajador;
        this.usuario = usuario;
        this.clave = clave;
    }

    public usuario(String idusuario, String usuario, String clave, String idtrabajador) {
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.clave = clave;
        this.idtrabajador = idtrabajador;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getIdtrabajador() {
        return idtrabajador;
    }

    public void setIdtrabajador(String idtrabajador) {
        this.idtrabajador = idtrabajador;
    }
    
}
