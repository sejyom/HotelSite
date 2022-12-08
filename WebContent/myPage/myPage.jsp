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
<link href="myPage.css">
</head>
<body>
	<%
	String cont = request.getParameter("con");
	if (cont == null)
		cont = "modifyProfile.jsp";
	%>

	<header>
		<%@ include file="../top.jsp"%>
	</header>
	
	<div id="content">
		<jsp:include page="userNav.jsp" flush="true">
			<jsp:param name="id" value="<%= id %>"/>
		</jsp:include>
	</div>
	
	<footer>
		<jsp:include page="../footer.jsp" />
	</footer>
</body>
</html>