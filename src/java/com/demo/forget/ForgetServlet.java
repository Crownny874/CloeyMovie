/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.demo.forget;

import com.demo.forget.service.ForgetService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leonovo
 */

public class ForgetServlet extends HttpServlet {

    public static String msg = "";
    public static String msgLabel = "";
    public static String color = "";
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) {
      try {
        String username = req.getParameter("username");
        
        String password = req.getParameter("password");
        
        ForgetService forgetService = new ForgetService();
        forgetService.update(username, password);
       
        if(forgetService.isUpdated()) {
        msgLabel = "Password updated, Go to Login Page,";
        msg = "Click here";
        color="lightgreen";
       
        req.setAttribute("msg", msg);
        req.setAttribute("msgLabel", msgLabel);
        req.setAttribute("color", color);
        
        RequestDispatcher rd = req.getRequestDispatcher("fP/forgotPassword.jsp");
        rd.forward(req, res);
        }
        else {
        msg = "";
        msgLabel = "Wrong Username is entered (Username is Invalid)";
        color="red";
        
        req.setAttribute("msgLabel", msgLabel);
        req.setAttribute("color", color);
        
        RequestDispatcher rd = req.getRequestDispatcher("fP/forgotPassword.jsp");
        rd.forward(req, res);

           }
        msg= "";
        msgLabel = "";
        color="";
         }
      catch(Exception ex) {
        }
     }
}

