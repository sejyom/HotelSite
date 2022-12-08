<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String room_id=request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<title>예약 물어보기</title>
<link rel="stylesheet" href="imsi.css?ver0.2">
</head>
<body>
<!-- 아이디만 받아오고 나머지는 DB에서 id에 맞는 값 select 해서 가져오기 -->
<div id="info">
	<h2><%=room_id %></h2>
	<div class="desc">
	<img src="img/시티뷰1.jpg">
	<p>이름 : 
	ㅇㅇ : 
	ㅇㅇ : </p>
	</div>
	<div class="desc">
	<button onclick="window.close()">취소</button>
	<button onclick="window.open('payment.jsp?id=<%= room_id %>');window.close()">결제하기</button>
	</div>
</div>
</body>
</html>