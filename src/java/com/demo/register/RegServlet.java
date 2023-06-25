/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.demo.register;

import com.demo.reg.service.RegService;
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

public class RegServlet extends HttpServlet {

     @Override
     public void doPost(HttpServletRequest req, HttpServletResponse res) {
        
        String username = req.getParameter("username");
        
        String firstname = req.getParameter("firstname");
        
        String lastname = req.getParameter("lastname");
        
        String phonenum = req.getParameter("phone");
        
        String email = req.getParameter("emailP");
        
        String getAge = req.getParameter("ageP");
      
        int age = Integer.parseInt(getAge);
        
        String gender = req.getParameter("rb1");
        
        String password = req.getParameter("password");
        
        String re_password = req.getParameter("rpassword");
        
        RegService regService = new RegService();
        
        try {
        boolean result = regService.putData(username, firstname, lastname, phonenum, email, age, gender, password, re_password);
        
        System.out.println(result);
        if(result) {
       
           res.sendRedirect("login.jsp");
        }
        
        else {
            String msg = "retyped password does not match";
            
            req.setAttribute("Rmsg", msg);
            res.sendRedirect("Reg/register.jsp");
           }
        }
        catch(Exception ex) {
            
        }
    }
   
}
