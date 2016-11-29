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
    private int idpuesto;
    private String nombre;
    private int seccion_id;

    public puesto() {
    }

    public puesto(int idpuesto, String nombre) {
        this.idpuesto = idpuesto;
        this.nombre = nombre;
    }

    public puesto(int idpuesto, String nombre, int seccion_id) {
        this.idpuesto = idpuesto;
        this.nombre = nombre;
        this.seccion_id = seccion_id;
    }

    public int getIdpuesto() {
        return idpuesto;
    }

    public void setIdpuesto(int idpuesto) {
        this.idpuesto = idpuesto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getSeccion_id() {
        return seccion_id;
    }

    public void setSeccion_id(int seccion_id) {
        this.seccion_id = seccion_id;
    }
    
}
