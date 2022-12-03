<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%
	String hidden = request.getParameter("hidden");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if (hidden.equals("loginError")) {
%>
<script>
	alert("입력하신 정보와 일치하는 회원 정보가 없습니다.");
	history.back();
</script>
<%
} else if (hidden.equals("withdrawalError") || hidden.equals("modifyPassword")) {
%>
<script>
	alert("비밀번호를 확인해 주세요.");
	history.back();
</script>
<%
}
%>
<%-- <%
	response.sendRedirect("myPage/withdrawal.jsp");
%> --%>
</body>
</html>