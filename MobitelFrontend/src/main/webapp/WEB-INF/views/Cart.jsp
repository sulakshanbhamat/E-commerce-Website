<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Cart Page</title>
</head>
<body>
<br>
<br>
<br>
<table cellspacing="3" align="center">
 <tr>
   <td colspan="5"><center><h3>Shopping Cart</h3></center></td>
 </tr>
 <tr bgcolor="pink">
    <td>Product ID</td>
    <td>Quantity</td>
    <td>SubTotal</td>
    <td>Image</td>
    <td>Operation</td>
 </tr>
 
 <c:forEach items="${cartitems}" var="cartitem">

 <tr>
  <form method="get" value="${pageContext.request.contextPath}/updateCartItem/${cartitem.citemid}">
 	
 	<input type="hidden" name="citemid" value="${cartitem.citemid}">
 	<td>${cartitem.prodname}</td>
    <td><input type="text" name="quantity" value="${cartitem.quantity}"/></td>
    <td>${cartitem.price * cartitem.quantity}</td>
    <td><img src="<c:url value="/resources/images/${cartitem.prodid}.jpg"/>" width="100"></td>
    <td>
 
      <input type="hidden" name="citemid" value="${cartitem.citemid}">

      <input type="submit" value="UPDATE" class="btn-success btn-block">
  
     <a href="${pageContext.request.contextPath}/deleteCartItem/${cartitem.citemid}"> Delete</a>
   
   </td>  
  </form>
</tr>
 </c:forEach>
 <tr>
   <td><a href="<c:url value="../displayProduct"/>">Continue Shopping</a></td>
   <td><a href="<c:url value="/checkout"/>">CheckOut</a></td>
 </tr>
 
</table>

</body>
</html>