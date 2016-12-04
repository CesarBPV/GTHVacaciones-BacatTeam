/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.direccion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpDireccionDao {
    public List<direccion> ReadAll();
    public List<direccion> Read(String id);
    public int update(direccion x);
    public int insert(direccion x);
    public int delete(String id);  
    public List<direccion> buscar(String id);
}
