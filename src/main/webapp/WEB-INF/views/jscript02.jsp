<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script예제2-제이쿼리</title>
	<!-- 제이쿼리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(document).ready(function(){
//			$("선택자").함수();
			$("p").show();
			$(".c1").hide();
			$("#id2").hide();
			
			$("button.hide").click(function(){
				$("body div p.test1").hide("slow");				
			});
			$("button.show").click(function(){
				$("body div p.test1").show("slow");
			});
		});
	</script>
	<style>
		.test1{
			background-color: red;
		}
	</style>
</head>
<body>

	<div>
		<p class="test1">메세지 : 우린 배가 부릅니다.</p>
		<button class="hide">메시지 삭제</button>
		<button class="show">메시지 보기</button>
	</div>
	<hr>
	전송된 내용 : ${js02}<br>
	<p>제이쿼리</p>
	<p class="c1">공부</p>
	<p id="id2">배부름</p>
	<div class="test1">메세지 : 너는 보여야함</div>
	<div>
		<h2>순서없는 목록</h2>
		<ul>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
			<li>커피</li>
		</ul>
	</div>
</body>
</html>