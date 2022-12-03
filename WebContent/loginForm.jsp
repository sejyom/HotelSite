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
<img src="img/logo_text.png" style="height:70px; width:250px;" />
</a>
<section class="login">
<h2>로그인</h2>
<form method="post" action="signIn" accept-charset="UTF-8">
	<ul>
	<li><input type="text" name="id" placeholder="id"></li>
	<li><input type="password" name="password" placeholder="password"></li>
	<li><button type="submit">로그인</button></li>
	</ul> 
</form>

</section>
</body>
</html>