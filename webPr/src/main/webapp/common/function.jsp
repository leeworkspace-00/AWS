<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>



<%!// 어디서나 접근 가능 리턴타입 숫자형 메소드 타입과 같아야함
	public int memberInsert

	(Connection conn, String memberId, String memberPwd, String memberName, String memberGender, String memberBirth,
			String memberAddr, String memberPhone, String memberEmail, String memberInHobby) {
		int value = 0;// 메소드 지역변수 결과값을 담는다
		String sql = "";
		PreparedStatement pstmt = null; // 쿼리 구문클래스 선언
		try {
			sql = "insert into member(memberid, memberpwd, membername, "
					+ "membergender, memberbirth, memberaddr, memberphone, "
					+ "memberemail, memberhobby) values(?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId); // 문자형 메소드 사용
			pstmt.setString(2, memberPwd); // 숫자형 형식 setInt(번호, 값);
			pstmt.setString(3, memberName);
			pstmt.setString(4, memberGender);
			pstmt.setString(5, memberBirth);
			pstmt.setString(6, memberAddr);
			pstmt.setString(7, memberPhone);
			pstmt.setString(8, memberEmail);
			pstmt.setString(9, memberInHobby);
			value = pstmt.executeUpdate(); // 구문객체 실행하면 성공시 1, 실패시 0이 리턴됨

		} catch (Exception e) {
			e.printStackTrace();
		} finally { // try를 했던 catch를 했던 꼭 실행해야 하는 영역
			/* 객체 사라지게 하고 db 연결 끊기  */
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e) {

			}

		}

		return value;
	}// 메소드 만들기 끝
	%>