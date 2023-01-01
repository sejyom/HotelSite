<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.*"%>
<%
	String id = (String)session.getAttribute("id");
	String cont = "myInformation.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<h2 style="color:#EB6952">내 정보</h2>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<tr>
					<th style="background-color: #FFE8D2; text-align: center; height:45px;">아이디</th>
					<th style="background-color: #FFE8D2; text-align: center;">비밀번호</th>
					<th style="background-color: #FFE8D2; text-align: center;">이름</th>
					<th style="background-color: #FFE8D2; text-align: center;">이메일</th>
					<th style="background-color: #FFE8D2; text-align: center;">휴대전화</th>
					<th style="background-color: #FFE8D2; text-align: center;">주소</th>
				</tr>
			

			<%
				MemberVO vo = new MemberVO();
				MemberDAO dao = new MemberDAO();
				vo = dao.selectMember(id);
				
				
				if(vo != null){
			%>
				<tr>
					<td><%= vo.getId() %></td>
					<td><%= vo.getPassword() %></td>
					<td><%= vo.getName() %></td>
					<td><%= vo.getEmail() %></td>
					<td><%= vo.getPhoneNumber() %></td>
					<td><%= vo.getAddress() %></td>
				</tr>
			</table>
<%
	}
%>
		</div>
	</div>
</section>
</body>
</html>