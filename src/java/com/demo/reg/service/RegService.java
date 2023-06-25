/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.reg.service;

/**
 *
 * @author leonovo
 */
import java.sql.*;
public class RegService {
    
    public boolean putData(String uname, String fname, String lname, String phonenum, String mail, int age, String gender, String pwd, String rpwd) throws Exception {
        String query = "insert into company.regdetails values(?,?,?,?,?,?,?,?)";
        
        String url = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL";
        String user = "root";
        String password = "Henry123@#$";
        
       Class.forName("com.mysql.cj.jdbc.Driver");
       
       Connection con = DriverManager.getConnection(url, user, password);
       
       PreparedStatement st = con.prepareStatement(query);
       
       st.setString(1, uname);
       st.setString(2, fname);
       st.setString(3, lname);
       st.setString(4, phonenum);
       st.setString(5, mail);
       st.setInt(6, age);
       st.setString(7,gender);
       st.setString(8, pwd);
       
       if(pwd.equals(rpwd)) {
       int result = st.executeUpdate();
       System.out.println(result +" row/s affected");
       return true;
       }
       else {
         System.out.println("data was not pushed to database");
         return false;
       }
    }
}
