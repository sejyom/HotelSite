<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.findID { 
	width: 410px; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
		
	.findID h2{ 
	padding: 0 0 20px; 
	font-size:30px; color:#EB6952; text-align:center;
	border-bottom: 2px solid #EB6952;
	line-height:1; font-size:30px; color: #EB6952;}	
	
	.findID input { width:400px; height:45px; box-sizing: bord-border-box; }
	.findID input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
	.findID button { width:100%; height:52px; background:#EB6952; font-size:20px; color:#fff; }

</style>
</head>
<body>
<section class="findID" id="areaMain">
<h2>아이디 찾기</h2>
	<div>
		<form action="findID" method="post">
		<input type="text" name="name" required placeholder="name : 홍길동">
		&nbsp;
		<input type="email" name="email" required placeholder="email : abcd@gmail.com">
		&nbsp;
		<button type="submit" style="border:0; outline: 0;">찾기</button>
		</form>
	</div>
</section>
</body>
</html>