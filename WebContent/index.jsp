
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<style>
#userId {
	text-align: right;
}
a {
	text-decoration: none;
}
</style>

<meta charset="UTF-8">
<title>SSS Hotel</title>
</head>

<body id="body">

<header style="height: 5%; ">

<%
	if (id!=null) {
%>
	<%@ include file="top2.jsp" %>
	<div id="userId">
		<%= name + "님" %>
	</div>
	
<% 		
	} else {
%>
	<%@ include file="top.jsp" %>
	
<%
	}
%>
</header>

<nav style="margin-left: 200px; margin-right: 200px; height: 15%; ">
<%@ include file="nav.jsp" %>
</nav>
<section style="height: 70%;">
<%@ include file="image.jsp" %>
</section>

<footer style="margin-left: 200px; margin-right: 200px; height:10%; ">
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>