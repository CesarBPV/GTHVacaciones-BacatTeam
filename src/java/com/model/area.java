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
public class area {
    private int idarea;
    private String nombre;
    private int departamento_id;

    public area() {
    }

    public area(int idarea, String nombre) {
        this.idarea = idarea;
        this.nombre = nombre;
    }

    public area(int idarea, String nombre, int departamento_id) {
        this.idarea = idarea;
        this.nombre = nombre;
        this.departamento_id = departamento_id;
    }

    public int getIdarea() {
        return idarea;
    }

    public void setIdarea(int idarea) {
        this.idarea = idarea;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDepartamento_id() {
        return departamento_id;
    }

    public void setDepartamento_id(int departamento_id) {
        this.departamento_id = departamento_id;
    }
    
    
}
