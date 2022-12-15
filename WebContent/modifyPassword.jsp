<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	String cont = "modifyProfile.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.modifyProfile { 
	width: 410px; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
		
	.modifyProfile h2{ 
	padding: 0 0 20px; 
	font-size:30px; color:#EB6952; text-align:center;
	border-bottom: 2px solid #EB6952;
	line-height:1; font-size:30px; color: #EB6952;}
	
	.modifyProfile { padding: 500px 0 0 100px;}
	.modifyProfile input { width:400px; height:40px; box-sizing: bord-border-box; }
	.modifyProfile input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
	.modifyProfile button { width:405px; height:45px; background:#EB6952; font-size:20px; color:#fff; }
</style>
</head>
<body>
<section class="modifyProfile" id="areaMain">	
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


<h2>프로필 수정</h2>
	<form method="post" action="modify">
	<input type="text" name="name"  placeholder="변경할 이름">
	&nbsp;
	<input type="email" name="email"  placeholder="변경할 이메일">
	&nbsp;
	<input type="text" name="phoneNumber"  placeholder="변경할 전화번호">
	&nbsp;
	<input type="text" name="address" id="address" readonly  placeholder="변경할 주소"><br>
	&nbsp;
	<button type="submit" style="border: 0; outline: 0;">수정</button>
	</form>
</section>
</body>
</html>