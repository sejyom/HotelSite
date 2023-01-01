<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String cont = "withdrawal.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{ 
	padding: 0 0 20px; 
	font-size:30px; color:#EB6952; text-align:center;
	border-bottom: 2px solid #EB6952;
	line-height:1; font-size:30px; color: #EB6952;}

	input { width:408px; height:40px; box-sizing: bord-border-box; }
	input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
	button { width:411px; height:47px; background:#EB6952; font-size:20px; color:#fff; }
	
	.withdrawal{
	width: 410px; position: absolute; left:50%; top:100%; 
	transform: translate(-50%, -50%);}

</style>
</head>
<body>
<section id="areaMain" class="withdrawal">
<div class="container">
	<div class="row">
	<h3 style="text-align:center"><%= id %>님의 정보 보호를 위해<br>
	비밀번호를 다시 한 번 확인합니다.</h3>
	<h2>회원 탈퇴</h2>
		<div>
			<form action="withdrawal" method="post" >		
			<input type="password" name="password" placeholder="password"><br>
			&nbsp;
			<button type="submit" style="border: 0; outline: 0;">탈퇴하기</button>
			</form>
		</div>	
	</div>
</div>	
</section>
</body>
</html>