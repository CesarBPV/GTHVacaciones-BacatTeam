/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.vacacion_autorizacion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpVacacion_autorizacionDao {
    public List<vacacion_autorizacion> ReadAll();
    public List<vacacion_autorizacion> Read(String id);
    public int update(vacacion_autorizacion x);
    public int insert(vacacion_autorizacion x);
    public int delete(String id);  
    public List<vacacion_autorizacion> buscar(String id);
}
