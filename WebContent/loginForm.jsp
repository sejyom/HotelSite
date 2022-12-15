<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styling.css" rel="stylesheet">
</head>
<body>
<a href="index.jsp">
<img src="img/logo_text01.png" style="height:70px; width:250px;" />
</a>
<section class="login">
<h2>로그인</h2>
<ul>
	<form method="post" action="signIn" accept-charset="UTF-8">
	&nbsp;
	<li><input type="text" name="id" placeholder="id" title="아이디 입력" required></li>
	<li><input type="password" name="password" placeholder="password" title="비밀번호 입력" required></li>
	<li><button type="submit" style="border: 0; outline: 0;">로그인</button></li>
	</form>
	<button type="submit" onclick="location.href='findID.jsp';" style="border: 0; outline: 0;">아이디 찾기</button>
	&nbsp;
	<button type="submit" onclick="location.href='findPW.jsp';" style="border: 0; outline: 0;">비밀번호 찾기</button>
</ul>

</section>
</body>
</html>