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
public class direccion {
    private String iddireccion;
    private String nombre;
    private String filial;

    public direccion() {
    }

    public direccion(String iddireccion, String nombre, String filial) {
        this.iddireccion = iddireccion;
        this.nombre = nombre;
        this.filial = filial;
    }

    public String getIddireccion() {
        return iddireccion;
    }

    public void setIddireccion(String iddireccion) {
        this.iddireccion = iddireccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFilial() {
        return filial;
    }

    public void setFilial(String filial) {
        this.filial = filial;
    }
    
}
