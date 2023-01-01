<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.MemberVO, Reservation.*, Review.*" %>
<%
	String addr = request.getParameter("addr");
%>
<!DOCTYPE html>
<html>
<head>
<style>
/* 별점 관련 */
#review {
	text-align: center;
}
#star fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    border: 0; /* 필드셋 테두리 제거 */
}
#star input[type=radio]{
    display: none; /* 라디오박스 감춤 */
}
#star label{
    font-size: 2em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}
/* 마우스 호버에 반응해서 별점 선택 */
#star label:hover{
    text-shadow: 0 0 0 #ff9999; /* 마우스 호버 */
}
#star label:hover ~ label{
    text-shadow: 0 0 0 #ff9999; /* 마우스 호버 뒤에오는 이모지들 */
}
#star fieldset legend{
    text-align: left;
}
/* 별점 선택 방향 맞추기 */
#star fieldset{ 
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}
#star input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #ff9999; /* 마우스 클릭 체크 */
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberVO mem = new MemberVO();
	ReserveDTO rsv = (ReserveDTO)session.getAttribute("rsvDTO");
	String user_id = (String)session.getAttribute("id");
	
%>

<table id="review">
<tr>
	<td>예약번호</td>
	<td>고객명</td>
	<td>예약일자</td>
	<td>이용하신 방</td>
	<td>별점</td>
</tr>
<form action="insert_review" method="post">
<tr>
<input type="hidden" name="user_id" value="<%= user_id %>" />
<input type="hidden" name="rsv_id" value="<%= rsv.getResvId() %>" />
<input type="hidden" name="room_id" value="<%= rsv.getRoomId() %>" />
	<td><%= rsv.getResvId() %>
	<td><%= user_id %></td>
	<td><%= rsv.getResvStart() %> ~ <%= rsv.getResvEnd() %></td>
	<td><%= rsv.getRoomId() %></td>
	
	<td>
	<span id="star">
	    <fieldset >
	        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
	        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
	        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
	        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
	        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
	    </fieldset>
	</span>
	</td>
</tr>
<tr>
	<td colspan="4"><textarea name="comment" cols="80" rows="15" required></textarea></td>
</tr>

</table>
<button type="submit">작성</button>
</form>
</body>
</html>