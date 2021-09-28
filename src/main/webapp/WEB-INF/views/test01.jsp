<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화면 중앙</title>
</head>
<body>
여기는 화면의 중앙입니다.<br>
전송된 문자열 : ${str}<hr>
<div>
	<a href="empcount">사원수구하기</a> 
	 : 결과값 - ${count}<br> 
	<a href="search?ename='smiith'">스미스찾아주세요</a> <br>
	<form action="search" method="post">
		찾을 이름 : <input type="text" name="ename"><br>
		<input type="submit">
	</form>
	<hr>
	사원번호 : ${eDTO.empno}<br>
	이름 : ${eDTO.ename}<br>
	
	
</div>

</body>
</html>