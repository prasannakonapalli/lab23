<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag example</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<div class="container">
		<h1>Grade Added</h1>
		<p> The grade was added to the database.</p>
		<h2>Details</h2><br>
		<table class="table">
			<tr>
				<th scope="row">Name</th>				
				<td><c:out value="${grade.name}" /></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td><c:out value="${grade.type}" /></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td><fmt:formatNumber type="number" value="${grade.score}"   minFractionDigits = "1"/></td>  
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td><c:out value="${grade.total}" /></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td><fmt:formatNumber type="percent" value="${grade.percentage}"   minFractionDigits = "1"/></td>  
			</tr>
		</table>
		
				
		<a class="btn link" href="/grades">Return to grade List</a>
	</div>
</body>
</html>