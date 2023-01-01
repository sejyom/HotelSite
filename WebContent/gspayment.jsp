<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.*, java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.goodsPayment{ margin: 40px 0 30px 40px;}
</style>
<meta charset="UTF-8">
<title>구매</title>
<script>
function cc(){
	alert("정말로 취소하시겠습니까?");
}
</script>

</head>


<%
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String dateTime = dateFormat.format(new Date());
session.setAttribute("now", dateTime);
%>
<body>
<div class="goodsPayment">
	<form action="gpayin.do" method="post">
	<h3>구매할 상품: ${gsinfo.goodsId}</h3>
	결제 예정 금액: ${gsinfo.goodsCost}<br>
	결제 수단을 선택하세요 :
		<select id="mean" name="mean">
				<option value="sinhan" selected>신한카드</option>
				<option value="kb">국민카드</option>
				<option value="kakao">카카오페이</option>
				<option value="tos">토스페이</option>
		</select><br><br>
	<br>
	<input type="submit" value="결제하기" onclick="alert('결제가 완료되었습니다!')"/>
	</form>
	<button onClick="location.href='dslist.do'">취소</button>
</div>
</body>
</html>