/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.puesto;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpPuestoDao {
    public List<puesto> ReadAll();
    public List<puesto> Read(String id);
    public int update(puesto x);
    public int insert(puesto x);
    public int delete(String id);  
    public List<puesto> buscar(String id);
}
