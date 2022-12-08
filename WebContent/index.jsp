<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	/*
	String title = request.getParameter("title");
	*/
	String addr = request.getParameter("addr");
	if(addr==null){
		addr = "image.jsp";;
	}
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
<title>SSS Hotel</title>
</head>

<body id="body">
	<%
		if (id != null) {
	%>
		<%@ include file="top2.jsp" %>
	<% 		
		} else {
	%>
		<%@ include file="top.jsp" %>
		
	<%
		}
	%>

	<section id="content" style="height: 70%;">
	<br>
	<jsp:include page="<%=addr%>" />
	</section>
	<br>
	<footer style="margin-left: 200px; margin-right: 200px; height:10%; ">
	<%@ include file="footer.jsp" %>
	</footer>
</body>
</html>