<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>문의하기</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>
<br>
<h4>Q&amp;A 문의하기</h4> 
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">답변여부</th>
						<th style="background-color: #eeeeee; text-align: center;">내용</th>
						<th style="background-color: #eeeeee; text-align: center;">아이디</th>
						<th style="background-color: #eeeeee; text-align: center;">등록일자</th>
					</tr>
				</thead>
				<tbody>
						<tr>
						<td>1</td>
						<td>답변완료</td>
						<td><a href="#">호텔 예약 날짜 변경</a> </td> 
						<td>web0707</td>
						<td>2022-10-30</td>
						</tr>
						
						<tr>
						<td>2</td>
						<td>답변완료</td>
						<td><a href="#">호텔 내 수영장 이용 시간</a> </td> 
						<td>sosi987</td>
						<td>2022-12-01</td>
						</tr>
						
						<tr>
						<td>3</td>
						<td>답변예정</td>
						<td><a href="#">카드 할인 관련 문의</a> </td> 
						<td>shshsh28</td>
						<td>2022-12-11</td>
						</tr>
					</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary pull-right">작성하기</a>
		</div>
	</div>
</body>
</html>