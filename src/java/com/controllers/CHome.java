/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import com.dao.usuarioDAO;
import com.interfaces.ImpUsuarioDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author CESAR
 */
@Controller
public class CHome {

    ImpUsuarioDao udao = new usuarioDAO();

    @RequestMapping("/menu")
    public String menu(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if (request.getSession().getAttribute("idusuario") == null) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username != null && password != null) {
                String iduser = udao.validar(username, password);
                System.out.println("idusuario:   "+iduser);
                if (iduser != null) {
                    sesion.setAttribute("idusuario", iduser);
                    return "modules";
                }else{
                    return "login";
                }
            }else{
                return "login";
            }
        } else {
            System.out.println(request.getSession().getAttribute("idusuario"));
            return "modules";
        }
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        String opc=request.getParameter("opc");
        if("logout".equals(opc)){
            sesion.removeAttribute("idusuario");
        }
        return "login";
    }
    @RequestMapping("/index")
    public String index(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if(sesion.getAttribute("idusuario")==null){
            return "login";
        }else{
            return "index";
        }
    }
}
