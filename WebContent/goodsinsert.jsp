<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
<form  action="gdin.do" method="post">
<h3>상품 추가</h3>
제품명:<input type="text" name="gdid"><br>
가  격 :<input type="text" name="gdcost"><br>
수  량 :<input type="text" name="gdqu"><br>
설  명 :	<br><textarea name="gdinfo" cols="50"></textarea><br>
<input type="submit" value="상품 추가">
</form>
<button onclick=window.close()>취소</button>
</body>
</html>