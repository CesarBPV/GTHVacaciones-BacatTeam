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
public class puesto {
    private String idpuesto;
    private String nombre;
    private String seccion_id;

    public puesto() {
    }

    public puesto(String idpuesto, String nombre) {
        this.idpuesto = idpuesto;
        this.nombre = nombre;
    }

    public puesto(String idpuesto, String nombre, String seccion_id) {
        this.idpuesto = idpuesto;
        this.nombre = nombre;
        this.seccion_id = seccion_id;
    }

    public String getIdpuesto() {
        return idpuesto;
    }

    public void setIdpuesto(String idpuesto) {
        this.idpuesto = idpuesto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSeccion_id() {
        return seccion_id;
    }

    public void setSeccion_id(String seccion_id) {
        this.seccion_id = seccion_id;
    }
    
}
