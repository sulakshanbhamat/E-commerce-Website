<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>User Home Page</title>
</head>
<body>
<br>
<br>
<br>
<br>
<h1 align="center">Welcome User</h1>

 <div class="row">
     <div class="col-sm-6 col-md-3">
      <c:forEach items="${prodlist}" var="product">
       <a href="ProdDesc/${product.prodid}" class="thumbnail">
         <img src="<c:url value="resources/images/${product.prodid}.jpg"/>">
       </a>
       <div class="caption">
         <h4>${product.prodname}</h4>
         <p>${product.price}</p>
         <td><a href="<c:url value="ProdDesc/${product.prodid}"/>">ADD TO CART</a>  </td>
       </div>
      </c:forEach>
     </div>
 </div>
</body>
</html>