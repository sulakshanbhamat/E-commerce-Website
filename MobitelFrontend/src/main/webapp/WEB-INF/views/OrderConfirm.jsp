<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Order Confirmation</title>
</head>
<body>
 <br>
 <br>
 <br>
 <table cellspacing="3" align="center"> 
   <tr>
      <td colspan="5"><center><h3>Order Confirm</h3></center></td>
   </tr>
   <tr bgcolor="pink">
    <td>Product Name</td>
    <td>Quantity</td>
    <td>SubTotal</td>
    <td>Image</td>
   </tr>
   
  <c:forEach items="${cartitems}" var="cartitem">
   <tr>
 	<td>${cartitem.prodname}</td>
    <td>${cartitem.quantity}</td>
    
    <td><img src="<c:url value="/resources/images/${cartitem.prodid}.jpg"/>" width="100"></td>  
    <td>${cartitem.price * cartitem.quantity}</td>
   </tr>
 </c:forEach>
   <tr>
    <td colspan="3">Grand Total</td>
    <td>${grandtotal}</td>
   </tr>
 </table>
</body>
</html>
<%@ include file="Footer.jsp" %>