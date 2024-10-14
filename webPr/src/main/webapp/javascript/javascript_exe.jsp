<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제문제</title>
</head>
<body>

	<script>
		function tag() { // 메서드 이름
			let spanArray = document.getElementsByTagName("span") // 태그이름이 span인 것 찾기
			for (let i = 0; i < spanArray.length; i++) { // 태그수만큼 반복해서 변경해주기
				var span = spanArray[i]; // span에 담아주기
				span.style.color = "orange"; // 스타일변경
				span.style.fontSize = "20px";
			}

			return;
		}
	</script>

	1. 다음 문장에서 사람이름에 해당하는 문장은 글자크기를 30px로 작성 색상은 오렌지
	<hr>
	<span>이순신</span>은 배 13척을 가지고 명량해전을 대승으로 이끌었다.
	<br>
	<span>홍길동</span>은 아버지를 아버지라고 부르지 못하고 가출했다.
	<br>
	<span>강감찬</span>은 귀주대첩의 유명한 장군이다.
	<br>
	<span>김한수</span>는 내 학교 선배였다.
	<br>

	<button type="button" onclick="tag()">사람을 찾아보세요</button>
	<br>


</body>



</html>