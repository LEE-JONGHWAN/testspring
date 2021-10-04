<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script예제3</title>
	<!-- 제이쿼리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$("document").ready(function(){
			//$("ans.q1").hide();
			//$("ans.q2").hide();
			$("ans").hide();
			
			
			// 출력
			$("p.q1").click(function(){
				$("ans.q1").show();
			});
			$("p.q2").click(function(){
				$("ans.q2").show();
			});
			
			// 숨기기
			$("ans.q1").click(function(){
				$(this).hide();
			});
			$("ans.q2").click(function(){
				$(this).hide();
			});
			
	});
	
	</script>
	<style>
		.hand{
			cursor:pointer;
			cursor:hand;
		}
	</style>
</head>
<body>
	<h2>질문1 : 대한민국의 수도는?</h2>
	<p class="q1 hand"><b>정답보기</b></p>
	<ans class="q1 hand"> 대한민국의 수도는 <b>서울</b>입니다.</ans>
	
	<h2>질문2 : 대한민국의 국보1호는?</h2>
	<p class="q2 hand"><b>정답보기</b></p>
	<ans class="q2 hand"> 대한민국의 국보1호는 <b>숭례문</b>입니다.</ans>
	
<hr>
전송된 내용 : ${js03}
</body>
</html>