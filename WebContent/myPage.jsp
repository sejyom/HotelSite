<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String addr = "myPage.jsp";
	String cont = request.getParameter("cont");
	if (cont == null)
		cont = "myInformation.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<style>
a {
	text-decoration: none;
}
.myContent{
	display: inline-block; overflow:hidden; height:auto;
}
</style>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
	<section class="myPage">
	<div id="content"  style="display: inline-block">
		<jsp:include page="userNav.jsp" flush="true">
			<jsp:param name="id" value="<%= id %>" />
		</jsp:include>
	</div>	
	
	<div id="areaMain" class="myContent">
		<jsp:include page="<%= cont %>" />
	</div>
	
	</section>
</body>
</html>