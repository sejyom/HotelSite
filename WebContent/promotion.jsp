<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cont = "promotion.jsp";
%>
<!DOCTYPE html>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>프로모션</title>
	<style>
		h2 { 
		font-size:30px; color:#EB6952; text-align:center;
		line-height:1; font-size:30px; color: #EB6952; color:#EB6952; padding: 30px;
		}
		.table{ width: 850px; height: 170px; margin:auto; } 
		.row {padding-bottom:100px;}
	</style>
</head>
<body>
	<section id="areaMain">
	<h2 style="color:#EB6952">프로모션</h2>
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #FFE8D2; text-align: center; height:45px;">분류</th>
							<th style="background-color: #FFE8D2; text-align: center;">번호</th>
							<th style="background-color: #FFE8D2; text-align: center;">프로모션</th>
							<th style="background-color: #FFE8D2; text-align: center;">진행</th>
							<th style="background-color: #FFE8D2; text-align: center;">기간</th>
						</tr>
					</thead>
					<tbody>
							<tr>
							<td>[할인]</td>
							<td>3</td>
							<td>2023 수험생 할인 패키지</td> 
							<td>진행중</td>
							<td>2022-11-30 ~ 2022-12-31</td>
							</tr>
							
							<tr>
							<td>[할인]</td>
							<td>2</td>
							<td>온 가족 호캉스 프로모션</td> 
							<td>종료</td>
							<td>2022-10-02 ~ 2022-11-24</td>
							</tr>
							
							<tr>
							<td>[할인]</td>
							<td>1</td>
							<td>조식, 수영장 2인권 할인 프로모션</td> 
							<td>종료</td>
							<td>2022-07-20 ~ 2022-09-20</td>
							</tr>
							
						</tbody>
				</table>
			</div>
		</div>
	</section>	
</body>
</html>