<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중간평가  로그인 페이지 연습하기</title>
<link href="../css/post.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1>로그인 페이지 연습창</h1>
<hr>
	<table>
		<tr>
			<th>ID</th>
			<td><input type = "text" name = "loginId" value="" placeholder="아이디를 입력해주세요" ></td>
			<td rowspan ="2">
				<input type = "submit" value="로그인">
			</td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type = "password" name = "loginPw" value="" placeholder="비밀번호를 입력해주세요" ></td>
			
		</tr>
		<tr>
            <td colspan="3">
            <input type="button" value="회원가입">
            <input type="button" value="ID/PW 찾기">
            </td>
        </tr>

	</table>



</body>
</html>