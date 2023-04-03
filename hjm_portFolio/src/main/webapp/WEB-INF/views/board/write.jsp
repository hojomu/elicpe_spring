<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = (String)session.getAttribute("login");
%>

<h1>글쓰기</h1>

<form action="write" method="post">
제목 <input type="text" name="title"><br>
<textarea rows="40" cols="40" name="contents"></textarea>
<input type="hidden" name="id" value=<%= id %>>
<input type="submit" value="글쓰기">
</form>

</body>
</html>