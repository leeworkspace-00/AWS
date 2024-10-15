<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라디오 체크박스 객체 다루기</title>
</head>
<body>
<script>
// 20241015
// 라디오버튼은 체크박스와 다르게 하나만 선택할 수 있다
// 선택한 값을 알럿창으로 띄워서 확인하는~
	function check() {

		let korCity = document.getElementsByName("city");	//name으로 객체 찾기
		let alramCity = ""; // 빈값으로 초기화
		
		// 배열과 for문은 항상 함께 한다 
		for(let i =0; i<korCity.length;i++){
			if(korCity[i].checked ==true) { // 값이 체크 되었는지 아닌지 확인
				alramCity = korCity[i];	//korCity[i]가 체크되어있으면 그 값을 alramCity에 옮겨 담는다
			}			
		}
		
		if(alramCity ==""){
			alert("선택한 값이 없어요");
		}else{
			alert("선택한 도시는?"+alramCity.value);
		}
		
		return;
	}

</script>

	<form action="">
		<input type="radio" name="city" value="서울" checked> 서울입니다 
		<input type="radio" name="city" value="부산"> 부산입니다 
		<input type="radio" name="city" value="춘천"> 춘천입니다
		<input type = "button" value = "클릭" onclick="check();">

	</form>

</body>
</html>