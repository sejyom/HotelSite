<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styling.css" rel="stylesheet">
</head>
<body>
<center>
<br>
<a href="index.jsp">
<img src="img/logo_text01.png" style="height:50px; width:150px;" /></center>
</a>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address").addEventListener("click", function(){ // 주소입력칸을 클릭하면
        // 카카오 지도 
        new daum.Postcode({
            oncomplete: function(data) { // 선택시 입력값 세팅
                document.getElementById("address").value = data.address; // 주소 넣기
                document.querySelector("input[name=address]").focus(); // 상세입력 포커싱
            }
        }).open();
    });
}
window.close();
</script>


<!-- <script>
function validatePassword() {
	var password = document.getElementById("password");
	var confirm_password = document.getElementById("confirm_password");
	if (password.value != confirm_password.value) {
		confirm_password.setCustomValidity("패스워드 불일치");
		confirm_password.reportValidity();
	} else {
		// password.value == confirm_password.value
		confirm_password.setCustomValidity("패스워드 일치");
		confirm_password.reportValidity();
	}
	
}
</script> -->
<!-- <script>
function test() {
	var password = document.getElementById("password").value;
	var confirm_password = document.getElementById("confirm_password").value;
	
	if(password != confirm_password) {
		alert("비밀번호 값이 서로 다릅니다. 다시 확인해주세요.");
		return false;
	} else {
		return true;
	}
}
</script> -->
<section class="join">
<h2>회원가입</h2>
<ul>
<form method="post" action="insert">
	아이디<br>
	<li><input type="text" name="id" required></li>
	비밀번호<br>
	<li><input type="password" name="password" id="password" required></li>
	<!-- required onchange="validatePassword()" -->
	<!-- 비밀번호 확인: <input type="password" id="confirm_password"><br> -->
	이름<br>
	<li><input type="text" name="name" required></li>
	이메일<br>
	<li><input type="email" name="email" required></li>
	전화번호<br>
	<li><input type="text" name="phoneNumber" required></li>
	<li>주소<br>
	<input type="text" name="address" id="address" readonly></li>
	<li><button type="submit" style="border: 0; outline: 0;">회원가입</button></li>
</ul>
</form>
</section>
</body>
</html>