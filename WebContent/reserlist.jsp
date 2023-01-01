<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cont = "reserlist.jsp";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<style>
		h2 { 
		font-size:30px; color:#EB6952; text-align:center;
		line-height:1; font-size:30px; color: #EB6952; padding: 30px;
		}
		.table{ width: 850px; height: 170px; margin:auto;} 
		.row {padding-bottom:100px;}
	</style>
<script>
<%
String st = (String)request.getParameter("do");
if(st!=null&&st.equals("del")){
	%>
	alert("내역을 성공적으로 삭제했습니다!")
	<%
}
%>
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id="areaMain">
	<h2 style="color:#EB6952">예약 현황</h2>
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<tr>
					<th style="background-color: #FFE8D2; text-align: center; height:45px;">예약번호</th>
					<th style="background-color: #FFE8D2; text-align: center;">가격</th>
					<th style="background-color: #FFE8D2; text-align: center;">결제일시</th>
					<th style="background-color: #FFE8D2; text-align: center;">결제한룸</th>
					<th style="background-color: #FFE8D2; text-align: center;">체크인</th>
					<th style="background-color: #FFE8D2; text-align: center;">체크아웃</th>
					<th style="background-color: #FFE8D2; text-align: center;">상태</th>
					<th style="background-color: #FFE8D2; text-align: center;">상세</th>

					</tr>
				<c:choose>
					<c:when test="${ empty paylist }">
					<tr>
						<td colspan="7" align="center">
						예약 내역이 없습니다.
						</td>
					</tr>
					</c:when>
					<c:otherwise>
					<c:forEach items="${paylist}" var="list" varStatus="status" > 
					<tr>
							<td>${list.payId}</td>
							<td>${list.payTotal}</td>
							<td>${list.payDate}</td>
							<td>${resvlist[status.index].roomId}</td>
							<td>${resvlist[status.index].resvStart}</td>
							<td>${resvlist[status.index].resvEnd}</td>
							<td>${resvlist[status.index].resvState}</td>
							<td><button onclick="window.open('resvinfo.do?pid=${list.payId}&resvid=${resvlist[status.index].resvId}&rid=${resvlist[status.index].roomId}'
							,'정보','width=450,height=550');">상세</button></td>
					</tr>
					</c:forEach>
					</c:otherwise>
				</c:choose>
				</table>

</body>
</html>