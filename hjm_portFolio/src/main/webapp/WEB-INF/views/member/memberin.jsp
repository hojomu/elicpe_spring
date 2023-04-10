<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
  <h2>Join In</h2>
  <form action="/memberin" method="post">
    <div>
      <input type="text" name="id" required>
      <label>ID</label>
    </div>
    <div>
      <input type="password" name="password" required>
      <label>PASS WORD</label>
    </div>
    <div>
      <input type="text" name="name" required>
      <label>NAME</label>
    </div>
    <div>
      <input type="text" name="phone" required>
      <label>PHONE</label>
    </div>
    <div>
      <input type="text" name="email" required>
      <label>E-mail</label>
    </div>
    
    <button id="submitbtn">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
     	완료
    </button>
    <button id="resetbtn" type="reset">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
     리셋
    </button>
  </form>
</div>
</body>
</html>