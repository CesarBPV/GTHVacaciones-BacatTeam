/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.util;

import com.dao.trabajadorDAO;
import com.interfaces.ImpTrabajadorDao;

/**
 *
 * @author CESAR
 */
public class test {

    /**
     * @param args the command line arguments
     */
    public static ImpTrabajadorDao tdao=new trabajadorDAO();
    public static void main(String[] args) {
        try{
            System.out.println(tdao.Read(tdao.ReadAll().get(0).getIdtrabajador()).get(0).getApellidos());
        }catch(Exception ex){
            System.out.println(ex);
        }
        // TODO code application logic here
    }
    
}
