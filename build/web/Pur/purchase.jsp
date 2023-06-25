<%-- 
    Document   : purchase
    Created on : Jun 14, 2023, 11:40:17 AM
    Author     : leonovo
--%>

<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../WebCSSFile/purchase.css"/>
    
    <style>
    .purchaseSlip {
    background-image: url("${imgLink}");
    background-repeat: no-repeat;
    background-position: center;
    background-size: 500px;
    }
   
    </style>
    
   </head>
   
    <body>
         <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("uname")==null && session.getAttribute("pwd")==null)
           response.sendRedirect("../login.jsp");
           
       %>
      
       <form class="pageForm" action="../PurchaseServlet" method="POST">
        
      <header>
          <h1>Purchase Form</h1>
          <label> Purchase ${movieTitle}</label>
       </header>
       
       <main>
           <div>
            <label for="uname">Username</label>
            <input type="text" id="uname"
                   placeholder="Enter Your Username"
                   autocomplete="on" autofocus required name="uname">
           </div>
           
           <br>
           <div class="purchaseSlip">
               <div class="slip">
                   <img src="${imgLink}" width="320" height="200" 
                        alt="THIS IS SPIDERMAN IMAGE" title="Spiderman, No Way Home"/>
                      <br>
                   <label>Title: </label><span>${movieTitle}</span>
                        <br>
                   <label>Time: </label><span><%
                   LocalTime lt = LocalTime.now();
                   String type="";
                   
                   if(lt.getHour() > 12) {
                      type = "PM";
                    }
                    else{
                      type="AM"; 
                   }
                   if(lt.getMinute() < 10) {
                   out.println(lt.getHour()+": 0"+lt.getMinute()+" "+type);
                   }
                   else{
                   out.println(lt.getHour()+": "+lt.getMinute()+" "+type);
                   }
                   %></span>
                   <br>
                   <label>File Size:</label><span> 480mb</span>
                   <br>
                   <label>Payment Amount:</label><span>${Amount}</span>
                   <br>
                   <label>Resolution:</label> <span>1080p</span>
                   <br>
                   <label>
                      <!-- <span>${1}</span>
                       <span>${2}</span>
                       <span>${3}</span>
                       <span>${4}</span>
                       -->
                       <span style="color: ${color}" class="displaymsg">${msg}</span>
                       <span style="color: ${color}" class="displaymsg"><a 
                               href="http://localhost:8080/MoonBabeWebSite/Videos/video.html" download>${msgLabel}</a></span>
                   </label>
               </div>
           </div>
           
           <div>
               <label for="bn">BankCard No:</label>
               <input type="tel" id="bn" placeholder="XXXX-XXXX-XXXX-XXXX" 
                      maxlength="17" required autocomplete="on">
               <br>
               <label for="b">Bank Name:</label>
               <input type="text" id="b" placeholder="Enter Your Bank Name" autocomplete="on" required>
               <br>
               <label for="ed">Expiry Date:</label>
               <input type="date" id="ed" autocomplete="on">
               <br>
               <label for="cv">CVV:</label>
               <input type="tel" id="cv" maxlength="3" placeholder="XXX" required pattern="[0-9]{3}">
               <br>
               <label for="pwd">Password:</label>
               <input type="password" id="pwd" 
                      placeholder="Enter Your Password" 
                      autocomplete="on" required name="pwd">
               <br><br>
               
               <button type="submit">Purchase</button>
               
           </div>
       </main>
    </form>
       
       <footer>
           
       </footer>
    </body>
</html>
