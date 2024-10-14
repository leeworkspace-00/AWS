<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 객체 연습</title>
</head>
<body>

	<script>
	// 자바스크립트의 3가지 객체
	// 1. 코어 객체 (내장되어 있음 바로 꺼내서 사용하면됨)
	// 2. DOM 객체 (태크로 표현)
	// 3. BOM 객체 (브라우저를 컨트롤할 수 있도록 만들어진 객체)
	
	// 1-1 배열객체\
	// []로 표현할 수 있고 Array 객체로 할수도 있다.
	// 배열객체생성
	let arrName = ["형찬","은지","이슬","인서"];
	
	let value = arrName[0];
	document.write("첫번째 사람의 이름은? "+value+"<br>");
	let value = arrName[4];
	arrName[4] = "경현";
	document.write("다섯번째 사람의 이름은? "+arrName[4]+"<br>");
	arrName[7] = "형구";
	document.write("여섯번째 사람의 이름은? "+arrName[5]+"<br>");
	
	let intRoom = arrName.length;
	document.write("총 방의 개수는? "+intRoom+"<br>");
	
	
	// Array 객체로 생성
	let arrDay = newArray("월","화","수","목","금","토","일");
	for(int i=0;i<arrDay.length;i++) {
		document.write(arrDay[i]+"<br>");
	}
	
	//나중에 배열값을 담을 수 도 있다
	let week = newArray(7); // 방 개수
	week[0] ="월";
	week[1] ="화";
	week[2] ="수";
	week[3] ="목";
	week[4] ="금";
	week[5] ="토";
	week[6] ="일";
	
	// 앞으로 몇개의 배열을 더 만들지 모르겠다
	// 빈배열 선언해주고 
	// 계속 추가해주면 자동으로 늘어남
	let day = new Array();
	day[0] ="월"; 
	day[1] ="화";
	day[2] ="수";
	day[3] ="목";
	day[4] ="금";
	day[5] ="토";
	day[6] ="일";
	
	
	document.write("배열의 길이를 나타내는 length 프로퍼티<br>");
	let arrlength = day.length;
	document.write("배열의 크기는 ? "+arrlength +"<br>");
	day.length = 1;
	document.write("1개로 줄였을 때 두번째 배열에 값이 있나요?"+ day[1]+"<br>");
	
	
	// 문제 수학점수가 90점 영어점수가 80점 국어점수가 75점 인 사람의 총합과 평균값을 
	// 배열을 통해서 구현하시오
	
	// 첫번째 방식 
/* 	let arrScore = new Array(3);
	arrScore[0] = 90;
	arrScore[1] = 80;
	arrScore[2] = 75; */
	
	// 두번째 방식
/* 	let arrScore = [90,80,75]; 이 방식이 많이 사용됨*/ 
	
	//세번째 방식
/* 	let arrScore = new Array(90,80,75); */
	
	// 네번째 방식 - 크기가 추가될때마다 자동 증가(값을 추가할때 자동으로 배열 방 생성)
	let arrScore = new Array()
	arrScore[0] = 90;
	arrScore[1] = 80;
	arrScore[2] = 75;
	

	let plus = 0; // 총합 담는 변수 선언
	for(int i=0;i<arrScore.length;i++)  { // 배열값 반복 출력
		plus = plus+arrScore[i]; // 각 값을 충합변수에 누적시킴
	}
	document.write("총합은? "+plus);
	document.write("자바스크립트 배열값에는 모든 타입의 값을 넣을 수 있다"+ plus/3);
	
	let any = new Array(5);
	any[0] = 0; // 숫자담기
	any[1] = "한글"; // 문자담기
	any[2] = new date();// 객체담기(주소값)
	any[3] = 함수이름; // 함수의 주소값 저장

	// Array 객체의 메소드 사용하기 
	// concat(); > 합치기
	
	let c= new Array("황","김","박");
	let d = new Array("최");
	let e;
	
	c = c.concat(d);
	document.write("c값은? "+c);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>

</body>
</html>