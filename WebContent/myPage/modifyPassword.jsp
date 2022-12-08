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
<style>
	.modifyPassword { 
	width: 410px; position: absolute; 
	left:50%; top:50%; transform: translate(-50%, -50%);}
	
	.modifyPassword h2{ 
	padding: 0 0 20px; 
	font-size:30px; color:#EB6952; text-align:center;
	line-height:1; font-size:30px; color: #EB6952;}

	.modifyPassword { padding: 500px 0 0 100px;}
	.modifyPassword input { width:350px; height:46px; box-sizing: bord-border-box; }
	.modifyPassword input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
	.modifyPassword button { width:357px; height:56px; background:#EB6952; font-size:20px; color:#fff; }	
		
</style>
</head>
<body>
<header>
	<%@ include file="../top.jsp"%>
</header>
	
	<div id="content"> <!-- 네브바 잡아주기 -->
		<jsp:include page="userNav.jsp" flush="true">
			<jsp:param name="id" value="<%= id %>"/>
		</jsp:include>
	</div>
	
	<section class="modifyPassword" id="areaMain">
		<h2>비밀번호 변경</h2>
		<ul>
			<form action="../modifypwd" method="post">
			<input type="password" name="password" placeholder="현재 비밀번호"><br>
			<input type="password" name="new_password" placeholder="새 비밀번호"><br>
			<button type="submit">수정</button>
			<!-- 
			<input type="submit" value="수정">
			 -->
			</form>
		</ul>
	</section>	
<footer>
		<%@ include file="../footer.jsp"%>
</footer>
</body>
</html>