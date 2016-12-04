/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;
import java.sql.Date;
/**
 *
 * @author Jose_Luis
 */
public class trabajador {
    private String idtrabajador;
    private String nombres;
    private String apellidos;
    private String sexo;
    private String tipo_doc;
    private int num_doc;
    private String correo;
    private Date fecha_nac;

    public trabajador() {
    }

    public trabajador(String idtrabajador, String nombres, String apellidos, String sexo, String tipo_doc, int num_doc, String correo, Date fecha_nac) {
        this.idtrabajador = idtrabajador;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.sexo = sexo;
        this.tipo_doc = tipo_doc;
        this.num_doc = num_doc;
        this.correo = correo;
        this.fecha_nac = fecha_nac;
    }

    public String getIdtrabajador() {
        return idtrabajador;
    }

    public void setIdtrabajador(String idtrabajador) {
        this.idtrabajador = idtrabajador;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipo_doc() {
        return tipo_doc;
    }

    public void setTipo_doc(String tipo_doc) {
        this.tipo_doc = tipo_doc;
    }

    public int getNum_doc() {
        return num_doc;
    }

    public void setNum_doc(int num_doc) {
        this.num_doc = num_doc;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public Date getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(Date fecha_nac) {
        this.fecha_nac = fecha_nac;
    }
    
    
}
