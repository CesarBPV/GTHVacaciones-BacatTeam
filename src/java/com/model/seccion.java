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
public class seccion {
    private String idseccion;
    private String nombre;
    private String area_id;

    public seccion() {
    }

    public seccion(String idseccion, String nombre) {
        this.idseccion = idseccion;
        this.nombre = nombre;
    }

    public seccion(String idseccion, String nombre, String area_id) {
        this.idseccion = idseccion;
        this.nombre = nombre;
        this.area_id = area_id;
    }

    public String getIdseccion() {
        return idseccion;
    }

    public void setIdseccion(String idseccion) {
        this.idseccion = idseccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id;
    }
    
}
