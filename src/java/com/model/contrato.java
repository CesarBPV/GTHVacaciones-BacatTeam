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
public class contrato {
    private String idcontrato;
    private String idtrabajador;
    private Date fecha_desde;
    private Date fecha_hasta;
    private String puesto_id;

    public contrato() {
    }

    public contrato(String idcontrato, Date fecha_desde, Date fecha_hasta) {
        this.idcontrato = idcontrato;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
    }

    public contrato(String idcontrato, String idtrabajdor, Date fecha_desde, Date fecha_hasta) {
        this.idcontrato = idcontrato;
        this.idtrabajador = idtrabajador;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
    }

    public contrato(String idcontrato, String idtrabajdor, Date fecha_desde, Date fecha_hasta, String puesto_id) {
        this.idcontrato = idcontrato;
        this.idtrabajador = idtrabajador;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
        this.puesto_id = puesto_id;
    }

    public String getIdcontrato() {
        return idcontrato;
    }

    public void setIdcontrato(String idcontrato) {
        this.idcontrato = idcontrato;
    }

    public String getIdtrabajador() {
        return idtrabajador;
    }

    public void setIdtrabajador(String idtrabajador) {
        this.idtrabajador = idtrabajador;
    }

    public Date getFecha_desde() {
        return fecha_desde;
    }

    public void setFecha_desde(Date fecha_desde) {
        this.fecha_desde = fecha_desde;
    }

    public Date getFecha_hasta() {
        return fecha_hasta;
    }

    public void setFecha_hasta(Date fecha_hasta) {
        this.fecha_hasta = fecha_hasta;
    }

    public String getPuesto_id() {
        return puesto_id;
    }

    public void setPuesto_id(String puesto_id) {
        this.puesto_id = puesto_id;
    }
    
}
