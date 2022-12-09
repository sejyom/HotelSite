<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*, java.text.*"%>

<!DOCTYPE html>
<html>
<head>
<title>영수증</title>
</head>
<body>
<%
String start = (String)session.getAttribute("resv_start");
String end = (String)session.getAttribute("resv_end");
request.setAttribute("start", start);
request.setAttribute("end", end);

//db테스트를 위해 임의로 지정한 user
/* session.setAttribute("userid","user1"); */
%>

<% 
RoomDTO rinfo= (RoomDTO)session.getAttribute("rinfo");
SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
Date sDate = format.parse(start);
Date eDate = format.parse(end);
long cal = sDate.getTime() - eDate.getTime();
long days = cal/(24*60*60*1000);
days = Math.abs(days);
long sum = rinfo.getRoomCost()*days;
session.setAttribute("pcost", sum);

DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dateTime = dateFormat.format(new Date());
session.setAttribute("now", dateTime);
%>
<form action="pinsert.do" method="post">
	<h2>결제할 룸: <%=rinfo.getRoomId()%></h2>
	<img src="img/<%=rinfo.getRoomId()%>.PNG" height="100" width="100">
	<p>시작일: <%=start%></p>
	<p>종료일: <%=end%></p>
	<p>총 금액: <%=rinfo.getRoomCost() %> * 일수<%=days %> = <%=sum %></p>
	결제 수단을 선택하세요 :
	<select id="mean" name="mean">
			<option value="sinhan" selected>신한카드</option>
			<option value="kb">국민카드</option>
			<option value="kakao">카카오페이</option>
			<option value="tos">토스페이</option>
	</select>
	약관동의 체크...
	<input type="submit" value="결제하기" onclick="alert('결제가 완료되었습니다!')"/>
	<button onclick="index.jsp?addr=reser.jsp">예약 페이지로 돌아가기</button>
</form>	
</body>
</html>