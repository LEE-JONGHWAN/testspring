<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 메인입니다.</title>
	<%@include file="include/plugin.jsp" %>
	
</head>
<body>
	<%@include file="include/header.jsp" %>
<section>
	<h2>본문내용 : Content</h2>
	msg : ${msg}
</section>
<aside>
	독립적으로 이루어지는 광고
</aside>
	<%@include file="include/footer.jsp" %>

</body>
</html>