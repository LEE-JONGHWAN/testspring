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
	<hr>
	 사원의 부분 정보를 입력.<br>
	 <form>
	 	사원번호 : <input type="text" name="empno"><br>
	 	사원명 : <input type="text" name="ename"><br>
		급여 : <input type="text" name="sal"><br>
		<input type="submit"> 
	 </form>
	
	<div>
		<a href="/dong">메인으로 이동</a>
	</div>
</body>
</html>