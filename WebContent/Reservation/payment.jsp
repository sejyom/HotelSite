<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
<head>
<title>영수증</title>
</head>
<body>
<%
String start = (String)session.getAttribute("resv_start");
String end = (String)session.getAttribute("resv_end");
%>

<% 
	RoomDTO rinfo= (RoomDTO)session.getAttribute("rinfo");

	SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
	Date sDate = format.parse(start);
	Date eDate = format.parse(end);
	long cal = sDate.getTime() - eDate.getTime();
	long days = cal/(24*60*60*1000);
	days = Math.abs(days);
	
	long sum = Long.valueOf(rinfo.getRoomCost()) * days;
%>
	<h2>결제할 룸: <%=rinfo.getRoomId()%></h2>
	<img src="img/<%=rinfo.getRoomId()%>.PNG" height="100" width="100">
	<p>시작일: <%=start%></p>
	<p>종료일:<%=end%></p>
	<p>총 금액: <%=rinfo.getRoomCost() %> * 일수<%=days %> = <%=sum %></p>
	
	
<button onclick="alert('결제가 완료되었습니다!')">바로 결제하기</button>

</body>
</html>