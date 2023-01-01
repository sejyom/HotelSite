<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>룸 정보</title>
<link rel="stylesheet" href="css/imsi.css?ver0.2">
</head>
<body>
<div id="info">
<%
	RoomDTO rinfo= (RoomDTO)session.getAttribute("rinfo");
	%><h2><%=rinfo.getRoomId()%></h2>
	<div>
	<img src="img/<%=rinfo.getRoomId()%>.PNG"> <br>
	1일 비용 : <%=rinfo.getRoomCost() %> <br>
	뷰 : <%=rinfo.getRoomView() %> <br>
	최대 수용 인원 : <%=rinfo.getRoomPerson() %> <br>
	방 크기 : <%=rinfo.getRoomSize() %>	
	</div>
	
	<div class="desc">
	<button onclick="window.opener.location.href='rinfoP.do?id=<%=rinfo.getRoomId()%>';window.close()">예약하기</button>
	&nbsp;
	<button onclick="window.close()">취소</button>
	</div><%
%>
</div>
</body>
</html>