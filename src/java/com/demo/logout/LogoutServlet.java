/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.demo.logout;

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
public class LogoutServlet extends HttpServlet {

     @Override
     public void doPost(HttpServletRequest req, HttpServletResponse res) {
       
    try {
      
       req.removeAttribute("msg");
       req.removeAttribute("Rmsg");
       req.removeAttribute("msgLabel");
       req.removeAttribute("color");

       HttpSession session = req.getSession();
       session.removeAttribute("username");
       session.removeAttribute("password");
       session.removeAttribute("Amount");
       session.removeAttribute("movieTitle");
       session.removeAttribute("imgLink");
       session.invalidate();
       
       res.sendRedirect("login.jsp");
    }
    catch(IOException ex) {
        
        }
     }
}
