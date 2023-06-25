<%-- 
    Document   : homepage
    Created on : Jun 6, 2023, 5:48:50 PM
    Author     : leonovo
--%>

<%@page import="com.demo.login.service.LoginService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="WebCSSFile/pagestyle.css"/>
    </head>
    <body>
        
        
        
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        
        if(session.getAttribute("uname")==null && session.getAttribute("pwd")==null)
           response.sendRedirect("login.jsp");
           
       %>
       
       <form action="LogoutServlet" method="POST">
            <header>

            </header>
           
      
           <figure class="imageD">
                    <img src="images/nowayhome.jpg" alt="" width="495" height="400">
                    <figcaption></figcaption>
                </figure>
            
            
           
            <nav class="links">
                <div>
                    <a href="Pages/page5.jsp"><</a>
                    <a href="homepage.jsp">1</a>
                    <a href="Pages/page2.jsp">2</a>
                    <a href="Pages/page3.jsp">3</a>
                    <a href="Pages/page4.jsp">4</a>
                    <a href="Pages/page5.jsp">5</a>
                    <a href="Pages/page2.jsp">></a>
                </div>
            </nav>
             
            <h1 class="minfo">Movie Info</h1>
            <div class="textD">
                 For the first time in the cinematic history
                 of Spider-Man, our friendly neighborhood hero's
                 identity is revealed, bringing his Super Hero
                 responsibilities into conflict with is normal life
                 and putting those he cares about most at risk
                 When he enlists Doctor Strange's help to restore his secret, the spell
                 tears a hole in their world, releasing the most powerful villians
                 who've ever fought a Spider-Man in any universe. Now, Peter will
                 have to overcome his greatest challenge yet, which will not
                 only forever alter his own future but the future of the 
                 Multiverse.
            </div>
            
            
            <footer class="release">
                <h1>Release</h1>
              
            <div>
                <span>Title:</span><aside>SpiderMan, No Way Home</aside>
                <span>Date:</span><aside>2023/14/6</aside>
                <span>Time:</span><aside>6:08AM</aside>
                <span>Downloads:</span><aside>102456</aside>
            </div>
            </footer>
            
            <div>
                <button formaction="Pur/purchase.jsp">Purchase Movie</button>
            </div>
            <div>
                <button formaction="LogoutServlet" formmethod="post">Logout</button>
            </div>
            
            <%
             
                session.setAttribute("movieTitle", "SpiderMan, No Way Home");
                session.setAttribute("imgLink", "../images/nowayhome.jpg");
                session.setAttribute("Amount", "$29.99");
                
            %>
         
        </form>
    </body>
</html>
