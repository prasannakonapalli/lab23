<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grades</title>
 
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
 
</head>
<body> 
<div class="container">
		<h1>Grades</h1>
		<form action="/grades/add" method="post">
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th><th>Percentage</th>
				</tr>
			</thead>
			<tbody>
			
			 <c:set var = "grades"    value = "${grades}"/>
		      <c:if test = "${grades.size() == 0}"> 
		      <tr>
		         <td>There are no Grades to show</td>
		       </tr>
		      </c:if>
		      
		      			
				<c:forEach var="grade" items="${grades}">
				<tr>
					
					<td><c:out value="${grade.name}" /></td> 
					<td>${grade.type}</td>
					<td><fmt:formatNumber type="number" value="${grade.score}"   minFractionDigits ="1"/></td> 
					<td>${grade.total}</td>
					<td><fmt:formatNumber type="percent" value="${grade.percentage}"   minFractionDigits ="1"/></td>
					<td>
						<c:url var = "url"    value = "/grades/deleteConfirmation?id=${grade.id}"/>
						<a href="${url}" data-toggle="modal"><c:out value="Delete" /></a> 
					</td>
					
				</tr>
					
				</c:forEach>
			</tbody>
		</table>
		<br> 
		<a href="/grades/add">Add a Grade</a>
		<br> 
	
		</form>
		

	</div>
	
</body>
</html>