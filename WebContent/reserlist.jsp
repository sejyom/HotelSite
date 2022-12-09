<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cont = "reserlist.jsp";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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

<table>
	<tr>
		<td>예약번호</td>
		<td>가격</td>
		<td>결제일시</td>
		<td>결제한룸</td>
		<td>인</td>
		<td>아웃</td>
		<td>상태</td>
		<td>상세</td>
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