<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>String 객체 메서드 사용해보기</title>
</head>
<body>
	<script>
		let str = new String("dream come true"); // String 클래스 생성자에 인자값 담아서 호출

		//indexOf();  : 찾으려는 글자가 몇번째에 있는지 출력 해주는 메서드
		let position = str.indexOf("come"); // 7출력 (7번째부터 시작한다)
		document.write("come 자리 위치는? " + position);
		let position2 = str.indexOf("hello");
		document.write("hello 자리 위치는? " + position2);

		if (position2 == -1) {
			document.write("해당하는 단어는 포함되어 있지 않습니다.");
		} else {
			document.write("해당하는 단어는 " + position2 + "번 자리에 있습니다.");
		}

		let str3 = prompt("글자를 입력하세요", "");
		let position3 = str3.indexOf("good"); // good이라는 단어가 있는지 체크한다

		if (position3 == -1) {
			document.write("해당단어는 포함되어있지 않습니다.");
		} else {
			document.write("해당단어는" + position3 + "번 자리에 있습니다.");
		}

		document.write("<br>");
		// ===========================================================

		//substr 함수 : 글자자르기 
		//형식 : 함수이름.substr(시작인덱스번호,가져올 글자수);
		let str4 = "무궁화꽃이 피었습니다.";
		let value = str4.substr(6, 3); //6번째부터 3글자 가져옴(0번부터 시작 공백도 포함)
		document.write("값은?" + value);
		document.write("<br>");

		let value2 = str4.substring(1, 4); //2번째부터 4번째 자리까지 출력
		document.write("값2는?" + value2);
		document.write("<br>");

		// trim(); : 문자열에 있는 공백이 제거되어출력
		// 형식 :  변수명.trim(); 
		// >> 변수의 앞뒤 공백이 지워지고 출력됨
		let s = "        안 녕 하 세 요                 ";
		let remove = s.trim();

		document.write("s의 공백을 제거하여 출력하시오 : " + remove);
		document.write("<br>");
	</script>


</body>
</html>
