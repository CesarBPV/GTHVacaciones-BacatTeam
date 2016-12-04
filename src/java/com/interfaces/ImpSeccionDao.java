/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.seccion;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpSeccionDao {
    public List<seccion> ReadAll();
    public List<seccion> Read(int id);
    public int update(seccion x);
    public int insert(seccion x);
    public int delete(int id);  
    public List<seccion> buscar(int id);
}
