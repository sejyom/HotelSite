<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.findPW { 
	width: 410px; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
		
	.findPW h2{ 
	padding: 0 0 20px; 
	font-size:30px; color:#EB6952; text-align:center;
	border-bottom: 2px solid #EB6952;
	line-height:1; font-size:30px; color: #EB6952;}	
	
	.findPW input { width:400px; height:45px; box-sizing: bord-border-box; }
	.findPW input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
	.findPW button { width:100%; height:52px; background:#EB6952; font-size:20px; color:#fff; }

</style>
</head>
<body>
<section class="findPW" id="areaMain">
<h2>비밀번호 찾기</h2>
	<div>
		<form action="findPW" method="post">
		아이디 <input type="text" name="id" required placeholder="hong012">&nbsp;
		이름 <input type="text" name="name" required placeholder="홍길동"> &nbsp;
		이메일 <input type="email" name="email" required placeholder="abcd@gmail.com"> &nbsp;
		<button type="submit" style="border:0; outline: 0;">찾기</button>
		</form>
	</div>
</section>
</body>
</html>