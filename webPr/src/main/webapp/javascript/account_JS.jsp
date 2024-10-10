<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account 예시 계좌문제 풀이</title>
<script>
	// 자바스크립트에서 객체를 만드는 방법은 크게 3가지
	// new Object(); >>여기까지 함 뒤에 더 복습 필요
	// 예제 new Object() 를 사용하여 계좌를 표현하는 Account 객체 만들기

	// 사용자 객체만들기
	let account = new Object(); // account 객체 생성
	account.owner = "이경현"; // 계좌 주인정보 생성+초기값
	account.code = "1111"; // 계좌코드 생성 + 초기값
	account.balance = 35000; // 계좌 잔액 생성 + 초기값
	account.inquiry = inquiry; //잔금조회하는 메서드 작성
	account.deposit = deposit; // 예금하는 메서드 작성
	account.withdraw = withdraw; // 출금하는 메서드 작성

	// 메서드로 사용할 3개의 함수 작성하기 
	function inquiry() {
		return this.balance;
	}
	function deposit(money) {
		this.balance += money;// 잔액 + money
	}
	function withdraw(money) {
		this.balance -= money; // 잔액 - money 
		return money;
	}

	// 리터럴 표기법(값 대입방법) > 가장많이 사용하는 방법
	// 프로토타입(prototype)으로 만드는 방법 : 자바의 클래스와 같은 방법
	//	> 자스에서 제공하는 프로토타입 : Array, Date, String  
	// 객체 생성시 new 프로토타입 사용
	let week = new Array(7);// 7개 방을 가진 배열 선언
	let hello = new String("Hello"); // 문자열 선언
</script>
</head>
<body>
	<h3>new Object()로 사용자 객체 만들기</h3>
	<hr>
	<script>
		// 객체 활용
		document.write("account : ");
		document.write(account.owner + ", ");
		document.write(account.code + ", ");
		document.write(account.balance + "<br>");

		account.deposit(10000); // 10000원 저금
		document.write("10000원 저금 후 잔액은 " + account.inquiry() + "<br>");
		account.withdraw(5000); // 5000원 인출
		document.write("5000원 인출 후 잔액은 " + account.inquiry() + "<br>");
	</script>
	
	



</body>
</html>