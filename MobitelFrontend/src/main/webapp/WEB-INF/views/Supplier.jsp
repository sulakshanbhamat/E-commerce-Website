<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Supplier</title>
</head>

<body>

</br>
</br>
</br>
</br>
<!-- Category Form Started -->
<c:if test="${flag}">
	<form action="../UpdateSupplier" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddSupplier" method="post">
</c:if>

	<table align="center" cellspacing="2">
		<tr>
			<td colspan="2">Supplier Details</td>
			<c:if test="${flag}">
			<input type="hidden" name="suppid" value="${supplier.suppid}"/>
			</c:if>
		</tr>
		<tr>
			<td>Supplier Name</td>
			<c:if test="${flag}">
				<td><input type="text" name="suppname" value="${supplier.suppname}" /></td>
			</c:if>
			<c:if test="${!flag}">
				<td><input type="text" name="suppname" /></td>
			</c:if>
		</tr>
		<tr>
			<td>Supplier Address</td>
			<c:if test="${flag}">
				<td><input type="text" name="address" value="${supplier.address}" /></td>
			</c:if>
			<c:if test="${!flag}">
			<td><input type="text" name="address" /></td>
			</c:if>
		</tr>
		<tr>
			<td colspan="2"> <!-- <input type="submit" value="AddSupplier" /></td> -->
					<c:if test="${flag}"><input type="submit" value="UpdateSupplier"/></c:if>
		            <c:if test="${!flag}"><input type="submit" value="AddSupplier"/></c:if>
		</tr>
	</table>
</form>
<!-- Category Form Completed -->

<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${suppdetail}" var="supplier">
		<tr bgcolor="cyan">
			<td>${supplier.suppid}</td>
			<td>${supplier.suppname}</td>
			<td>${supplier.address}</td>
			<td><a href="<c:url value="deleteSupplier/${supplier.suppid}"/>">Delete</a>
				<a href="<c:url value="updateSupplier/${supplier.suppid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>