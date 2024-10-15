<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkbox 연습하기</title>
</head>
<body>
<script>
//20241015  체크박스- 선택된 값의 합 나타내기
let sum = 0;	// 누적합을 담는 변수
	function calc(obj) {		// 인자값을 받을 매개변수(obj)를 만든다
		if(obj.checked) { // 체크박스를 누르면
			sum = sum +parseInt(obj.value);	//obj값의 value를 뽑아 숫자형으로 바꿔서 누적변수에 담는다
			// sum+=parseInt(obj.value);
						
		}else{ // 체크박스에서 체크를 풀으면 > 
			sum = sum -parseInt(obj.value); // 누적변수에서 value값 빼준다			
		}
	
	document.getElementById("sumtext").value = sum;
		return;
	}

</script>

<form>
	<input type = "checkbox" name = "cap" value = "10000" onclick = "calc(this);">모자 10000원
	<input type = "checkbox" name = "shose" value = "30000" onclick = "calc(this);">구두 30000원
	<input type = "checkbox" name = "bag" value = "80000" onclick = "calc(this);">가방 80000원
</form>

<input type = "text" id = "sumtext" value = "0">

</body>
</html>