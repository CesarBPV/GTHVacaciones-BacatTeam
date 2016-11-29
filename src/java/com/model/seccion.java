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
    private int idseccion;
    private String nombre;
    private int area_id;

    public seccion() {
    }

    public seccion(int idseccion, String nombre) {
        this.idseccion = idseccion;
        this.nombre = nombre;
    }

    public seccion(int idseccion, String nombre, int area_id) {
        this.idseccion = idseccion;
        this.nombre = nombre;
        this.area_id = area_id;
    }

    public int getIdseccion() {
        return idseccion;
    }

    public void setIdseccion(int idseccion) {
        this.idseccion = idseccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getArea_id() {
        return area_id;
    }

    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }
    
}
