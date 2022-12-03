<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
var popupX = (window.screen.width / 2) - (450 / 2);
var popupY= (window.screen.height / 2) - (550 / 2);
</script>
</head>
<body>

<div class="rooms">

	<% if(session.getAttribute("rlist")!=null){
		@SuppressWarnings("unchecked") ArrayList<RoomDTO> rlist= (ArrayList<RoomDTO>)session.getAttribute("rlist");
		for(int i=0;i<rlist.size();i++){ 
		RoomDTO rd=(RoomDTO)rlist.get(i); %>
	<div class="room">
	<h3><%=rd.getRoomId()%></h3>
	<img src="img/<%=rd.getRoomId()%>.PNG">
	<button onclick="window.open('rinfo.do?id=<%=rd.getRoomId()%>','정보','width=450,height=550');">
		자세히</button>
	</div>
	<%
		}if(rlist.size()==0){
			%><h2>죄송합니다. 맞는 객실이 없습니다.</h2><%
		}
	}%>
</div>			
</body>
</html>