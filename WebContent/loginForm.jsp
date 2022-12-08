<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<a href="index.jsp">
<img src="img/logo_text01.png" style="height:70px; width:250px;" />
</a>
<section class="login">
<h2>로그인</h2>
<ul>
	<form method="post" action="signIn" accept-charset="UTF-8">
	<li><input type="text" name="id" placeholder="아이디" title="아이디 입력"></li>
	<li><input type="password" name="password" placeholder="비밀번호" title="비밀번호 입력"></li>
	<li><button type="submit">로그인</button></li>
	<!-- 
	<input type="submit" value="로그인">
	 -->
</ul>
</form> 
</section>
</body>
</html>