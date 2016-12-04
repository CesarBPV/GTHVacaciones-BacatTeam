/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.vacacion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpVacacionDao {
    public List<vacacion> ReadAll();
    public List<vacacion> Read(String id);
    public int update(vacacion x);
    public int insert(vacacion x);
    public int delete(String id);  
    public List<vacacion> buscar(String id);
}
