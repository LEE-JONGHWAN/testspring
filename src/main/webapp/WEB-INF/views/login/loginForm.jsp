<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 재작성 예제</title>
</head>
<body>
 msg : ${msg}
	<h1>로그인 재작성 폼</h1>
	<form action="login4" method="post">
		아이디 : <input type="text" name="userID"><br>
		이름 : <input type="text" name="name"><br>
		<input type="submit">
	</form>


</body>
</html>