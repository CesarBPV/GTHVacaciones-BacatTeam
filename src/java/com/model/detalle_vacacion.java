/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;
import java.sql.Date;
/**
 *
 * @author Jose_Luis
 */
public class detalle_vacacion {
    private String iddetalle_vacacion;
    private Date fecha_inicio;
    private Date fecha_fin;
    private String vacacion_id;

    public detalle_vacacion() {
    }

    public detalle_vacacion(String iddetalle_vacacion, Date fecha_inicio, Date fecha_fin) {
        this.iddetalle_vacacion = iddetalle_vacacion;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
    }

    public detalle_vacacion(String iddetalle_vacacion, Date fecha_inicio, Date fecha_fin, String vacacion_id) {
        this.iddetalle_vacacion = iddetalle_vacacion;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
        this.vacacion_id = vacacion_id;
    }

    public String getIddetalle_vacacion() {
        return iddetalle_vacacion;
    }

    public void setIddetalle_vacacion(String iddetalle_vacacion) {
        this.iddetalle_vacacion = iddetalle_vacacion;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public Date getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(Date fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public String getVacacion_id() {
        return vacacion_id;
    }

    public void setVacacion_id(String vacacion_id) {
        this.vacacion_id = vacacion_id;
    }
    
}
