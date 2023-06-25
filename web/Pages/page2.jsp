<%-- 
    Document   : page2
    Created on : Jun 14, 2023, 12:17:18 AM
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
       
       <form action="LogoutServlet" method="post">
            <header>
                
            </header>
            
            <main>
                
                <div class="imageD"> 
                 <figure>
                     <img src="../images/blackdemon.jpg" width="495" height="400" alt="" title="Spiderman: No Way Home">
                    <figcaption></figcaption>
                </figure>
             </div>
            
                <nav class="links">
                 <div>
                    <a href="../homepage.jsp"><</a>
                    <a href="../homepage.jsp">1</a>
                    <a href="../Pages/page2.jsp">2</a>
                    <a href="../Pages/page3.jsp">3</a>
                    <a href="../Pages/page4.jsp">4</a>
                    <a href="../Pages/page5.jsp">5</a>
                    <a href="page3.jsp">></a>
                 </div>
                </nav>
                
                <h1 class="minfo">Movie Info</h1>
                <div class="textD">
                    Oliman Paul Sturges' idyllic family vacation
                 turns into a living nightmare when they encounter a 
                 gigantic megalodon shark that will stop at nothing
                 to protect its territory. Stranded and under constant
                 attack, Paul and his family must somehow find a way
                 to get his family back to shore alive before it
                 strikes again in the epic battle between humans and nature
                </div>
                
            </main>
            
            
           <footer class="release">
                <h1>Release</h1>
              
            <div>
                <span>Title</span><aside>The Black Demon (2023)</aside>
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
             
                session.setAttribute("movieTitle", "The Black Demon(2023)");
                session.setAttribute("imgLink", "../images/blackdemon.jpg");
                session.setAttribute("Amount", "$19.40");
            %>
         
         
        </form>
    </body>
</html>
