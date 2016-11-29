/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

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

    @RequestMapping("/index")
    public String index(HttpServletRequest request, HttpServletResponse response) {
        if (request.getSession().getAttribute("idusuario") == null) {
            return login();
        } else  {
            System.out.println(request.getSession().getAttribute("idusuario"));
            return "index";
        }
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
