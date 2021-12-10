<!-- JSP directives, page directives, page 정보 기술 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<link rel="stylesheet" href="${path}/resources/css/style.css?after">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<h1>Edit Book</h1>
	<form:form commandName="bookVO" method="POST" action="../editok">
		<form:hidden path="seq" />

		<table id="edit">
			<tr>
				<th>제목</th>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<th>저자</th>
				<td><form:input path="writer" /></td>
			</tr>
			<tr>
				<th>장르</th>
				<td><form:input path="category" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><form:textarea cols="50" rows="5" path="content" /></td>
			</tr>
		</table>
		<input type="submit" class="btn btn-primary" value="Edit Post" />
		<input type="button" class="btn btn-primary" value="Cancel" onclick="history.back()" />
	</form:form>


</body>
</html>