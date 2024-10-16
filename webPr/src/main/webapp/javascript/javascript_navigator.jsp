<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>브라우저 정보 출력</title>
<style>
span {
	color: red;
}
div {
	border-color: yellowgreen;
	border-style: solid;
	padding: 5px;
}
</style>

<script>
	function printNavigator() {
		let text = "<span>appCodeName</span>: " + navigator.appCodeName
				+ "<br>"; //브라우저의 코드이름을 가진 문자열
		text += "<span>appName</span>: " + navigator.appName + "<br>"; // 브라우저 이름 문자열
		text += "<span>appVersion</span>: " + navigator.appVersion + "<br>"; // 브라우저의 플랫폼과 버전에관한 문자열
		text += "<span>platform</span>: " + navigator.platform + "<br>";// 운영체제 플렛폼의 이름
		text += "<span>product</span>: " + navigator.product + "<br>"; // 브라우저 엔진의 이름 
		text += "<span>userAgent</span>: " + navigator.userAgent + "<br>"; // 브라우저가 웹서버로 데이터를 전송할때 http헤더속의 user-agent필드에 저장하는 문자열로서 웹서버가 클라이언트를 인식하기 위한 목적
		text += "<span>vendor</span>: " + navigator.vendor + "<br>"; // 브라우저 제작회사의 이름 문자열 
		text += "<span>language</span>: " + navigator.language + "<br>"; // 브라우저 언어를 나타내는 문자열(영어: "en-US"."ko-KR" 
		text += "<span>onLine</span>: " + navigator.onLine + "<br>"; // 브라우저가 현재 온라인 작동중이면 true, 아니면 false
		text += "<span>cookieEnabled</span>: " + navigator.cookieEnabled + "<br>";// 브라우저에 쿠키를 사용할 수 있는 상태면 true, 아니면 false				
		text += "<span>javaEnabled()</span>:" + navigator.javaEnabled()	+ "<br>";			
		text += "<span>plugins.length</span>: " + navigator.plugins.length + "<br>";
				
		for (let j = 0; j < navigator.plugins.length; j++) {
			text += "plugins" + j + " : <blockquote>";
			text += navigator.plugins[j].name + "<br>";
			text += "<i>" + navigator.plugins[j].description + "</i><br>";
			text += navigator.plugins[j].filename + "</blockquote>";
		}

		// div 태그에 출력
		let div = document.getElementById("div");
		div.innerHTML = text;
	}
</script>
</head>
<body onload="printNavigator()">
	<h3>브라우저에 관한 정보 출력</h3>
	아래에 이 브라우저에 관한 여러 정보를 출력합니다.
	<hr>
	<p>
	<div id="div"></div>
</body>
</html>