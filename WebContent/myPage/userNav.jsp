<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	session.setAttribute("id", id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
<h5>내 정보</h5>
	<a href="modifyProfile.jsp">프로필 수정</a><br>
	<a href="modifyPassword.jsp">비밀번호 변경</a><br>
	<a href="myInquiry.jsp">문의 내역</a><br>
	<a href="withdrawal.jsp">회원 탈퇴</a><br>
</div>

<div>
<h5>예약 확인/취소</h5>
	<a href="bookingRoom.jsp">객실 예약</a><br>
	<a href="bookingFacility.jsp">이용시설 예약</a><br>
</div>

<div>
<h5>쿠폰</h5>
	<a href="coupon.jsp">쿠폰함</a><br>
	<a href="promotion.jsp">프로모션</a><br>
</div>

</body>
</html>