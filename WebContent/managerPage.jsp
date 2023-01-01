<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String addr = "managerPage.jsp";
	String cont = request.getParameter("cont");
	if (cont == null)
		cont = "memberList";
%>
<!DOCTYPE html>
<html>
<head>
<style>
a {
	text-decoration: none;
}
#content {
	width: 100%;
	align: center;
}
.p{
	display: inline-block;
}
</style>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>


<body>
<div id="content">
		<div class="p">
			<jsp:include page="managerNav.jsp" flush="true" />

		</div>
		<div class="p" style="margin-left: 250px;">
			<jsp:include page="<%= cont %>" />
		</div>
	</div>
</body>
</html>