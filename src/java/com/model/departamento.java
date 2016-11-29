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
    private int iddepartamento;
    private String nombre;
    private int direccion_id;

    public departamento() {
    }

    public departamento(int iddepartamento, String nombre) {
        this.iddepartamento = iddepartamento;
        this.nombre = nombre;
    }

    public departamento(int iddepartamento, String nombre, int direccion_id) {
        this.iddepartamento = iddepartamento;
        this.nombre = nombre;
        this.direccion_id = direccion_id;
    }

    public int getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(int iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDireccion_id() {
        return direccion_id;
    }

    public void setDireccion_id(int direccion_id) {
        this.direccion_id = direccion_id;
    }
    
}
