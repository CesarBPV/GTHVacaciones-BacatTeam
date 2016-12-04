/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.detalle_vacacion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpDetalle_vacacionDao {
    public List<detalle_vacacion> ReadAll();
    public List<detalle_vacacion> Read(int id);
    public int update(detalle_vacacion x);
    public int insert(detalle_vacacion x);
    public int delete(int id);  
    public List<detalle_vacacion> buscar(int id);
}
