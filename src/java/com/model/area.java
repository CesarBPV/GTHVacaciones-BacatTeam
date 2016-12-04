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
    private String idarea;
    private String nombre;
    private String departamento_id;

    public area() {
    }

    public area(String idarea, String nombre) {
        this.idarea = idarea;
        this.nombre = nombre;
    }

    public area(String idarea, String nombre, String departamento_id) {
        this.idarea = idarea;
        this.nombre = nombre;
        this.departamento_id = departamento_id;
    }

    public String getIdarea() {
        return idarea;
    }

    public void setIdarea(String idarea) {
        this.idarea = idarea;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDepartamento_id() {
        return departamento_id;
    }

    public void setDepartamento_id(String departamento_id) {
        this.departamento_id = departamento_id;
    }
    
    
}
