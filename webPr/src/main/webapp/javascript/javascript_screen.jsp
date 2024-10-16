<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>screen객체 스크린 장치에 관한 정보 출력</title>
<script>
function printScreen() {
	let text = "availHeight:".fontcolor('blue') + screen.availHeight + "<br>"; // 작업표시줄 등을 제외하고 브라우저가 출력 가능한 영역의 높이
		text += "availWidth:".fontcolor('blue') + screen.availWidth + "<br>"; // 작업표시줄 등을 제외하고 브라우저가 출력 가능한 영역의 폭
		text += "colorDepth:".fontcolor('blue') + screen.colorDepth + "<br>"; // 한 픽셀의 색을 나타내기 위해 사용되는 비트 수 > 이거 사용을 권함
		text += "pixelDepth:".fontcolor('blue')+ screen.pixelDepth + "<br>"; // 한 픽셀의 색을 나타내기 위해 사용되는 비트 수
		text += "height:".fontcolor('blue') + screen.height + "<br>"; // 스크린의 수직 픽셀 수
		text += "width:".fontcolor('blue') + screen.width + "<br>"; // 스크린의 수평 픽셀 수

	document.getElementById("div").innerHTML = text;
}
</script>
</head>
<body onload="printScreen()">
<h3>스크린 장치에 관한 정보</h3>
<hr>
<div id="div"></div>
</body>
</html>
