<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Review.*, Review_Controller.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center">
	<tr>
		<td>예약번호</td>
		<td>방 이름</td>
		<td>내용</td>
		<td>별점</td>
		<td>삭제</td>
	</tr>
<%
	@SuppressWarnings("unchecked") ArrayList<ReviewVO> allReview = (ArrayList<ReviewVO>)session.getAttribute("allReview");
	System.out.println("allReview" + allReview);
		if (allReview.size() > 0) {
		for (int i=0; i<allReview.size(); i++) {
			ReviewVO rvVO = (ReviewVO)allReview.get(i);
			%>
			<form method="post" action="sendParameter?hdn=dlt&rsv_id=<%= rvVO.getReserve_id() %>">
			<tr>
				<td><%= rvVO.getReserve_id() %></td>
				<td><%= rvVO.getRoom_id() %></td>
				<td><%= rvVO.getComment() %></td>
				<td><%= rvVO.getRating() + "점 / 5점" %></td>
				<td><button type="submit">삭제하기</button>
			</tr>
			</form>
			<%
		}
	} else {
	%>
	<td colspan="3">작성된 리뷰 내역이 없습니다.</td>
	</table>
	<%
	}
%>
</body>
</html>