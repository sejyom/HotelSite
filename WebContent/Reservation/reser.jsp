<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.util.*, Reservation.*"%>
<!DOCTYPE html>
<html>
<head>
<title>예약</title>
<link rel="stylesheet" href="imsi.css?ver0.3">
<script>
var popupX = (window.screen.width / 2) - (450 / 2);
var popupY= (window.screen.height / 2) - (550 / 2);

</script>
</head>
<body>
<%@include file="roommenu.jsp" %>
<section class="page">
	@SuppressWarnings("unchecked") <%@include file="rooms.jsp" %>	
</section>
</body>
</html>