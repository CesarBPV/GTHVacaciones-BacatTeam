/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.trabajador;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpTrabajadorDao {
    public List<trabajador> ReadAll();
    public List<trabajador> Read(String id);
    public int update(trabajador x);
    public int insert(trabajador x);
    public int delete(String id);  
    public List<trabajador> buscar(String id);
}
