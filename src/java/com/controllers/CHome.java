/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import com.dao.usuarioDAO;
import com.interfaces.ImpUsuarioDao;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        try {
            if (request.getSession().getAttribute("idusuario") == null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if (username != null && password != null) {
                    List<String> list = udao.validar(username, password);
                    System.out.println("idusuario:   " + list.get(0));
                    if (list.get(0) != null) {
                        sesion.setAttribute("idusuario", list.get(0));
                        sesion.setAttribute("idtrabajador", list.get(1));
                        return "modules";
                    } else {
                        response.sendRedirect("login");
                    }
                } else {
                    response.sendRedirect("login");
                }
            } else {
                System.out.println(request.getSession().getAttribute("idusuario"));
                return "modules";
            }
        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
        return "modules";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("idusuario") == null) {
            return "login";
        } else {
            String opc = request.getParameter("opc");
            if ("logout".equals(opc)) {
                sesion.removeAttribute("idusuario");
            } else {
                try {
                    response.sendRedirect("index");
                } catch (IOException ex) {
                    Logger.getLogger(CHome.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return "login";
    }

    @RequestMapping("/proceso")
    public String proceso(HttpServletRequest request, HttpServletResponse response) {
        return "proceso";
    }

    @RequestMapping("/index")
    public String index(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("idusuario") == null) {
            try {
                response.sendRedirect("login");
            } catch (IOException ex) {
                Logger.getLogger(CHome.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            return "index";
        }
        return "index";
    }
}
