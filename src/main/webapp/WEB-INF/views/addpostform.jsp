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
<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>

	<h1>Add New Post</h1>
	<!-- form으로 받은 값들 post 방식으로 보낸다. -->
	<form action="addok" method="post">
		<table id="edit">
			<tr>
				<th>Title:</th>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<th>Writer:</th>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<th>Category:</th>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<th>Content:</th>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
		</table>
		<a href="list">View All Records</a>
		<input type="submit" value="Add Post" />
	</form>

</body>
</html>