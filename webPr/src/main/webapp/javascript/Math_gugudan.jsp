<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Math를 이용해서 구구단 만들기</title>
<script>
	function randomInt() { // 1-9사이의 난수를 리턴하는 함수생성
		return Math.floor(Math.random() * 9) + 1;
	}
</script>
</head>
<body>
	<h3>Math를 활용하여 구구단 연습하기</h3>
	<script>
		// 구구단 문제 생성하기 : 난수 * 난수
		let ques = randomInt() + " * " + randomInt();

		let inputAns = prompt(ques + "의 값은 얼마인가요?", 0);
		if (inputAns == null) { // 취소버튼을 클릭한 경우
			document.write("구구단 연습을 종료합니다"); // 널값이 리턴된경우 끝내기

		} else {
			let result = eval(ques); // eval(); : 문자열로 표현된 수식에서 숫자를 계산해줌
			// >> 랜덤 구구단 계산

			if (result == inputAns) { // 계산된 값과 입력값 비교후 동일한 값인경우
				document.write(ques + " = " + result + "<br>");
				document.write("정답 !");
			} else {
				document.write("땡 !");
				document.write("정답은 " + ques + " = " + result + "입니다!<br>");

			}
		}
	</script>

</body>
</html>