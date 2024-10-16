<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bom객체로 타이머사용하기</title>
<!--이미지 위에 마우스를 올린 상태로 5초가 지나면 네이버에 연결하며, 5초 전에 이미지를 벗어나면 타이머를 해제하는 코드를 작성-->
</head>
<body onload = "startScroll(10);">
<img id = "img" src="../images/strawberry.png" onmouseover = "startTimer(5000);"  onmouseout = "cancelTimer();">

<button onclick = "window.open('./javascript_size.jsp','test','width = 300, height = 300')">javascript_size_window.open</button>


  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
  무<br>
  궁<br>
  화<br>
  꽃<br>
  이<br>
  피<br>
  었<br>
  습<br>
  니<br>
  다<br>
<!-- 자동스크롤 구현 -->
<a href = "http://localhost/webPr/javascript/javascript_history.jsp">이동</a>
  
<script>
//20241015
let timerID=null;
	function startTimer(time)  {
		timerID = setTimeout("load('http://naver.com')",time);
	}
	
	function load(url) {
		window.location.href = url;	// 이동한다 
	}
	
	function cancelTimer() {
		clearTimeout(timerID);
	}
	
	function startScroll(interval){
	 	setInterval("autoScroll();",interval);  
	}
	function autoScroll(){
		window.scrollBy(0,1);  //10픽셀씩 이동 
	}
	
	


</script>



</body>
</html>