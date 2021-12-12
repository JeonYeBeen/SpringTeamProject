<!-- JSP directives, page directives, page 정보 기술 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
<link rel="stylesheet" href="${path}/resources/css/style.css?after">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<h1>View Book</h1>

	<table id="edit">
		<tr>
			<th>제목</th>
			<td>${bookVO.title}</td>
		</tr>
		<tr>
			<th>저자</th>
			<td>${bookVO.writer}</td>
		</tr>
		<tr>
			<th>장르</th>
			<td>${bookVO.category}</td>
		</tr>
		<tr>
			<th>한줄평</th>
			<td>${bookVO.content}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${bookVO.record}</td>
		</tr>
	</table>
	<a href="../list" class="btn btn-primary" role="button">View All Records</a>
</body>
</html>