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
public class vacacion {
    private int idvacacion ;
    private int idcontrato;
    private int es_vacacion;
    private int solicitud_vacacion;
    private int reprogramacion_vacacion;

    public vacacion() {
    }

    public vacacion(int idvacacion, int es_vacacion, int solicitud_vacacion, int reprogramacion_vacacion) {
        this.idvacacion = idvacacion;
        this.es_vacacion = es_vacacion;
        this.solicitud_vacacion = solicitud_vacacion;
        this.reprogramacion_vacacion = reprogramacion_vacacion;
    }

    public vacacion(int idvacacion, int idcontrato, int es_vacacion, int solicitud_vacacion, int reprogramacion_vacacion) {
        this.idvacacion = idvacacion;
        this.idcontrato = idcontrato;
        this.es_vacacion = es_vacacion;
        this.solicitud_vacacion = solicitud_vacacion;
        this.reprogramacion_vacacion = reprogramacion_vacacion;
    }
    
    public int getIdvacacion() {
        return idvacacion;
    }

    public void setIdvacacion(int idvacacion) {
        this.idvacacion = idvacacion;
    }

    public int getIdcontrato() {
        return idcontrato;
    }

    public void setIdcontrato(int idcontrato) {
        this.idcontrato = idcontrato;
    }

    public int getEs_vacacion() {
        return es_vacacion;
    }

    public void setEs_vacacion(int es_vacacion) {
        this.es_vacacion = es_vacacion;
    }

    public int getSolicitud_vacacion() {
        return solicitud_vacacion;
    }

    public void setSolicitud_vacacion(int solicitud_vacacion) {
        this.solicitud_vacacion = solicitud_vacacion;
    }

    public int getReprogramacion_vacacion() {
        return reprogramacion_vacacion;
    }

    public void setReprogramacion_vacacion(int reprogramacion_vacacion) {
        this.reprogramacion_vacacion = reprogramacion_vacacion;
    }
    
}
