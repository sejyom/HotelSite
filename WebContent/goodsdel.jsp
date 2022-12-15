<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품삭제</title>
</head>
<body>
<h2>삭제할 상품명을 정확히 입력해주세요.</h2>
<form action="gdel.do" method="post">
확인:<input type="text" name="gdid">
<input type="submit" value="삭제">
</form>
<button onclick=window.close()>취소</button>
</body>
</html>