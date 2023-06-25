/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.purchase.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leonovo
 */
public class PurchaseService {
    
    private boolean isConnect = false;
    String dot=".";
    public boolean validate(String username, String password,HttpServletRequest req) {
        HttpSession session = req.getSession();
        
        String uname = session.getAttribute("uname").toString();
        String pwd = session.getAttribute("pwd").toString();
        
         System.out.println(uname);
         
         System.out.println(pwd);
        if(username.equals(uname) && password.equals(pwd)) {
            System.out.println("HelloW");
            return true;
        }
            return false;
    }
 /*  public void connect(HttpServletRequest request) {
    try{
       HttpSession session = request.getSession();
       
       session.setAttribute("1", "Connecting "+dot);
       Thread.sleep(1500);
       
       session.setAttribute("2", dot);
       Thread.sleep(1500);
       
       session.setAttribute("3", dot);
       Thread.sleep(1500);
       
       session.setAttribute("4", dot);
       Thread.sleep(1500);
       
       isConnect = true;
    }
    catch(InterruptedException ie) {
        
    }
    finally{
     System.out.println("Connected");
     }
   }
*/
    /**
     * @return the isConnect
     */
    public boolean isIsConnect() {
        return isConnect;
    }
}
