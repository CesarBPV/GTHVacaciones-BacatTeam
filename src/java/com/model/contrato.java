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
    private int idcontrato;
    private int idtrabajador;
    private Date fecha_desde;
    private Date fecha_hasta;
    private int puesto_id;

    public contrato() {
    }

    public contrato(int idcontrato, Date fecha_desde, Date fecha_hasta) {
        this.idcontrato = idcontrato;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
    }

    public contrato(int idcontrato, int idtrabajdor, Date fecha_desde, Date fecha_hasta) {
        this.idcontrato = idcontrato;
        this.idtrabajador = idtrabajador;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
    }

    public contrato(int idcontrato, int idtrabajdor, Date fecha_desde, Date fecha_hasta, int puesto_id) {
        this.idcontrato = idcontrato;
        this.idtrabajador = idtrabajador;
        this.fecha_desde = fecha_desde;
        this.fecha_hasta = fecha_hasta;
        this.puesto_id = puesto_id;
    }

    public int getIdcontrato() {
        return idcontrato;
    }

    public void setIdcontrato(int idcontrato) {
        this.idcontrato = idcontrato;
    }

    public int getIdtrabajador() {
        return idtrabajador;
    }

    public void setIdtrabajador(int idtrabajador) {
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

    public int getPuesto_id() {
        return puesto_id;
    }

    public void setPuesto_id(int puesto_id) {
        this.puesto_id = puesto_id;
    }
    
}
