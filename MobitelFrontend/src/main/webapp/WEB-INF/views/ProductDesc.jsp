<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Product Description Page</title>
</head>
<body>
 <br>
 <br>
 <br>
 <table width="60%" align="center" border="1">
   <tr bgcolor="pink">
    <td colspan="3"><center>Product Description</center></td>
   </tr>
   <tr>
    <td rowspan="6"><img src="<c:url value="resources/images/${product.prodid}.jpg"/>"></td>
   </tr>
   <tr>
    <td> Product ID </td><td>${product.prodid}</td>
   </tr>
   <tr>
    <td> Product Name </td><td>${product.prodname}</td>
   </tr> 
   <tr>
    <td> Supplier </td><td>${product.suppid}</td>
   </tr>        
   <tr>
    <td> Product Description </td><td>${product.prodDesc}</td>
   </tr> 
   <tr>
    <td> Price </td><td>${product.price}</td>
   </tr>      
   <tr>
      <td>
      <form action="<c:url value="/addToCart/${product.prodid}"/>" method="get">
      Quantity<input type="text" name="quantity" class="form-control btn-block"/>
      <input type="submit" value="AddToCart" class="btn btn-xs btn-success btn-block"/>
      </form>
      </td>
   </tr> 
</body>
</html>