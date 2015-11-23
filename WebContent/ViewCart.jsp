<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
        <style>
            table, th, td {
             border: 1px solid black;
                }
        </style>
    </head>
    <body>
        
           <h1>Items currently in your cart</h1>
           <hr>
           <table style="border:2px">
               <tr>
                 <th>Product Name</th>
              <th>Price</th>
              <th> </th>
            </tr>
               <c:forEach var="item" items="${sessionScope.cartMap}">
   <tr>
        <td>
             <c:out value="${item.key}" />
        </td>
        <td>
         <c:out value="${item.value}"/></td>
        <td><a href="removeFromCart?remove=${item.key}">[Remove item from cart]</a>
</td>
<c:set var="total" value="${total+item.value}" />
  </tr>
</c:forEach>

  <tr>
      <td>Total</td>
      <td><fmt:formatNumber value="${total+0}" type="currency"/> </td>
      <td></td>
  </tr>
           </table>
  
    </body>
</html>