<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 연습하기</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script> 
</head>
<body>
<script>
	$(document).ready(function() {
		//alert("hello world!"); 
		// $ : j쿼리라는 뜻 .문서형식 .준비됨
		//제이쿼리의 특징은 실행순서가 html > script > 전체 코드가 실행된 다음 j쿼리문이 실행된다는 것
	
		//아이디 호출할때는 # 을 앞에 붙인다
		$("#btn1").click(function() { // 버튼을 클릭하면? 
			$("p").hide(); // p태그를 가진 객체를 감추겠다
		});
		
		$("button").dblclick(function() { // 버튼을 더블클릭하면? 
			$("p").show(); // p태그를 가진 객체를 보여주겠다
		});
		
		$("#btn2").click(function() {
			$("#divid").html("");
		});
		
		$("#btn3").click(function() {	
			
		 /*	$("#div1").fadeIn(); //  천천히 나타나도록
			$("#div2").fadeIn("slow");
			$("#div3").fadeIn(3000); */
			
			
			$("#div1").fadeOut(); // 천천히 사라지도록
			$("#div2").fadeOut("slow");
			$("#div3").fadeOut(3000);
		
		}); 
		
		$("#filep").click(function() {
			$("#panel").slideDown("slow");
			
		});

}); 	
	
</script>
<p>저는 홍길동입니다</p>
	<button id = "btn1">클릭하면 글이 사라집니다.</button>	
	<div id = "divid">클릭해보세요</div>
	<button id = "btn2"> 사라집니다.</button>	
	<br>
	<button id = "btn3">서서히 사라지다</button> 
	<!-- 다른 색상의 정사각형 3개를 페이드인 페이드 아웃 해보기 -->
	<p>
	<div id = "div1" style="width:80px;height : 80px; background-color:red;"></div> 
	<br>
	<div id = "div2" style="width:80px;height : 80px; background-color:green;"></div>
	<br>
	<div id = "div3" style="width:80px;height : 80px; background-color:blue;"></div>
	
	<div id ="filep" style = "padding:5px; text-align: center;background-color: #e5eecc; border: 1px solid #c3c3c3;">클릭하면 아래로 펼쳐져요</div>
	<div id = "panel" style = "padding :50px; background-color: #e5eecc; display:none;">안녕! 반가워요</div>

</body>
</html>