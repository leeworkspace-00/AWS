<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>로그인 페이지</TITLE>
<style>
header {
	width: 100%;
	height: 100px;
	text-align: center;
	--background-color: yellow;
}

nav {
	width: 15%;
	height: 400px;
	float: left;
	--background-color: blue;
}

section {
	width: 70%;
	height: 400px;
	float: left;
	--background: olivedrab;
}

aside {
	width: 15%;
	height: 400px;
	float: left;
	--background: orange;
}

footer {
	width: 100%;
	height: 150px;
	clear: both;
	text-align: center;
	--background: plum;
}

tr {
	display: inline-block;
}

table {
	border: 5px solid gray;
}
</style>
</HEAD>
<BODY>
	<header>회원로그인페이지</header>
	<nav></nav>
	<section>
		<article>

			<form name="frm" action=".test0920_result.html" method="post">
				<table border=10 style="width: 800px;">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="memberId" maxlength="30"
							style="width: 100px;" value=""></td>

						<td>비밀번호</td>
						<td><input type="password" name="memberPwd" maxlength="30"
							style="width: 100px;" value=""></td>
					<tr>
						<td colspan=2 style="text-align: center;"><input
							type="submit" name="btn" value="로그인"></td>
					</tr>
				</table>
			</form>

		</article>
	</section>
	<aside></aside>
	<footer> made by lee. </footer>
</BODY>
</HTML>
