<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
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

<header style="height: 5%; ">

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
</header>

<section style="height: 70%;">
<%@ include file="image.jsp" %>
</section>

<footer style="margin-left: 200px; margin-right: 200px; height:10%; ">
<jsp:include page="footer.jsp" />
</footer>
</body>
</html>