/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import com.dao.trabajadorDAO;
import com.dao.usuarioDAO;
import com.interfaces.ImpTrabajadorDao;
import com.interfaces.ImpUsuarioDao;
import com.model.trabajador;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author CESAR
 */
@Controller
public class CHome {

    ImpUsuarioDao udao = new usuarioDAO();
    ImpTrabajadorDao tdao = new trabajadorDAO();

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
                        System.out.println("idusuario: " + list.get(0));
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
    public String proceso(HttpServletRequest request, HttpServletResponse response, Model model) {
        String url = "proceso";
        try {
            model.addAttribute("lista", tdao.ReadAll());
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return url;
    }

    @RequestMapping("/proceso_autorizacion")
    public String proceso_autorizacion(HttpServletRequest request, HttpServletResponse response, Model model) {
        String url = "proceso_autorizacion";
        try {
            model.addAttribute("lista", tdao.ReadAll());
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return url;
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

    @RequestMapping("/profech")
    public void profech(HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession sesion = request.getSession();
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        try {
            if (sesion.getAttribute("idusuario") == null) {
                try {
                    response.sendRedirect("login");
                    response.getWriter().write("login");
                } catch (IOException ex) {
                    Logger.getLogger(CHome.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                String opc = request.getParameter("opc");
                System.out.println("opc: " + opc);
                if ("programar".equals(opc)) {
                    String idtr = request.getParameter("idtr");
                    sesion.setAttribute("idp", idtr);
                    response.getWriter().write("pf");
                } else {
                    response.getWriter().write("login");
                }
            }
        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
    }

    @RequestMapping("/pf")
    public String prf(HttpServletRequest request, HttpServletResponse response, Model model) {
        String idtr = (String) request.getSession().getAttribute("idp");
        System.out.println("trabajador: " + idtr);
        List<trabajador> list = tdao.Read(idtr);
        System.out.println(list.size());
        model.addAttribute("lista", list);
        System.out.println(list.get(0).getApellidos());
        return "ProgramFechas";
    }
}
