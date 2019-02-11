<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
		<c:forEach items="${print}" var="element">
			<tr>
				<th>${element.count}</th>
				<th>${element.outsandingPrincipal}</th>
				<th>${element.interst}</th>
				<th>${element.principal}</th>
				<th>${element.emi}</th>
			</tr>
		</c:forEach>
			
			
		
			
		</tr>
	</table>
</body>
</html>