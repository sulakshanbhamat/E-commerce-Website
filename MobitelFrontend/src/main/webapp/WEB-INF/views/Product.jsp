<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="AdminHeader.jsp" %>
<html>
<head>
<title>Product Page</title></head>
<body>
     </br>
     </br>
     </br>
   	 <form:form action="${pageContext.request.contextPath}/InsertProduct" modelAttribute="product" method="POST" enctype="multipart/form-data"> 
   	 <table align="center">
			<tr>
				<td colspan="2"> Product Details </td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><form:input path="prodname" /></td>
				<td><form:errors path="prodname" cssStyle="color: #ff0000;"/></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="catid">
						<form:option value="0" label="------Select----" />
						<form:options items="${catlist}" />
					</form:select></td>
			</tr>
			<tr>
				<td>Supplier</td>
				  <td><form:input path="suppid" /></td>
				  <td><form:errors path="suppid" cssStyle="color: #ff0000;"/></td>
			</tr>
			<tr>
				<td>Price</td>
				  <td><form:input path="price" /></td>
				  <td><form:errors path="price" cssStyle="color: #ff0000;"/></td>
			</tr>
			<tr>
				<td>Stock</td>
				  <td><form:input path="quantity" /></td>
				  <td><form:errors path="quantity" cssStyle="color: #ff0000;"/></td>
			</tr>
			<tr>
				<td>Product Desc</td>
				 <td><form:textarea path="prodDesc" /></td>
				 <td><form:errors path="prodDesc" cssStyle="color: #ff0000;"/></td>
			</tr>
			<tr>
			     <td>Product Image</td>
			     <td><form:input type="file" path="pimage" /></td>
	        </tr>
			<tr>
				 <td colspan="2"><input type="submit" /></td> 
			</tr>
		</table>
		<form:hidden path="prodid"/>
	</form:form>
<br>
	<!-- Displaying the Product data using Table -->
	<table cellspacing="2" align="center" border="1">
		<tr bgcolor="pink">
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Price</td>
			<td>Quantity</td>
			<td>Category Id</td>
			<td>Supplier Id</td>
			<td>Operation</td>
		</tr>
		<c:forEach items="${prodlist}" var="product">
			<tr bgcolor="cyan">
				<td>${product.prodid}</td>
				<td>${product.prodname}</td>
				<td>${product.price}</td>
				<td>${product.quantity}</td>
				<td>${product.catid}</td>
				<td>${product.suppid}</td>
				<td><a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a>
					<a href="<c:url value="updateProduct/${product.prodid}"/>">Update</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<!-- Completed Displaying Table -->
	<br>
	<br>
	<br>
</body>
</html>
<%@ include file="Footer.jsp" %>