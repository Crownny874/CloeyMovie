/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.demo.login;

import com.demo.login.service.LoginService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leonovo
 */
public class LoginServlet extends HttpServlet {

 public void doPost(HttpServletRequest req, HttpServletResponse res) {
    try {
        String username = req.getParameter("username");
        
        String password = req.getParameter("password");
        
        LoginService loginService = new LoginService();
        boolean result = loginService.validate(username, password);
        
       if(result) {
        HttpSession session = req.getSession();
        session.setAttribute("uname", username);
        session.setAttribute("pwd", password);
        
        res.sendRedirect("homepage.jsp");
       }
       else {
         res.sendRedirect("../login.jsp");
       }
        
    }
    catch(Exception ex) {
        
    }
  }  
}