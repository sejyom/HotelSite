<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<h2>에러~~~~~~~~~</h2>
<%
if (hidden.equals("loginError")) {
%>
<script>
	alert("입력하신 정보와 일치하는 회원 정보가 없습니다.");
	history.back();
</script>
<%
} else if(hidden.equals("withdrawalError")){
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