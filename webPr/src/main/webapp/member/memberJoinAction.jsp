<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="java.sql.Connection" %> --%>
<%-- <%@ page import="java.sql.DriverManager" %> --%>
<%@ page import="java.sql.*" %>
<%@ include file = "/common/dbconn.jsp" %>
<%@ include file = "/common/function.jsp" %>
<%
	   String memberId = request.getParameter("memberId");
	   System.out.println("memberId값은?"+memberId);
	   //out.println("<br>");
	   String memberPwd = request.getParameter("memberPwd");
	   System.out.println("memberPwd?"+memberPwd);
	   //out.println("<br>");
	   String memberPwd2 = request.getParameter("memberPwd2");
	   System.out.println("memberPwd2?"+memberPwd2);
	   //out.println("<br>");
	   String memberName = request.getParameter("memberName");
	   System.out.println("memberName?"+memberName);
	   //out.println("<br>");
	   String memberEmail = request.getParameter("memberEmail");
	   System.out.println("memberEmail?"+memberEmail);
	   //out.println("<br>");
	   String memberPhone = request.getParameter("memberPhone");
	   System.out.println("memberPhone?"+memberPhone);
	   //out.println("<br>");
	   String memberAddr = request.getParameter("memberAddr");
	   System.out.println("memberAddr?"+memberAddr);
	   //out.println("<br>");
	   String memberGender = request.getParameter("memberGender");
	   System.out.println("memberGender?"+memberGender);
	   //out.println("<br>");
	   String memberBirth = request.getParameter("memberBirth");
	   System.out.println("memberBirth?"+memberBirth);
	   //out.println("<br>");
	   
	   String[] memberHobby = request.getParameterValues("memberHobby");
	   System.out.println("memberHobby"+memberHobby);
	   String memberInHobby="";
	   for(int i=0;i<memberHobby.length;i++){
	      memberInHobby = memberInHobby + memberHobby[i] + ",";
	      System.out.println("memberHobby?"+memberHobby[i]);      
	   }
// 1. jsp 프로그래밍 날코딩방식부터 함수화 객체화 방식
// 2. java/jsp 프로그래밍 model1,model2 MVC 방식으로 진화되는 방법
// 3. spring 프레임워크로 프로그래밍하는 방법 순서로  학습할 예정



// 객체안에는 많은 메소드가 있다
// 일단 createStatement메소드를 사용해서 쿼리작성

/*    String sql = "insert into member(memberid, memberpwd, membername, "
        + "membergender, memberbirth, memberaddr, memberphone, "
        + "memberemail, memberhobby) "
        + "values('" + memberId + "', '" + memberPwd + "', '" + memberName + "', "
        + "'" + memberGender + "', '" + memberBirth + "', '" + memberAddr + "', "
        + "'" + memberPhone + "', '" + memberEmail + "', '" + memberInHobby + "')";
   Statement stmt = conn.createStatement(); //쿼리 구문을 동작시키는 클래스 statement
   int value = stmt.executeUpdate(sql); */
   
  //PreparedStateMent 클래스는 메소드화 시켜서 사용함
  
  //매개변수의 인자값 대입해서 함수 호출
  int  value = memberInsert(conn,memberId,memberPwd, memberName,
	        memberGender, memberBirth, memberAddr, memberPhone,
	        memberEmail, memberInHobby);
  // >> value 값이 1 이면 입력 성공 0이면 입력 실패
  // 1 이면 성공했기 때문에 0이며면 다른페이지로 이동시키고 0이면 다시 회원가입 입력페이지로 이동
	
  String pageUrl ="";

  if(value == 1) { // index.jsp 파일은 web.xml 웹 설정파일에 기본 등록되어 있어서 생략이 가능
	  pageUrl = request.getContextPath()+ "/index.jsp"; //request.getContextPath() : 프로젝트이
	  //response.sendRedirect(pageUrl); // 전송방식 sendRedirect는 요청받으면 다시 그쪽으로 가라고 지시하는 방법이동시키는 메소드
	  
  }else{
	  pageUrl = request.getContextPath()+"/member/memberJoin.jsp";
	  //response.sendRedirect(pageUrl);
  }
			   
			   
			   
%>
	<script>
	document.location.href = "<%=pageUrl%>";
	</script>




    <%-- <script>
   //alert(<%//=value%>);
    </script> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberjoinAction</title>
</head>
<body>

</body>
</html>