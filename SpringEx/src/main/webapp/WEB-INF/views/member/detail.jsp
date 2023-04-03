<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
<table border="1">
	<tr>
		<td>아이디</td><td>${memDetail.id}<input type="hidden" name="id" readonly value="${memDetail.id}"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="text" name="password" value="${memDetail.password}"></td>
	</tr>
	<tr>
		<td>이름</td><td><input type="text" name="name" value="${memDetail.name}"></td>
	</tr>
	<tr>
		<td>핸드폰</td><td><input type="text" name="phone" value="${memDetail.phone}"></td>
	</tr>
	<tr>
		<td>생일</td><td><input type="text" name="birthday" value="${memDetail.birthday}"></td>
	</tr>
	<tr>
		<td>이메일</td><td><input type="text" name="email" value="${memDetail.email}"></td>
	</tr>
</table>
<input type="submit" value="수정"  formaction="http://localhost:8080/list/detail/modify">
<input type="submit" value="삭제" formaction="http://localhost:8080/list/detail/delete">
</form>
</body>
</html>