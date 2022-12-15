<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.*"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>내 정보</h2>
<table>
	<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>
		<td>휴대전화</td>
		<td>주소</td>
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
</body>
</html>