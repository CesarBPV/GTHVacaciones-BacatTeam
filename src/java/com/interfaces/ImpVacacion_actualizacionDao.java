/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.vacacion_actualizacion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpVacacion_actualizacionDao {
    public List<vacacion_actualizacion> ReadAll();
    public List<vacacion_actualizacion> Read(int id);
    public int update(vacacion_actualizacion x);
    public int insert(vacacion_actualizacion x);
    public int delete(int id);  
    public List<vacacion_actualizacion> buscar(int id);
}
