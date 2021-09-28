<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
</head>
<body>
	<h1>로그인 </h1>
	<form action="login" method="post">
		아이디<br>
		<input type="text" name="userId" id=""><br>
		패스워드<br>
		<input type="text" name="pw"><br>
		
		<input type="submit" value="로그인">
		<hr>
		admin,	12345

	</form>
</body>
</html>