<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.footer {
	margin-left: 60px;
	margin-right: 60px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	text-align: center;
}
.bottom{
    color:black;
    text-decoration:none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<footer class="footer" style="margin-top: 30px; margin-bottom: 20px;">
<div class="item">
	<img src="img/gym.png" style="height: 60px; width: 60px;" /><br>
	헬스장	
</div>
	
<div>
	<img src="img/meeting.png" style="height: 60px; width:60px;" /><br>
	미팅룸
</div>

<div class="item">
	<img src="img/pet.png" style="height: 60px; width:60px;" /><br>
	반려동물 동반
</div>

<div class="item">
	<img src="img/wifi.png" style="height: 60px; width:60px;" /><br>
	와이파이 이용
</div>
</footer>
<br>
<br>
<br>
<footer class="footer">
<div class="item">
	<h4>CALL US</h4>
	<span>
	TEL : 82-2-1234-5678<br>
	FAX : 82-2-8765-4321
	</span>
</div>

<div class="item">
	<h4>COMPANY</h4>
	<span>
		세서시 호텔 주식회사<br>
		대표이사 : 김세정, 김서현, 문시원
	</span>
</div>

<div class="item">
	<h4>PRIVACY</h4>
	<span>
		<a href="index.jsp?addr=notice2.jsp" class="bottom">개인정보처리방침</a><br>
		<a href="index.jsp?addr=agreement.jsp" class="bottom">이용약관</a>
	</span>
</div>
</footer>

<div style="font-size: 15px; text-align: center; margin-top: 20px;">
Copyright@ SESEOSI HM CO.,LTD All Right Reserved.
</div>



</body>
</html>