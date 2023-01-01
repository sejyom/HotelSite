<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
	h2 { 
	font-size:30px; color:#EB6952; text-align:center;
	line-height:1; font-size:30px; color: #EB6952;
	}
	.table{ width: 850px; height: 170px; margin:auto; } 
	.row {padding-bottom:100px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<div style="padding: 30px 7px;">
	<h2>공지사항</h2>
</div>
</head>
<body>
<section id="content">
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #FFE8D2; text-align: center; height:45px;">번호</th>
						<th style="background-color: #FFE8D2; text-align: center;">제목</th>
						<th style="background-color: #FFE8D2; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
						<tr>
						<td>3</td>
						<td><a href="index.jsp?addr=notice3.jsp">SSH호텔 COVID 19 고객 정책</a> </td> 
						<td>2022-12-01</td>
						</tr>
						
						<tr>
						<td>2</td>
						<td><a href="index.jsp?addr=notice2.jsp">SSS호텔 개인정보처리방침 개정안내</a> </td> 
						<td>2022-06-01</td>
						</tr>
						
						<tr>
						<td>1</td>
						<td><a href="index.jsp?addr=notice1.jsp">호텔 체크 아웃시간 안내</a> </td> 
						<td>2022-03-11</td>
						</tr>
					</tbody>
			</table>
		</div>
	</div>
</section>
</body>
</html>