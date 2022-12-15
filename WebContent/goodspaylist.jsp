<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td>결제번호</td>
	<td>결제물품</td>
	<td>결제수량</td>
	<td>결제금액</td>
	<td>결제수단</td>
	<td>결제일시</td>
</tr>
<c:choose>
<c:when test="${empty gdpList }">
<tr>
	<td colspan="6" align="center">
	제품 구매 내역이 존재하지 않습니다.
	</td>
</tr>
</c:when>
<c:otherwise>
<c:forEach items="${gdpList}" var="gpl">
<tr>
	<td>${gpl.gspayId}</td>
	<td>${gpl.goodsId}</td>
	<td>${gpl.goodsQu}</td>
	<td>${gpl.gTotal}</td>
	<td>${gpl.gpayMean}</td>
	<td>${gpl.gpayDate}</td>
</tr>
</c:forEach>
</c:otherwise>
</c:choose>
</table>
</body>
</html>