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
<style>
	.userNav{ background-color: #FEDAC0;
				width: 200px; height: 500px; }
	.page{ font-size:18px; color:black;}
	.sub{ color:black; text-decoration:none;}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="userNav">
	<div id="areaSub" class="page">
	<h5>내 정보</h5>
		<a href="modifyProfile.jsp" class="sub">프로필 수정</a><br>
		<a href="modifyPassword.jsp" class="sub">비밀번호 변경</a><br>
		<a href="myInquiry.jsp" class="sub">문의 내역</a><br>
		<a href="withdrawal.jsp" class="sub">회원 탈퇴</a><br>
	</div>
	
	<div class="page">
	<h5>예약 확인/취소</h5>
		<a href="bookingRoom.jsp" class="sub">객실 예약</a><br>
		<a href="bookingFacility.jsp" class="sub">이용시설 예약</a><br>
	</div>
	
	<div class="page">
	<h5>쿠폰</h5>
		<a href="coupon.jsp" class="sub">쿠폰함</a><br>
		<a href="../promotion.jsp" class="sub">프로모션</a><br>
	</div>
</section>	
</body>
</html>