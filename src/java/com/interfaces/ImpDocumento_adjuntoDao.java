/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.interfaces;

import com.model.documento_adjunto;
import java.util.List;

/**
 *
 * @author CESAR
 */
public interface ImpDocumento_adjuntoDao {
    public List<documento_adjunto> ReadAll();
    public List<documento_adjunto> Read(int id);
    public int update(documento_adjunto x);
    public int insert(documento_adjunto x);
    public int delete(int id);  
    public List<documento_adjunto> buscar(int id);
}
