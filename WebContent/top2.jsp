<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   String manager = (String)session.getAttribute("manager");
   String name = (String)session.getAttribute("name");
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
#userId {
   text-align: right;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header id="header">
<a href="faq.jsp" class="faq">FAQ</a>

<span>

<a href="signOut" >로그아웃</a> | 
<%
   if (manager.equals("1")) {
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

<div id="userId">
   <%= name + "님" %>
</div>

</body>
</html>