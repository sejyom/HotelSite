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
</head>
<body>
<div>

회원님의 비밀번호는 <span style="font-weight=bold;"><%= password %></span>입니다.<br>

<button type="submit" onclick="loginForm.jsp" style="border: 0; outline: 0;">로그인</button>
<button type="submit" onclick="index.jsp" style="border: 0; outline: 0;">메인으로</button>
</div>
</body>
</html>