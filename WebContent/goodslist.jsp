<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
<%
String resu = request.getParameter("st");
if(resu!=null&&resu.equals("del")){
	   %>opener.parent.location='index.jsp?addr=goodslist.jsp?st=ddel';
	   window.close();<%   
	}
if(resu!=null&&resu.equals("ok")){
	%>opener.parent.location='index.jsp?addr=goodslist.jsp&st=ook';
	window.close();<%	
}
%>
</script>
</head>
<body>
<%
	String userid = (String)session.getAttribute("id");
	if(userid == null){
		%>
		<jsp:forward page="index.jsp?addr=loginForm.jsp" />
	<%
	} else if(userid.equals("akxxkd")){
		   %>
		   <button onclick="window.open('goodsinsert.jsp','추가','width=450,height=550');">
		   상품 추가</button>
		   <button onclick="window.open('goodsdel.jsp','삭제','width=450,height=550');">
		   상품 삭제</button>
		   <%
		}
%>
<table>
<c:choose>
<c:when test="${empty gslist}">
	<tr>
	<td colspan="4" align="center">
	준비된 상품이 없습니다.
	</tr>
</c:when>
<c:otherwise>
<c:forEach items="${gslist}" var="list">
<tr>
	<td><img src="img/${list.goodsId}.png" width=150, height=150 ></td>
	<td><h2>${list.goodsId}</h2>
	가격 : ${list.goodsCost}
	<br>남은 수량 : ${list.goodsQu}
	<br>${list.goodsInfo}<br></td>
	<td>
	<br><button onclick="location.href='gschoice.do?gsid=${list.goodsId}'">구매하기</button></td>
</tr>
</c:forEach>
</c:otherwise>
</c:choose>
</table>


</body>
</html>