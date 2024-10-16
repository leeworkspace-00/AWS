<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>history객체활용</title>
<!-- 20241016 -->
</head>
<body>
	<h3>history 객체 활용</h3>
<hr>
	<button onclick = "history.back()">back()</button> <!-- 버튼누르면 이전 페이지로 -->
	<button onclick = "history.forward()">forward()</button> <!-- 버튼누르면 앞 페이지로 -->
	<button onclick = "history.go(-1)">go(-1)</button> <!-- 버튼누르면 이전 페이지로 -->
<!-- 링크 누르면 네이버로 이동함 -->
	<a href = "http://naver.com">네이버이동</a> 

</body>
</html>