<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>
var popupX = (window.screen.width / 2) - (450 / 2);
var popupY= (window.screen.height / 2) - (550 / 2);
</script>
</head>
<body>

<div class="rooms">
	<div class="room">
	<h3>시티뷰1</h3>
	<img src="img/시티뷰1.jpg">
	<p>확인</p>
	<button onclick="window.open('roomInformation.jsp?id=시티뷰1','정보','width=450,height=550');">
	자세히</button>
	</div>
	<div class="room">
	<!-- 여기에 가져와서 반복 \ -->
		<h3>rd.roomId</h3>
		<img src="">
		<button onclick="window.open('roomInformation.jsp?id=시티뷰1','정보','width=450,height=550');">
		자세히</button>
	</div>
</div>			

</body>
</html>