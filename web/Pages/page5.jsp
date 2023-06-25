<%-- 
    Document   : page5
    Created on : Jun 14, 2023, 12:18:02 AM
    Author     : leonovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../WebCSSFile/pagestyle.css"/>
    </head>
    <body>
         <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("uname")==null && session.getAttribute("pwd")==null)
           response.sendRedirect("../login.jsp");
           
       %>
       
        <form action="../LogoutServlet" method="post">
            <header>
                
            </header>
            
            <div class="imageD">
                <figure>
                    <img src="" width="495" height="400" alt="Image 5" title="">
                    <figcaption></figcaption>
                </figure>
            </div>
        
            
                <nav class="links">
                    <div>
                    <a href="page4.jsp"><</a>
                    <a href="../homepage.jsp">1</a>
                    <a href="../Pages/page2.jsp">2</a>
                    <a href="../Pages/page3.jsp">3</a>
                    <a href="../Pages/page4.jsp">4</a>
                    <a href="../Pages/page5.jsp">5</a>
                    <a href="../homepage.jsp">></a>
                    </div>
                </nav>
                
 
            
            
            <footer class="release">
                <h1>Release</h1>
              
            <div>
                <span>Title</span><aside>SpiderMan: No Way Home</aside>
                <span>Date:</span><aside>2023/14/6</aside>
                <span>Time:</span><aside>6:08AM</aside>
                <span>Downloads:</span><aside>102456</aside>
            </div>
            </footer>
            
            <div>
                <button formaction="../Pur/purchase.jsp">Purchase Movie</button>
            </div>
          
            <div>
                <button formaction="../LogoutServlet" formmethod="post">Logout</button>
            </div>
            
            
         
            <%
             
                session.setAttribute("movieTitle", "SpiderMan, No Way Home");
                session.setAttribute("imgLink", "");
                session.setAttribute("Amount", "$29.99");
            %>
         
        </form>
    </body>
</html>
