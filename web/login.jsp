<%-- 
    Document   : login
    Created on : Jun 1, 2023, 9:42:08 AM
    Author     : leonovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        
        <form class="LoginForm" action="LoginServlet" method="POST">
           
        <header>
                <div>  
                         <h1 class="loginHeader">LOGIN</h1></div><br><br><br><br><br>
        </header>
               
         <main> 
                
            <div>
                        <label for="uname" class="unameLabel">
                             Username
                        </label>
                        <input type="text" class="Username" name="username" id="uname">

            </div>
      
                     <br><br>

                     
            <div>
                        <label class="pwd">
                           Password
                        </label>
                        <input type="password" class="password" name="password" maxlength="10">
            </div>
                     <br><br>

            <div>
                        <label class="fpass"><a href="fP/forgotPassword.jsp" target="_self">Forgot password?</a></label>
            </div><!-- comment -->

                     <br><br>
               
            <div>
                         <input type="submit" value="LOGIN" class="LoginButton">
            </div>
                     <br><br>
                     
            <nav>
                 <!-- <div>
                   <a href="https://www.facebook.com/login" target=_self><img src="" alt="fb icon" class="facebookIcon"></a>
                   <a href="https://www.twitter.com/login" target=_self><img src="/images/twitter (1).png" alt="tw icon" class="twitterIcon"></a>
                   <a href="https://www.gmail.com/login" target=_self><img src="../src/java/images/google.png" alt="gg icon" class="googleIcon"></a>
                  </div>-->
            </nav>
        </main>
            
        <footer>
                        <label class="label2">Or Sign Up Using</label>
                        <a href="Reg/register.jsp" class="label3">SIGN UP</a>
        </footer>           
          </form>    
    </body>
</html>
