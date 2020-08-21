<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Confirmation</title> 
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	 
		<div class="card border border-info">
						<h1>Delete <c:out value="${grade.name}" />?</h1>
						<br>
						<p>Are you sure you want to delete this grade?</p>
						<h2><c:out value="${grade.name}" /></h2>
						<br>
						<div>
							<a class="btn link" href="/grades">No, go back </a>|<a
								class="btn link" href="/grades/delete?id=${grade.id}">Yes Delete </a>
						</div>
					</div>
				 
</body>
</html>