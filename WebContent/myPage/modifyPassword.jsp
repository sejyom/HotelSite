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
<h2>비밀번호 변경</h2>
<form action="../modifypwd" method="post">
현재 비밀번호 : <input type="password" name="password" placeholder="현재 비밀번호"><br>
새 비밀번호 : <input type="password" name="new_password" placeholder="새 비밀번호"><br>
<input type="submit" value="수정">
<input type="hidden" name="hidden" value="modifyPassword">
</form>
</body>
</html>