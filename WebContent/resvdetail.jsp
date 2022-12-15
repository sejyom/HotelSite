<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Reservation.*, java.util.*, java.time.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script>
<%
String st = (String)request.getParameter("success");
ReserveDTO resvdto = (ReserveDTO)session.getAttribute("resvinfo");
if(st!=null){
	%>
	alert("상태를 성공적으로 바꿨습니다!")
	<%
}
%>
</script>
<meta charset="UTF-8">
<title>예약 상세</title>
</head>
<body>
<div id='info'>
<img src="img/${srinfo.roomId}.PNG" width="300px">
<h2>결제룸 : ${srinfo.roomId}</h2>
<p>예약 상태 : ${resvinfo.resvState}</p>
<p>결제 가격 : ${payinfo.payTotal}</p>
<c:choose>
	<c:when test="${resvinfo.resvState == '예약중'}">
		<button onclick='location.href="resvch.do?resvid=${resvinfo.resvId}";'>예약취소</button>
	</c:when>
	<c:when test="${resvinfo.resvState == '이용완료'}">
		<button onclick="window.opener.location.href='sendParameter?hdn=insrt&rsv_id=${ resvinfo.resvId }',window.close();">리뷰쓰기</button>
	</c:when>
	<c:otherwise>
		<button onclick='window.opener.location.href="resvdel.do?pid=${payinfo.payId}&resvid=${resvinfo.resvId}",window.close();'>
		내역삭제</button>
	</c:otherwise>
</c:choose>
<button onclick="window.close()">돌아가기</button>
</div>
</body>
</html>