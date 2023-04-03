<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td>ID</td><td>이름</td><td>생년월일</td><td>주소</td><td>이메일</td><td>폰번호</td>
	</tr>
	<c:forEach var="list" items="${memList}">
	<tr>
		<td><a href='http://localhost:8080/list/detail?id=${list.id }'>${list.id}</a></td>
		<td>${list.name}</td>
		<td>${list.name}</td>
		<td>${list.addr}</td>
		<td>${list.email}</td>
		<td>${list.phone}</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>