<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Review.*, Review_Controller.*, java.util.*" %>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h2 style="color:#EB6952">리뷰</h2>
<div class="row">
<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
	<tr>
		<th style="background-color: #FFE8D2; text-align: center; height:45px;">예약번호</th>
		<th style="background-color: #FFE8D2; text-align: center;">아이디</th>
		<th style="background-color: #FFE8D2; text-align: center;">방 이름</th>
		<th style="background-color: #FFE8D2; text-align: center;">내용</th>
		<th style="background-color: #FFE8D2; text-align: center;">별점</th>
		<%
			if (id.equals("akxxkd")) {
		%>
		<th style="background-color: #FFE8D2; text-align: center;">삭제</th>
		<%
			}
		%>
	</tr>
<%
	@SuppressWarnings("unchecked") ArrayList<ReviewVO> reviewList = (ArrayList<ReviewVO>)session.getAttribute("filter");
		if (reviewList.size() > 0) {
		for (int i=0; i<reviewList.size(); i++) {
			ReviewVO rvVO = (ReviewVO)reviewList.get(i);
			%>
			<form method="post" action="sendParameter?hdn=dlt&rsv_id=<%= rvVO.getReserve_id() %>">
			<tr>
				<td><%= rvVO.getReserve_id() %></td>
				<td><%= rvVO.getUser_id() %>
				<td><%= rvVO.getRoom_id() %></td>
				<td><%= rvVO.getComment() %></td>
				<td><%= rvVO.getRating() + "점 / 5점" %></td>
				<%
				if (id.equals("akxxkd")) {
				%>
				<td><button type="submit">삭제하기</button></td>
				<%
				}
				%>
				</form>
			</tr>

			<%
		}
	} else {
	%>
	<td colspan="3" align="center">작성된 리뷰 내역이 없습니다.</td>
	</table>
	<%
	}
%>
</div>
</body>
</html>