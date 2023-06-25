<%-- 
    Document   : register
    Created on : Jun 1, 2023, 10:32:48 AM
    Author     : leonovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link rel="stylesheet" href="../WebCSSFile/regstyle.css"/>
    </head>
    <body>

        <form class="regForm" method="post" action="RegServlet">
            <header>
                    <h1 id="regHeader">Registration Form</h1>
            </header>
                    <label>
                        ${Rmsg}
                    </label>

            <div>
                    <label for="uname">Username</label>
                    <input type="text" name="username" required autofocus id="uname" autocomplete="on">
            </div>
                    
                    <br>
          
            <div>
                    <label for="fname">Firstname</label>
                    <input type="text" name="firstname" required id="fname" autocomplete="on">
            </div>
            <br><!-- comment -->
            
            
            
            <div>      
                    <label for="lname">Lastname</label>
                    <input type="text" name="lastname" required autocomplete="on" id="lname">
            </div>
            <br>
            
            <div>      
                    <label for="phonenum">Phone num</label>
                    <input type="tel" id="phonenum" name="phone" required placeholder="555-555-5555" autocomplete="on">

            </div>
            <br>
         
            <div>      
                    <label for="email">Email</label>
                    <input type="email" id="email" name="emailP" required placeholder="youremail@gmail.com" autocomplete="on">
            </div>
            <br>
        
        
            <div>      
                    <label for="age">Age</label>
                    <input type="text" id="age" name="ageP" required pattern="[0-9]{2,3}" minlength="2">
            </div>
            <br>
            
            
            <div>
                <label>Gender</label>
            </div>
            <span>      
                    <input type="radio" name="rb1" required value="Male" id="male">
                    <label for="male">Male</label>

                    <input type="radio" name="rb1" required value="Female" id="female">
                    <label for="female">Female</label>


                    <input type="radio" name="rb1" required value="Others" id="other">
                    <label for="other">Others</label>
            </span>
            <br><br>
            
            <div>
                    <label for="pwd">Password</label>
                    <input type="password" id="pwd" name="password">
                    <br><br>
                    <label for="rpwd">Re-type Password</label>
                    <input type="password" id="rpwd" required name="rpassword">
            </div>
        
            <div>
                <br>
                    <input type="submit" value="Sign-Up">   
            </div>    
            
        </form>
    </body>
</html>
