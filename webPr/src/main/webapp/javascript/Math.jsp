<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Math 객체 사용해보기</title>
</head>
<body>
	<script>
	
	// Math : 수학계산을 위한 여러가지 프로퍼티와 메서드를 제공해준다
	// new생성자를 사용하지 않고 사용이 가능하다.
	// ==========================================================
	// 랜덤한 숫자생성(난수발생시키기)
	// Math.random() : 0~1보다 작은 랜덤한 실수 리턴
	// > 이 함수는 0~1(1은 제외) 구간에서 부동소수점의 난수를 생성해줌
	// >> 범위를 지정한 난수를 생성하기 위해서는 Math.floor()함수를 함께 사용해야함 
	// Math.floor(a) : a의 소수점 1번째 자리를 버림하여 정수 리턴해줌
	// 반올림 > round, 올림 > ceil, 내림 > floor...
	// ===========================================================
		// 난수 출력 문제
		// 0에서 99까지의 랜덤 숫자를 출력하시오
		let m; // 랜덤한 숫자(소수점 포함)를 담을 변수
		let n; // 소수점을 제거한 정수를 담을 변수 선언
		for (let i = 0; i < 10; i++) {
			m = Math.random() * 100; // 0~99.99999사이의 값이 나온다.
			n = Math.floor(m); // 소수점은 제거한 정수 값

		}

		document.write("랜덤값은?" + n);

		setTimeout('location.reload()', 3000); 
		// setTimeout('location.reload()',n);
		// n초마다 자동 새로고침되도록하는 메서드, 1초 = 1000;
		// 3초마다 자동으로 새로고침됨
		
		
		
		
		
	</script>


</body>
</html>