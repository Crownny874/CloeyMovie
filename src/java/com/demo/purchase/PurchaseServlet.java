/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.demo.purchase;

import com.demo.purchase.service.PurchaseService;
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
public class PurchaseServlet extends HttpServlet {
    
       String msg = "";
       String msgLabel = "";
       String color="";
       
       
       
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       String uname = request.getParameter("uname");
       String pwd = request.getParameter("pwd");
       
       System.out.println(uname);
         
       System.out.println(pwd);
        
       PurchaseService purchaseService = new PurchaseService();
       
      /* for(int i = 0; i < 4; i++) {
          purchaseService.connect(request);
       }
       
       if(purchaseService.isIsConnect()) {
          
          HttpSession session = request.getSession();
          session.removeAttribute("1");
          session.removeAttribute("2");
          session.removeAttribute("3");
          session.removeAttribute("4");
       }
       */
       boolean result = purchaseService.validate(uname, pwd, request);
       
       if(result) {
         msg = "Download Movie By Clicking";
         msgLabel = "here";
         color = "limegreen";
         
         HttpSession session = request.getSession();
         
         session.setAttribute("msg", msg);
         session.setAttribute("msgLabel", msgLabel);
         session.setAttribute("color", color);
         
         response.sendRedirect("Pur/purchase.jsp");
       }
       else{
         msg = "Unable to finish payment(CHECK INPUTS)";
         msgLabel = "";
         color = "red";
         
         HttpSession session = request.getSession();
         
         session.setAttribute("msg", msg);
         session.setAttribute("msgLabel", msgLabel);
         session.setAttribute("color", color);
         
         response.sendRedirect("Pur/purchase.jsp");
       }
    }
}
