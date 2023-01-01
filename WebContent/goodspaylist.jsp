<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		h2 { 
		font-size:30px; color:#EB6952; text-align:center;
		line-height:1; font-size:30px; color: #EB6952; padding: 30px;
		}
		.table{ width: 850px; height: 80px; margin:auto;} 
		.row {padding-bottom:100px;}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 style="color:#EB6952">구매 내역</h2> <br>
<div class="row">
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
	<tr>
		<th style="background-color: #FFE8D2; text-align: center; height:25px;">결제번호</th>
		<th style="background-color: #FFE8D2; text-align: center;">결제물품</th>
		<th style="background-color: #FFE8D2; text-align: center;">결제수량</th>
		<th style="background-color: #FFE8D2; text-align: center;">결제금액</th>
		<th style="background-color: #FFE8D2; text-align: center;">결제수단</th>
		<th style="background-color: #FFE8D2; text-align: center;">결제일시</th>
	</tr>
	<tbody>
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
	</tbody>
	</table>
</div>
</body>
</html>