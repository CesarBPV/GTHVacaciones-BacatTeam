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
public class vacacion_autorizacion {
    private String idautorizacion_vacacion;
    private String estado;
    private String nropaso;
    private String vacacion_id;
    private String puesto_id;

    public vacacion_autorizacion() {
    }

    public vacacion_autorizacion(String idautorizacion_vacacion, String estado, String nropaso) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
    }

    public vacacion_autorizacion(String idautorizacion_vacacion, String estado, String nropaso, String vacacion_id) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
        this.vacacion_id = vacacion_id;
    }

    public vacacion_autorizacion(String idautorizacion_vacacion, String estado, String nropaso, String vacacion_id, String puesto_id) {
        this.idautorizacion_vacacion = idautorizacion_vacacion;
        this.estado = estado;
        this.nropaso = nropaso;
        this.vacacion_id = vacacion_id;
        this.puesto_id = puesto_id;
    }

    public String getIdautorizacion_vacacion() {
        return idautorizacion_vacacion;
    }

    public void setIdautorizacion_vacacion(String idautorizacion_vacacion) {
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

    public String getVacacion_id() {
        return vacacion_id;
    }

    public void setVacacion_id(String vacacion_id) {
        this.vacacion_id = vacacion_id;
    }

    public String getPuesto_id() {
        return puesto_id;
    }

    public void setPuesto_id(String puesto_id) {
        this.puesto_id = puesto_id;
    }
    
    
}
