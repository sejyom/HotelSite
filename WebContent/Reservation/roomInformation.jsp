<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>룸 정보</title>
<link rel="stylesheet" href="imsi.css?ver0.2">
</head>
<body>
<div id="info">
<%
	RoomDTO rinfo= (RoomDTO)session.getAttribute("rinfo");
	%><h2><%=rinfo.getRoomId()%></h2>
	<div class="desc">
	<img src="img/<%=rinfo.getRoomId()%>.PNG">
	<p>1일 비용 : <%=rinfo.getRoomCost() %>
	뷰 : <%=rinfo.getRoomView() %>
	최대 수용 인원 : <%=rinfo.getRoomPerson() %>
	방 크기 : <%=rinfo.getRoomSize() %>
	</p>
	</div>
	<div class="desc">
	<button onclick="window.close()">취소</button>
	<button onclick="window.open('rinfoP.do?id=<%=rinfo.getRoomId()%>');window.close()">결제하기</button>
	</div><%
%>
</div>
</body>
</html>