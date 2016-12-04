/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.departamento;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpDepartamentoDao {
    public List<departamento> ReadAll();
    public List<departamento> Read(String id);
    public int update(departamento x);
    public int insert(departamento x);
    public int delete(String id);  
    public List<departamento> buscar(String id);
}
