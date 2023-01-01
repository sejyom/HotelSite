<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.*, java.util.ArrayList" %>
<%
	request.setCharacterEncoding("UTF-8");
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
	<h2 style="color:#EB6952">회원 리스트</h2>
		<div class="container">
			<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd" >
				<tr align="center">
				<th style="background-color: #FFE8D2; text-align: center; height:45px;">아이디</th>
				<th style="background-color: #FFE8D2; text-align: center;">비밀번호</th>
				<th style="background-color: #FFE8D2; text-align: center;">이름</th>
				<th style="background-color: #FFE8D2; text-align: center;">이메일</th>
				<th style="background-color: #FFE8D2; text-align: center;">휴대전화</th>
				<th style="background-color: #FFE8D2; text-align: center;">주소</th>
				<th style="background-color: #FFE8D2; text-align: center;">회원삭제</th>
				</tr>
			<%
			
				@SuppressWarnings("unchecked") ArrayList<MemberVO> mem = (ArrayList<MemberVO>)session.getAttribute("memberList");
				if(mem != null){
					
				
				for(int i=0; i<mem.size(); i++) {
					MemberVO member = (MemberVO)mem.get(i);
			%>
				<tr>
					<td><%= member.getId() %></td>
					<td><%= member.getPassword() %></td>
					<td><%= member.getName() %></td>
					<td><%= member.getEmail() %></td>
					<td><%= member.getPhoneNumber() %></td>
					<td><%= member.getAddress() %></td>
					<td>
						<form action="delete" method="post">
							<input type="submit" value="회원삭제"></input>
							<input type="hidden" name="id" value="<%= member.getId() %>">
							
						</form>
					</td>
				</tr>
			<%
					}
				}
			%>
			</table>
		</div>
	</div>
</section>
</body>
</html>