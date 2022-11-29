<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int isManager = (int)session.getAttribute("isManager");
	String p;
%>
<!DOCTYPE html>
<html>
<head>

<style>
#header {
	display: flex;
	justify-content: space-between;
}
.faq {
	border-width: medium;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header id="header">
<a href="faq.jsp" class="faq">FAQ</a>

<span>
<a href="ctrlMem.jsp?hidden=signOut" >로그아웃</a> | 
<%
	if (isManager == 1) {
		// manager
		p = "managerPage/managerPage.jsp";
	} else {
		// user
		p = "myPage/myPage.jsp";
	}
%>
<a href="<%= p %>">마이페이지</a>
</span>
</header>

<nav style="margin-left: 200px; margin-right: 200px; height: 15%; ">
</nav>
</body>
</html>