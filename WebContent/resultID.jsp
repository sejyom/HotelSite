<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.resultID { 
	width: 410px; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
	.resultID button { width:100%; height:52px; background:#EB6952; font-size:20px; color:#fff; }
</style>
</head>
<body>
<section class="resultID">
	<div>
		<h3 style="text-align:center">회원님의 아이디는 <%= id %></span>입니다.</h3><br>
		<button type="submit" onclick="location.href='loginForm.jsp';" style="border: 0; outline: 0;">로그인</button>
		&nbsp;
		<button type="submit" onclick="location.href='findPW.jsp';" style="border: 0; outline: 0;">비밀번호 찾기</button>
		&nbsp; 
		<button type="submit" onclick="location.href='index.jsp';" style="border: 0; outline: 0;">메인으로</button>
	</div>
</section>
</body>
</html>