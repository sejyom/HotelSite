<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>문의하기 작성폼</title>
<br>
<h4>문의하기</h4>
</head>
<body>

	<!-- 글 작성 양식 -->
	<div class="container">
		<div class="row">
			<form method="post">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2" style="background-color: #eeeeee; text-align: center;">문의사항</th>
						</tr>
				</thead>
					<tbody>
						<table border="1" width=950 bordercolor="gray" cellspacing="2">
      				    <form action="writeTable.jsp" method="post">
            			<tr>
               			 	<th>유형</th>
			                <td><input type="text" class="form-control"></td>
			            </tr>
			            <tr>
               			 	<th>제목</th>
			                <td><input type="text" class="form-control"></td>
			            </tr>
			            <tr>
               			 	<th>내용</th>
			                <td><input type="text" class="form-control" style="height:100px;"></td>
			            </tr>
			            <tr>
               			 	<th>성명</th>
			                <td><input type="text" class="form-control" name="name"></td>
			            </tr>
			            <tr>
               			 	<th>이메일</th>
			                <td><input type="text" class="form-control" name="email"></td>
			            </tr>
			            <tr>
               			 	<th>휴대전화</th>
			                <td><input type="text" class="form-control" name="number"></td>
			            </tr>
					</tbody>
				</table>			
				<div class="text-center">
				<br>
				<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</form>
		</div>
	</div>
</body>
</html>