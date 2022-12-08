<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String payroom_id=request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<title>영수증</title>
</head>
<body>
<h2>결제할 룸 : <%=payroom_id%></h2>
<p>해당 룸 아이디에 맞는 정보</p>
<button onclick="alert('결제가 완료되었습니다!')">결제하기</button>
<!-- 누르면 결제테이블에 들어가게 -->
</body>
</html>