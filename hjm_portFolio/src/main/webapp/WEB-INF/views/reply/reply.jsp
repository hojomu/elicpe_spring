<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="card mb-4">
	<div class="card-header" style="height:5px">
	</div>
	<div class="card-body">
		<div>
			<h3>댓글</h3>
			
			<div>
				<c:forEach items="" var="">
					<div>
					
					</div>
				</c:forEach>
			</div>
			
			<div>
				<form action="/replies/new" method="post">
					<em>아이디</em>
					<textarea rows="3" cols="50"></textarea>
					<button>등록</button>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>