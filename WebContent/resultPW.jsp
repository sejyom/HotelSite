<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String password = request.getParameter("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.resultPW { 
	width: 410px; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
	.resultPW button { width:100%; height:52px; background:#EB6952; font-size:20px; color:#fff; }
</style>
</head>
<body>
<section class="resultPW">
	<div>
		<h3 style="text-align:center">회원님의 비밀번호는 <%= password %></span>입니다.<br></h3>
		&nbsp;
		<button type="submit" onclick="location.href='loginForm.jsp';" style="border: 0; outline: 0;">로그인</button>
		&nbsp;
		<button type="submit" onclick="location.href='index.jsp';" style="border: 0; outline: 0;">메인으로</button>
	</div>
</section>
</body>
</html>