<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="ctrlMem.jsp" accept-charset="UTF-8">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="password"><br>
<input type="submit" value="로그인">
<input type="hidden" name="hidden" value="signIn">
</form> 
</body>
</html>