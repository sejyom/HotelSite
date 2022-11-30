<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 탈퇴</h2>
<h3><%= id %>님의 정보 보호를 위해 비밀번호를 다시 한 번 확인합니다.</h3>
<form action="../withdrawal" method="post">
비밀번호 입력 : <input type="password" name="password"><br>
<input type="submit" value="탈퇴하기">
</form>
</body>
</html>