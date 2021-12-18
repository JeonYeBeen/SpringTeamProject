<!-- JSP Directives의 page directive, jsp 페이지에 적용되는 정보를 기술함. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL 태그를 사용하기 위해 사용함. c:~ 된 것은 jstl 사용한 것. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free book</title>
<link rel="stylesheet" href="${path}/resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script>
	//delete 여부를 다시 확인하고 delete를 하기위한 page로 넘어간다.
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
<a href="/mybooks/login/logout">logout</a>
<table id="list" width="90%">
<tr>
	<th>Id</th> 	
	<th>장르</th>
	<th>제목</th>
	<th>제목</th>
	<th>내용</th>
	<th>등록일자</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<!-- list 안에 있는 object를 하나씩 가져오게한다.
	 jstl(c)를 이용한다. 이 때 variable은 u 이다. 
	 el을 사용함.-->
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}" class="btn btn-info" role="button" >Edit</a></td>
		<!-- delelte_ok() 실행, u.getSeq를 넘겨줌. -->
		<td><a href="javascript:delete_ok('${u.seq}')" class="btn btn-danger" role="button">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add" class="btn btn-default" role="button" >Add New Book</a>
</body>
</html>