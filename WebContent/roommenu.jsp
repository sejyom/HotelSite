<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
String start = (String)session.getAttribute("resv_start");
String end = (String)session.getAttribute("resv_end");
%>
<link rel="stylesheet" href="css/imsi.css?ver0.3">
<script>
const date = new Date();
const year = date.getFullYear();
const month = ('0' + (date.getMonth() + 1)).slice(-2);
const day = ('0' + date.getDate()).slice(-2);
const dateStr = year+'-'+month+'-'+day;
<%
if(start==null){
	%>document.getElementById("day").min = dateStr;<%
}
%>
</script>
</head>
<body>
<div class="filter">
<form action="rlist.do" method="get" >
	<div class="child">[객실 필터]
	시작일 :
	<input type="date" id="day" value="<%=start%>" name="startd" min="<%=start%>" max="2023-04-30" />
	종료일 :
	<input type="date" name="endd" value="<%=end%>" min="<%=end%>" max="2023-04-30" />
	최대인원 :
		<select id="person" name="condp">
			<option value="0">인원자유</option>
			<option value="3">3명 이상</option>
			<option value="6">6명 이상</option>
		</select>
	뷰 옵션 :
		<select id="view" name="condv">
			<option value="info">뷰자유</option>
			<option value="mount">마운틴</option>
			<option value="city">시티뷰</option>
			<option value="ocean">오션뷰</option>
		</select>
		<input type="submit" value="검색하기"/>
	</div>
</form>
</div>
</body>
</html>