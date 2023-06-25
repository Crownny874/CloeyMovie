<%-- 
    Document   : forgotPassword
    Created on : Jun 1, 2023, 10:30:47 AM
    Author     : leonovo
--%>

<%@page import="com.demo.forget.service.ForgetService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../WebCSSFile/fpass.css"/>
    </head>
    <body>
        <form action="ForgetServlet" method="post">
            <div>
                    <label for="uname">Username</label>
                    <input type="text" id="uname" class="Username" name="username">
                
                    <br><br>
                
                    <label for="pwd">Password</label>
                    <input type="password" class="Password" id="pwd" name="password" placeholder="Enter New Password">

                    <input type="submit" class="submitBtn" value="Submit">
                    <br>

               
                
                     <footer class="displaymsg" style="color: ${color}">${msgLabel} <a href="login.jsp">${msg}</a></footer>
              
            </div>
        </form>
    </body>
</html>
