<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.MemberVO" %>
<jsp:useBean class="Member.MemberVO" id="regBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean class="Member.MemberDAO" id="regMgr" scope="session" />

<%
	request.setCharacterEncoding("UTF-8");
	MemberVO mem = new MemberVO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 리스트</h2>
<%-- <%	
	for (int i=0; i<regBean.length; i++) {

	}
%> --%>
</body>
</html>