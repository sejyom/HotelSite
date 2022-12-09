<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.util.*, Reservation.*"%>
<!DOCTYPE html>
<html>
<head>
<title>예약</title>
<link rel="stylesheet" href="css/imsi.css?ver0.3">
<script>
var popupX = (window.screen.width / 2) - (450 / 2);
var popupY= (window.screen.height / 2) - (550 / 2);

<%
	String resu = request.getParameter("result");
	if(resu!=null&&resu.equals("derror")){
	   %>alert("날짜 형식이 잘못되었습니다.")<%   
	}
%>
</script>
</head>
<body>
<%@include file="roommenu.jsp" %>
<section class="page">
	<%@include file="rooms.jsp" %>	
</section>
</body>
</html>