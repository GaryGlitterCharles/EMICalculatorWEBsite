<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead class="thead-dark" >
			<tr>
				<th >Instalment Number</th>
				<th >OutsandingPrincipal</th>
				<th>Interst</th>
				<th >Principal</th>
				<th >EMI</th>
			</tr>
		</thead>
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