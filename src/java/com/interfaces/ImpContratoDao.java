/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.contrato;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpContratoDao {
    public List<contrato> ReadAll();
    public List<contrato> Read(String id);
    public int update(contrato x);
    public int insert(contrato x);
    public int delete(String id);  
    public List<contrato> buscar(String id);
}
