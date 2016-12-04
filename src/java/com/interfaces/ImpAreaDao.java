/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.area;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpAreaDao {
    public List<area> ReadAll();
    public List<area> Read(String id);
    public int update(area x);
    public int insert(area x);
    public int delete(String id);  
    public List<area> buscar(String id);
}
