/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.usuario;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpUsuarioDao {
    public List<usuario> ReadAll();
    public List<usuario> Read(String id);
    public int update(usuario x);
    public int insert(usuario x);
    public int delete(int id);  
    public List<usuario> buscar(String id);
    public List<String> validar(String user, String clave);
}
