/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.forget.service;

/**
 *
 * @author leonovo
 */
import java.sql.*;
public class ForgetService {
    
    private boolean status;
    public void update(String username, String pwd) throws Exception {
        String query = "update company.regdetails set password=? where username=?";
        
        String url = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL";
        String user = "root";
        String password = "Henry123@#$";
        
       Class.forName("com.mysql.cj.jdbc.Driver");
       
       Connection con = DriverManager.getConnection(url, user, password);
       
       PreparedStatement st = con.prepareStatement(query);
       
       st.setString(1, pwd);
       st.setString(2, username);
       
       int result = st.executeUpdate();
       System.out.println(result +" row/s affected");
       
       if(result > 0) {
          status = true;
       }
       else {
         status = false;
       }
       
    }
   public boolean isUpdated() {
       return isStatus();
   }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }
}
