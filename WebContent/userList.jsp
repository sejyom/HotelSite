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
</head>
<body>
<h2>회원 리스트</h2>
<table>
	<tr align="center">
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>
		<td>휴대전화</td>
		<td>주소</td>
		<td>회원삭제</td>
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
</body>
</html>