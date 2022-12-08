<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="imsi.css?ver0.3">
<script>
const date = new Date();
const year = date.getFullYear();
const month = ('0' + (date.getMonth() + 1)).slice(-2);
const day = ('0' + date.getDate()).slice(-2);
const dateStr = year+'-'+month+'-'+day;
document.getElementById("day").min = dateStr;
</script>
</head>
<body>
<div class="filter">
<form method="get">
	<div class="child">[객실 필터]
	시작일 :
	<input type="date" id="day" name="startd" min="" max="2023-04-30" />
	종료일 :
	<input type="date" name="endd" min="" max="2023-04-30" />
	최대인원 :
		<select id="person" name="condp" onchange="changePerson()" >
			<option value="info">인원자유</option>
			<option value="small">2~3명</option>
			<option value="large">4~6명</option>
		</select>
	뷰 옵션 :
		<select id="view" name="condv" onchange="changeView()">
			<option value="info">뷰자유</option>
			<option value="city">시티뷰</option>
			<option value="ocean">오션뷰</option>
		</select>	
	</div>
</form>
</div>
</body>
</html>