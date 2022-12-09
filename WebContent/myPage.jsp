<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String addr = "myPage.jsp";
	String cont = request.getParameter("cont");
	if (cont == null)
		cont = "modifyProfile.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<style>
a {
	text-decoration: none;
}
</style>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link href="myPage.css">
</head>
<body>
	
	<div id="content">
		<jsp:include page="userNav.jsp" flush="true">
			<jsp:param name="id" value="<%= id %>" />
		</jsp:include>
		<jsp:include page="<%= cont %>" />
	</div>
	
</body>
</html>