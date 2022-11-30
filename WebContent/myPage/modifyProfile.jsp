<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
<form method="post" action="../modify">
변경할 이름 : <input type="text" name="name"><br>
변경할 이메일 : <input type="email" name="email"><br>
변경할 전화번호 : <input type="text" name="phoneNumber"><br> 
변경할 주소 : <input type="text" name="address" id="address" readonly><br>
<input type="submit" value="수정">
</form>
</body>
</html>