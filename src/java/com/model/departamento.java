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
public class departamento {
    private String iddepartamento;
    private String nombre;
    private String direccion_id;

    public departamento() {
    }

    public departamento(String iddepartamento, String nombre) {
        this.iddepartamento = iddepartamento;
        this.nombre = nombre;
    }

    public departamento(String iddepartamento, String nombre, String direccion_id) {
        this.iddepartamento = iddepartamento;
        this.nombre = nombre;
        this.direccion_id = direccion_id;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion_id() {
        return direccion_id;
    }

    public void setDireccion_id(String direccion_id) {
        this.direccion_id = direccion_id;
    }
    
}
