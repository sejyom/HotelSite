<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h2 style="color:#EB6952">FAQ 자주하는 질문</h2> <br>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #FFE8D2; text-align: center; height:45px;">분류</th>
						<th style="background-color: #FFE8D2; text-align: center;">질문 및 답변</th>
						<th style="background-color: #FFE8D2; text-align: center;">등록일자</th>
						<th style="background-color: #FFE8D2; text-align: center;">조회</th>
					</tr>
				</thead>
				<tbody>
						<tr>
						<td>[객실]</td>
						<td><a href="index.jsp?addr=faq1.jsp" style="color:black; text-decoration:none;">
						인원 추가 시 이용요금에 대해서 알고 싶습니다.</a> </td> 
						<td>2022-10-30</td>
						<td>6</td>
						</tr>
						
						<tr>
						<td>[객실]</td>
						<td><a href="index.jsp?addr=faq2.jsp" style="color:black; text-decoration:none;">
						객실 내 세면도구는 세팅되어 있나요?</a> </td> 
						<td>2022-10-30</td>
						<td>10</td>
						</tr>
						
						<tr>
						<td>[레스토랑]</td>
						<td><a href="index.jsp?addr=faq3.jsp" style="color:black; text-decoration:none;">
						레스토랑 저녁 식사 이용에 대해 알려주세요.</a> </td>
						<td>2022-10-30</td>
						<td>5</td>
						</tr>
						
						<tr>
						<td>[예약취소]</td>
						<td><a href="index.jsp?addr=faq4.jsp" style="color:black; text-decoration:none;">
						예약완료 후 취소규정에 대해 알고 싶습니다.</a> </td> 
						<td>2022-10-30</td>
						<td>3</td>
						</tr>
					</tbody>
			</table>
		</div>
	</div>	
</body>
</html>