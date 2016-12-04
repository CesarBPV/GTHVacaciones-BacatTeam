/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author kael74
 */
public class documento_adjunto {
    private String documento_adjunto_id;
    private String direccion_doc;
    private String nombre_doc;
    private String descripcion_doc;

    public documento_adjunto() {
    }

    public documento_adjunto(String documento_adjunto_id, String direccion_doc, String nombre_doc, String descripcion_doc) {
        this.documento_adjunto_id = documento_adjunto_id;
        this.direccion_doc = direccion_doc;
        this.nombre_doc = nombre_doc;
        this.descripcion_doc = descripcion_doc;
    }

    public String getDocumento_adjunto_id() {
        return documento_adjunto_id;
    }

    public void setDocumento_adjunto_id(String documento_adjunto_id) {
        this.documento_adjunto_id = documento_adjunto_id;
    }

    public String getDireccion_doc() {
        return direccion_doc;
    }

    public void setDireccion_doc(String direccion_doc) {
        this.direccion_doc = direccion_doc;
    }

    public String getNombre_doc() {
        return nombre_doc;
    }

    public void setNombre_doc(String nombre_doc) {
        this.nombre_doc = nombre_doc;
    }

    public String getDescripcion_doc() {
        return descripcion_doc;
    }

    public void setDescripcion_doc(String descripcion_doc) {
        this.descripcion_doc = descripcion_doc;
    }
    
}
