<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cont = request.getParameter("cont");
	String addr = request.getParameter("addr");
	if(addr == null){
		addr = "image.jsp";
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
 
 <script>
 /* 예약 페이지에서 날짜 선택 안했을 시 예외 처리 */
	<%
	String resu = request.getParameter("result");
	if(resu!=null&&resu.equals("derror")){
		
	   %>alert("날짜 형식이 잘못되었습니다.")<%   
	}
	if(resu!=null&&resu.equals("derror2")){
	   %>alert("날짜를 선택하셔야 합니다.")<%   
	}
	
	if(resu!=null&&resu.equals("ook")){
		%>alert("상품이 등록되었습니다.")<%	
	}
	if(resu!=null&&resu.equals("ddel")){
		%>alert("상품이 삭제되었습니다.")<%   
	}
	%>
 </script>
 
<body style="margin: 0px;">
<header style="height: 5%; ">
<%@ include file="top.jsp" %>
</header>

<section style="height: 70%;">
<jsp:include page="<%= addr %>" />
</section>

<footer style="margin: 100px 200px 0 200px; height:10%; ">
<%@ include file="footer.jsp" %>
</footer>
</body>
</html>