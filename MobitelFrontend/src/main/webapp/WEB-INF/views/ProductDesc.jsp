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
    <td rowspan="6"><img src="<c:url value="resources/images/${prodinfo.prodid}.jpg"/>"></td>
   </tr>
   <tr>
    <td> Product ID </td><td>${prodinfo.prodid}</td>
   </tr>
   <tr>
    <td> Product Name </td><td>${prodinfo.prodname}</td>
   </tr> 
   <tr>
    <td> Supplier </td><td>${prodinfo.suppid}</td>
   </tr>        
   <tr>
    <td> Product Description </td><td>${prodinfo.prodDesc}</td>
   </tr> 
   <tr>
    <td> Price </td><td>${prodinfo.price}</td>
   </tr>      
   <tr>
      <td>
      <form action="<c:url value="/addToCart/${prodinfo.prodid}"/>" method="get">
      Quantity<input type="text" name="quantity" class="form-control btn-block"/>
      <input type="submit" value="AddToCart" class="btn btn-xs btn-success btn-block"/>
      </form>
      </td>
   </tr> 
</body>
</html>