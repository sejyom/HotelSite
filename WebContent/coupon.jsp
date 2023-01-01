<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cont = "coupon.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>쿠폰함</title>
<h2>쿠폰함</h2>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
	h2 { 
	font-size:30px; color:#EB6952; text-align:center;
	line-height:1; font-size:30px; color: #EB6952; padding: 30px;
	}
	.table{ width: 850px; height: 170px; margin:auto;} 
	
	.row {padding-bottom:100px;}
</style> 
</head>
<body>
	<section id="areaMain">
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #FFE8D2; text-align: center; height:45px;">번호</th>
						<th style="background-color: #FFE8D2; text-align: center;">사용처</th>
						<th style="background-color: #FFE8D2; text-align: center;">내용</th>
						<th style="background-color: #FFE8D2; text-align: center;">만료일자</th>
					</tr>
				</thead>
				<tbody>
						<tr>
						<td>1</td>
						<td>레스토랑</td>
						<td><a href="#">호텔 라운지바 무료 이용권</a> </td> 
						<td>2022-10-30</td>
						</tr>
						
						<tr>
						<td>2</td>
						<td>수영장</td>
						<td><a href="#">호텔 투숙 시 수영장 30% 쿠폰 증정</a> </td> 
						<td>2022-12-01</td>
						</tr>
						
						<tr>
						<td>3</td>
						<td>SSS호텔 기프트샵</td>
						<td><a href="#">SSS 호텔 볼펜 증정</a> </td> 
						<td>2022-12-11</td>
						</tr>
					</tbody>
			</table>
		</div>
	</div>
	</section>
</body>
</html>