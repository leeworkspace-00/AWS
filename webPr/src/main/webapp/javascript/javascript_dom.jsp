<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트로 DOM객체 제어하기</title>
</head>
<body>
	<p id="firstP" style="color: yellow; background: green;"
		onclick="this.style.color = 'red'">
		<span id="myspan" style="color: blue;">안녕</span>하세요
	</p>

	<input type="button" value="스타일바꾸기" onclick="change();">
	<input type="button" value="글자내용바꾸기" onclick="textChange();">



	<script>
	let p =document.getElementById("firstP");						// 속성값 id로 객체를 찾는다
	
	document.write("객체 id 값은? " + p.id +"<br>"); 					// firstP 출력
	document.write("객체 태그는? " + p.tagName +"<br>"); 				// p 출력
	document.write("객체가 담고 있는 내용은? " + p.innerHTML +"<br>"); 	// 안녕하세요 출력
	document.write("객체 스타일은? " + p.style.color+"<br>"); 			// yellow 출력
	document.write("객체 이벤트리스너는(감지기)? " + p.onclick +"<br>");	// function onclick(event) { this.style.color = 'red' }
	document.write("객체 너비는? " + p.offsetWidth +"<br>");			// 1093
	document.write("객체 높이는? " + p.offsetHeight +"<br>"); 			// 21
	
	

	
	// document.getElementById("");
	// id로 객체 찾기
	// id는 유일해야 한다.
	// 동일한 id값이 존재하면 첫번째 요소만 반환되고 에러는 발생하지 않는다
	
	function change() {
		let span = document.getElementById("myspan");
		span.style.color = "#FF6600";  // 색상표 : ff660 > 소문자는 인식 안됨
		span.style.fontSize = "30px";
		span.style.border = "3px dotted skyblue";
		
		return;
	}
	
	
	
	function textChange() {
		let myP = document.getElementById("firstP"); // 동일한 id 속성의 값을 두개 이상 가진 요소가 존재하면  첫번째 요소만 바뀜 에러는 나지 않는다
		myP.innerHTML = "무궁화꽃이 피었습니다";
/* 		myP.style.color = "#LL8899";  // 색상표 : ff660 > 소문자는 인식 안됨
		myP.style.fontSize = "30px";
		myP.style.border = "3px dotted skyblue"; */
		
		return;
	}
	// 태그이름으로 DOM객체 찾기 getElementsByTagName("태그이름");
	function fruit() {
		let cls = document.getElementsByClassName("a");	// a 라는 클래스명을 가진 엘리멘트들을 찾는다
		for(let i =0; i<cls.length; i++) { // 찾은 수 만큼 반복문 돌리기
			let entityCls = cls[i]; // 변수명 지정해소 배열에 담기
			entityCls.style.color = "red"; // 스타일 지정해주기
		}
		return;
		}
	
	// document.open();
	// 현재 브라우저에 출력된 HTML 콘텐츠를 지우고 HTML 페이지 시작. 즉 document 객체에 담긴 DOM 트리를 지우고 새로 시작
	document.open(); // 새창 열어주기
	document.write("<html><title>새화면</title><body>새로열립니다.</body></html>");
	document.close();
	
	
	function winOpen() {
		window.open("","winName","width=300,height=300"); // 구분자 = 쉼표
		// 새창열어주는 함수 : window.open("팝업주소","팝업창 이름","팝업창 설정");
		// 인수정리 : window.open(url, name, option);
		// url : 팝업창에 보여질 주소 비워두면 빈창(about:blank)이 보이게 된다.
		
		// name : 새로 열릴창의 속성 또는 창의 이름을 지정한다
		// 다음속성들을 지정해 넣으면 된다
		//	_blank : 새창으로 연다 > 기본값
		//	_parent : 부모프레임에 열린다
		//	_self : 현재 페이지를 대체한다
		// _top : 로드된 프레임셋을 대첼한다
		// name(임의의 이름) : 새창이 열리고 창의 이름을 지정한다. 동일한 이름에 다시 open()을 하면 기존의 열린창의 내용이 바뀐다
		// 다른이름을 사용하면 또 다른 새창이 열린다
		/*
		option : 팝업창의 속성을 설정할 수 있다
		fullscreen : 팝업 전체화면 출력 여부 ( IE에서만 작동 )
		toolbar : 상단 도구창 출력 여부 ( IE, FireFox 에서만 작동 )
		location : 메뉴 아이콘 출력여부 ( Opera 에서만 작동 )
		resizeable : 팝업창 리사이즈 가능여부 ( 크롬에서는 작동 안함)
		scrollbars : 팝업 스크롤바 사용 여부
		menubar : 메뉴 출력 여부
		width : 팝업창의 가로 길이 
		height : 팝업창의 세로 길이
		top : 창의 화면 위에서부터의 팝업 위치 지정
		left : 창의 화면 왼쪽에서부터의 팝업 위치 지정 */
		
		window.close(); // 띄웠던 팝업창 닫기
	
		// open으로 열었던 창을 닫아주는 함수
		// 다만 스크립트나 link를 기준으로 열린창만 닫힘 
		

		return;
	}
	

	
	</script>


	저는 빨간
	<span class = "a">사과</span>를 좋아해서 아침마다 한 개씩 먹고 있어요. 운동할 때는 중간 중간에
	<span class = "a">바나나</span>를 먹지요. 탄수화물 섭취가 빨라 힘이 납니다. 또한 달콤한 향기를 품은
	<span class = "a">체리</span>와 여름 냄새 물씬 나는
	<span class = "a">자두</span>를 좋아합니다.
	<br> 아침에는
	<span class = "b">우유</span>도 같이 먹고 있어요
	<br> 위 문장에서 과일이름은 빨간색으로 변경하세요
	<button type="button" onclick="fruit()">과일이름바꾸기</button>
	
	새창열기 연습
	
	<button type="button" onclick="winOpen()">새창열기</button>

	
	<!-- 
	document.write(""); // 그냥 출력
	
	document.writeln(); // 한칸 띄우고 출력 
	예시 : 
	document.write(2+3); // 5
	document.write("명 입니다"); // 5명입니다 출력
	document.write("<br>"); // 다음줄로 넘어가기
	
	document.writeln(2+3); // writeln 이라도 다음줄로 넘어가는 것이 아니라 띄어쓰기 해주는 명령어
	document.writeln("명입니다.<br>"); // 5 명입니다. 출력
	
	 -->

</body>
</html>