<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script예제1</title>
<script>
// 버튼1이 클릭이 되면 test01()실행하세요
	
	function test01(){
		var str="hello";
		let str2 = "hello2";
		//브라우저의 콘솔모드
		console.log(str);
		console.log(str2);
	}
	
	function test02(msg){  // -> 익명함수
		//확인창
		alert(msg);
	}	
	
	function test03() {
		//확인취소창
		if(confirm("확인취소창- index 컨트롤러 호출") == true){ // 확인일때
		location.href="index"; // 문서 이동
		//history.back() 뒤로 이동
		} else { // 취소일때
			return
		}
		
	}

	function test04() {
		//입력창
		let num = prompt("당신의 현재 컨디션 점수는 : ");
		console.log(num);
		let content = "<h1>컨디션 점수 : " + num + "</h1>";
		// 타겟지정 , 대상 지정, 위치 지정
		let loc = document.getElementById("0930");  // ==> jQuery("0930"); ==> $("#0930"); $("선택자") 
		//loc.innerHTML= content; // 출력부분 선택해서 출력             		// $("#0930").html(content);
		
		loc.innerText = content; //문자열 출력

	}
	
	
	// BOM (브라우저 객체모델)
	var Bom = "location, history, navigator, screen, frames...";
	
	
	
</script>

</head>
<body>
전송된 내용 : ${js01}<br />
<input type="button" value="test01()실행" onclick="test01()" /><br>
<button onclick="test01()">test01()실행</button>
<button onclick="test02('hahahahahahahahaha')">test02()실행</button>
<button onclick="test03()">test03()실행</button>
<button onclick="test04()">test04()실행</button>
<hr>
<div id="0930" style="background-color:gray"></div>


<script>

</script>
	
</body>
</html>