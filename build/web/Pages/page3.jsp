<%-- 
    Document   : page3
    Created on : Jun 14, 2023, 12:17:41 AM
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
            
            <main class="pageContent">
            
                <div class="imageD">
                    <figure>
                    <img src="../images/plane.jpg" alt="" width="495" height="400">
                    <figcaption></figcaption>
                </figure>
                </div>
                
                <nav class="links">
                    <div>
                    <a href="page2.jsp"><</a>
                    <a href="../homepage.jsp">1</a>
                    <a href="../Pages/page2.jsp">2</a>
                    <a href="../Pages/page3.jsp">3</a>
                    <a href="../Pages/page4.jsp">4</a>
                    <a href="../Pages/page5.jsp">5</a>
                    <a href="page4.jsp">></a>
                    </div>
                </nav>
                    <h1 class="minfo">Movie Info</h1>
                    <div class="textD">
                        Brodie Torrance saves his passengers from a lightning strike by making 
                        a risky landing on a war-torn island - only to find that surviving the
                        landing was just the beginning. When most of the passengers are taken hostage by dangerous rebels, 
                        the only person Torrance can count on for help is Louis Gaspare,
                        an accused murderer who was being transported by the FBI.
                    </div>
               
                
            </main>
            
            
            <footer class="release">
                <h1>Release</h1>
              
            <div>
                <span>Title</span><aside>Plane(2023)</aside>
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
             
                session.setAttribute("movieTitle", "Plane(2023)");
                session.setAttribute("imgLink", "../images/plane.jpg");
                session.setAttribute("Amount", "$49.99");
            %>
         
        </form>
    </body>
</html>
