<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String cont = "myInquiry.jsp";
%>
<!DOCTYPE html>       
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>FAQ 자주하는 질문</title>
	<style>
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
	<h2 style="color:#EB6952">문의내역</h2>
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #FFE8D2; text-align: center; height:45px;">번호</th>
							<th style="background-color: #FFE8D2; text-align: center;">답변여부</th>
							<th style="background-color: #FFE8D2; text-align: center;">내용</th>
							<th style="background-color: #FFE8D2; text-align: center;">등록일자</th>
						</tr>
					</thead>
					<tbody>
							<tr>
							<td>3</td>
							<td>답변예정</td>
							<td><a href="#" style="color: black; text-decoration:none;">호텔 카드 할인 관련 문의</a> </td> 
							<td>2022-12-11</td>
							</tr>
							
							<tr>
							<td>2</td>
							<td>답변예정</td>
							<td><a href="#" style="color: black; text-decoration:none;">호텔 피트니스 이용 문의</a> </td> 
							<td>2022-10-11</td>
							</tr>
							
							<tr>
							<td>1</td>
							<td>답변완료</td>
							<td><a href="#" style="color: black; text-decoration:none;">호텔 이용 기간을 연장하고 싶어요.</a> </td> 
							<td>2022-07-27</td>
							</tr>
						</tbody>
				</table>
			</div>
		</div>	
	</section>
</body>
</html>