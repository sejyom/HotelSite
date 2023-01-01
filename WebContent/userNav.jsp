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
	.userNav{ background-color: #FEDAC0; width: 200px; height: 500px; 
			margin-left:20px; margin-top:30px;}
	.page{ font-size:18px; color:black;
			margin-left:15px;}
	.sub{ color:black; text-decoration:none;}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="userNav">
	<div class="page"><br>
	<h5>내 정보</h5>
		<a href="index.jsp?addr=myPage.jsp" class="sub">내 정보 조회</a> <br>
		<a href="index.jsp?addr=myPage.jsp&cont=modifyProfile.jsp" class="sub">프로필 수정</a><br>
		<a href="index.jsp?addr=myPage.jsp&cont=modifyPassword.jsp" class="sub">비밀번호 변경</a><br>
		<a href="index.jsp?addr=myPage.jsp&cont=myInquiry.jsp" class="sub">문의 내역</a><br>
		<a href="index.jsp?addr=myPage.jsp&cont=withdrawal.jsp" class="sub">회원 탈퇴</a>
	</div>
	
	<div class="page">
	<h5>내역 확인</h5>
		<a href="index.jsp?addr=myPage.jsp&cont=reserlist.jsp" class="sub">예약 현황</a><br>
		<a href="index.jsp?addr=myPage.jsp&cont=goodspaylist.jsp" class="sub">구매 내역</a><br>
		<a href="myReviewList" class="sub">리뷰 확인</a>
	</div>
	
	<div class="page">
	<h5>쿠폰</h5>
		<a href="index.jsp?addr=myPage.jsp&cont=coupon.jsp" class="sub">쿠폰함</a><br>
		<a href="index.jsp?addr=myPage.jsp&cont=promotion.jsp" class="sub">프로모션</a><br>
	</div>
</section>	
</body>
</html>