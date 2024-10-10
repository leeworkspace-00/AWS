<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트로 사용자 객체 만들기</title>
</head>
<body>

	<script>
		// object객체 생성법
		let obj = new Object(); // Object 객체 생성자를 직접 부른다
		obj.name = "김갑수"; // 객체 안에 변수 선언하고 값대입
		obj.age = 21; // 객체 안에 변수 선언하고 값대입
		obj.move = move; // 함수(메서드) 이름을 말한다

		function move() { // 열심히 달린다를 출력하는 메서드
			//alert("열심히 달린다");
			document.write("열심히 달린다");
			return;
		}

		document.write(obj.name + "<br>");
		document.write(obj.age + "<br>");
		obj.move(); // 메서드 호출
		document.write("<br>");

		// ===================================================
		// 리터럴(값대입방식) 객체 생성법 가장 많이 사용하는 방법
		// 선언후 중괄호안에 값 입력
		let obj2 = {
			name : "김갑수",
			age : 21,
			move : function() {
				document.write("열심히 달린다.");
			}

		}

		document.write(obj2.name + "<br>");
		document.write(obj2.age + "<br>");
		obj2.move();
		document.write("<br>"); // 출력
		// ===================================================

		//프로토타입으로(클래스) 함수 객체를 생성하기 위한 선언

		function Person() {// 프로토타입 함수(생성자 함수) 선언
			this.name = "김갑수"; // this 는 자기 자신 객체를 뜻한다
			this.age = 21;
			this.move = function() {
				document.write("열심히 달린다");
				return;
			}
		} // 생성자 함수에 선언과 값대입

		let p = new Person(); //new 생성자로 가져와 출력하기
		document.write(p.name + "<br>");
		document.write(p.age + "<br>");
		p.move();
		
		// =====================================================

		
			
			
		// 
			
			
			
			
			
		// 계좌예시 - new Object();
		/* let account = new Object();

		acconut.owner = "lee"; // 계좌주인프로퍼티 생성 및 초기값 지정
		acconut.code = "1234"; // 코드 프로퍼티 생성 및 초기값 지정
		acconut.balance = 35000; // 잔액프로퍼티 생성 및 초기값 지정
		acconut.inquiry = inquiry; //  메서드 작성
		acconut.deposit = deposit; // 예금 메서드 작성
		acconut.withdraw = withdraw;  // 출금 메서드 작성
		 */
	</script>





</body>
</html>