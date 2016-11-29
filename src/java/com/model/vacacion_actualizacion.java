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
public class vacacion_actualizacion {
    private int idautorizacion_vacacion;
    private String estado;
    private String nropaso;
    private int vacacion_id;
    private int puesto_id;

    public vacacion_actualizacion() {
    }

    public vacacion_actualizacion(int idautorizacion_vacacion, String estado, String nropaso) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
    }

    public vacacion_actualizacion(int idautorizacion_vacacion, String estado, String nropaso, int vacacion_id) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
        this.vacacion_id = vacacion_id;
    }

    public vacacion_actualizacion(int idautorizacion_vacacion, String estado, String nropaso, int vacacion_id, int puesto_id) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
        this.vacacion_id = vacacion_id;
        this.puesto_id = puesto_id;
    }

    public int getIdautorizacion_vacacion() {
        return idautorizacion_vacacion;
    }

    public void setIdautorizacion_vacacion(int idautorizacion_vacacion) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNropaso() {
        return nropaso;
    }

    public void setNropaso(String nropaso) {
        this.nropaso = nropaso;
    }

    public int getVacacion_id() {
        return vacacion_id;
    }

    public void setVacacion_id(int vacacion_id) {
        this.vacacion_id = vacacion_id;
    }

    public int getPuesto_id() {
        return puesto_id;
    }

    public void setPuesto_id(int puesto_id) {
        this.puesto_id = puesto_id;
    }
    
    
}
