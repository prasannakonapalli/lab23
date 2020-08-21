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
		
		<h1>Add a Grade</h1>
		<form action="/grades/addConfirmation" method="post">
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name" autofocus/></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td>
				<select name="type" >
				<option>- Select One -</option> 
				<option>Assignment</option>	
				<option>Quiz</option>
				<option>Exam</option>
				</select>
				</td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td><input type="number" name="score" /></td>
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td><input type="number" name="total" /></td>
			</tr>
			
		</table>
	<input type="submit" value="Add" />
		
		
		<a class="btn link" href="/grades">Cancel</a>
	
		</form>
	</div>
</body>
</html>