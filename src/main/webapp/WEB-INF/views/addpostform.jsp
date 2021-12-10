<!-- JSP page directives page 정보 기술 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/style.css?after">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<h1>Add New Book</h1>
	<!-- form으로 받은 값들 post 방식으로 보낸다. -->
	<form action="addok" method="post">
		<table id="edit">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<th>저자</th>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<th>장르</th>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
		</table>
		<a href="list" class="btn btn-primary" role="button">View All Records</a>
		<input type="submit" class="btn btn-primary" value="Add Post" />
	</form>

</body>
</html>