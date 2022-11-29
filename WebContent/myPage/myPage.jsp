<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	out.println(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
<jsp:include page="userNav.jsp">
	<jsp:param name="id" value="<%= id %>"/>
</jsp:include>
</body>
</html>