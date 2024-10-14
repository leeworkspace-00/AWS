<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트연습하기</title>
<script>
  	function calculate() { // 계산기 동작함수 생성
		let exp = document.getElementById("exp"); // exp input 객체 찾기 id가 exp인 것을 찾아서 담아
		let result = document.getElementById("result"); // result input 객체 찾기 id 가 result인 것을 찾아서 담아
		result.value = eval(exp.value); // 계산해서 담기
		return;
	}

	function rightClick() {
		alert("오른쪽 버튼은 사용금지 입니다.");
		return false; // 리턴값이 false가 아닌 경우는 알림창만 뜨고 실행이 됨 리턴만 적어둔 경우
	}

	document.oncontextmenu = rightClick;

	window.onload = function() { // onload 이벤트 
		// 이미지의 로딩이 완료되면 이미지 객체에 발생하는 이벤트
		
		alter('모든객체가 생성된 후에 로딩됩니다.');
	} 

	function changeImage() {
		alter("함수에 들어왔나요?");
		let sel = document.getElementById("sel"); //select 객체 찾기
		alter("객체가 생성되었나요?" + sel);
		let img = document.getElementById("myImg"); //image 객체 찾기
		alter("객체가 생성되었나요?" +img);

			alert("이미지가 로딩되었나요?"); 
			let mySpan = document.getElementById("mySpan");
			alert("객체가 생성되었나요?" + mySpan);
			mySpan.innerHTML = img.width + " X " + img.height;

		let index = sel.selectedIndex;
		alert(index);
		alert(sel.options[index].value);
		img.src = sel.options[index].value;
		alert(img.src);
	} 
	
 function chk(){
	//alert("chk함수안에 들어왔음");
	let nm = document.getElementById("nm");
	nm.onblur=function(){
		if(nm.value=="") { // 만약 입력된 것이 없다면? 
			//	alert("내용을 입력하지 않고 다음창으로 넘어갈 수 없습니다.");
				nm.focus();
		
	}
	//alert("nm객체 생성되었음"+nm);
	


		
	}
		
	
	


	
	
	
	
	
	
 </script>
</head>
<body>
		<form>
		<h3>onblur와 onfoucs</h3>
		<hr>
		입력하지 않고 다음창으로 이동할 수 없습니다.
		<br>
		<input type = "text" id = "nm" onblur="chk();"><!--  그위치를 떠날때 감지하는 이벤트 -->
		

		


<h3>계산기 만들기</h3>
	<!-- 여기 먼저 작성한 다음에 위에 함수 작성하는 것이 순서 -->
	<hr>
	계산하고자 하는 수식을 입력하고 계산버튼을 누르세요
	<br>
	<br>

		식<input type="text" id="exp" value="">
		 <br>
		  값<input type="text" id="result"> 
		  <br> 
		  <input type="button" value="계산" onclick="calculate();">
		<hr>
		<p>마우스 오른쪽 버튼을 클릭해보는 테스트</p>
		<hr>


			<select id="sel" onchange="changeImage();">
				<option value="../images/apple.png">사과</option>
				<option value="../images/banana.png">바나나</option>
				<option value="../images/strawberry.png">딸기</option>
			</select> 
			<span id="mySpan">이미지 크기</span>
		

		<p>
			<img id="myImg" src="../images/apple.png" title="사과">
		</p>
		
		
		
		
		
		
		
		
		
</form>
</body>
</html>