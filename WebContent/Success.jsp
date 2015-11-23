<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
    </head>
    <body>
        <h1>The following items has been added to your shopping cart successfully</h1>
        <hr>
        <%
            String name = request.getParameter("items");
             String [] cat = request.getParameterValues(name);
          
        for(String a : cat) { 
            String name_1 = a.substring(0, a.indexOf("[") - 1);
            String name_2 = a.substring(a.indexOf("[") + 1, a.indexOf("]"));
            float price = Float.parseFloat(name_2);
            out.print("<h2>"+ name_1+ "</h2>");           
        }
            
            %>
            <hr>
            [<a href="ViewCart.jsp"> View Cart</a>] &nbsp; &nbsp; [<a href="Book.jsp"> Go To Book Page</a>] &nbsp; &nbsp; [<a href="Music.jsp"> Go To Music Page</a>] &nbsp; &nbsp; [<a href="Computers.jsp"> Go To Computers Page</a>]
        
    </body>
</html>