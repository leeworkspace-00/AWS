<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윈도우 사이즈 조절하기</title>
</head>
<body>
	<h3>윈도우 위치와 크기조절</h3>
	

		<button onclick = "window.moveBy(-10,0);">left</button>
		<button onclick = "window.moveBy(10,0);">right</button>
		<button onclick = "self.moveBy(0,-10);">up</button>
		<button onclick = "moveBy(0,10);">down</button>
		<button onclick = "resizeBy(10,10);">+</button>
		<button onclick = "resizeBy(-10,-10);">-</button>



</body>
</html>