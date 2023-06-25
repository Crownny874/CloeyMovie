/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.login.service;

/**
 *
 * @author leonovo
 */
import java.sql.*;
public class LoginService {
    
    public boolean validate(String uname, String pwd) throws Exception {
        String query = "select * from company.regdetails";
        String url="jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL";
        String user = "root";
        String sqlpassword = "Henry123@#$";
        
       Class.forName("com.mysql.cj.jdbc.Driver");
       
       Connection con = DriverManager.getConnection(url, user, sqlpassword);
       
       Statement st = con.createStatement();
       
       ResultSet rs = st.executeQuery(query);
       
      while(rs.next()) {
      String username = rs.getString("username");
      String password = rs.getString("password");
      
      System.out.println(username);
      System.out.println(password);
      if(username.equals(uname) && password.equals(pwd)) {
              return true;  
        }
      else {
         }
      }
         return false;
    }
}
