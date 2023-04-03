<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
<div class="login-box">
  <h2>Login</h2>
  <form action="http://localhost:8080/login" method="post">
    <div class="user-box">
      <input type="text" name="id" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Password</label>
    </div>
    <button id="lginbtn">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
     	 로그인
    </button>
    <button type="button" onclick="location.href='http://localhost:8080/member'" id="registebtn">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      회원가입
    </button>
  </form>
</div>
</body>
</html>
