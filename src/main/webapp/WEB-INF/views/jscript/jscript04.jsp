<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script예제4</title>
	<!-- 제이쿼리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
		.out{
			width : 300px;
			height : 200px;
			border : 1px solid #000000;
			text-align : center;
			background-color : yellow;
		}

	</style>
	<script>
		var n = 0;
		$("document").ready(function(){
			$("div.out").mouseenter(function(){
				$("p:first").text("마우스가 들어왔어요");
				$("p:last").text(++n);
			});	
			$("div.out").mouseleave(function(){
				$("p:first").text("마우스가 나갔습니다.");
				$("p:last").text("현재횟수" + n);
			});
		});
		
		$(function(){
		// $("#check_all").on("click",function(){	
			
		    $("#check_all").click(function(){
		        var chk = $(this).is(":checked");
		        if(chk){
		            $(".select_subject input").prop('checked', true);
		        } else {
		            $(".select_subject input").prop('checked', false);
		        }
		    });
		});
		
	</script>
</head>
<body>
<input type="checkbox" id="check_all" class="input_check"><label for="check_all"><b>전체선택</b></label>
<ul class="select_subject">
    <input type="checkbox" class="input_check" name="class1" id="check1" value="1"><label for="check1"><b>1</b></label>
    <input type="checkbox" class="input_check" name="class2" id="check2" value="2"><label for="check2"><b>2</b></label>
    <input type="checkbox" class="input_check" name="class3" id="check3" value="3"><label for="check3"><b>3</b></label>
    <input type="checkbox" class="input_check" name="class4" id="check4" value="4"><label for="check4"><b>4</b></label>
    <input type="checkbox" class="input_check" name="class5" id="check5" value="5"><label for="check5"><b>5</b></label>
</ul>

	<h1>마우스 이벤트 mouseenter</h1>
	<div class="out">
		<p>마우스 이벤트 알아보기</p>
		<p>0</p>	
		<p>0</p>	
		<p>0</p>	
		<p>0</p>	
	</div>
	<div>
		마우스가 영역안에 들어온 경우	
	</div>
<hr>
전송된 내용 : ${js04}
<hr>
<div>
	<a href="/dong">메인으로 이동</a>
</div>
</body>
</html>