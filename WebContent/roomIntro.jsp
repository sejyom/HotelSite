<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title="roomIntro.jsp";
	request.setAttribute("addr", title);
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>객실 소개</title>
	<style>		
		h2 { 
		font-size:30px; color:#EB6952; text-align:center;
		line-height:1; font-size:30px; color: #EB6952;
		color:#EB6952; padding: 30px;
		}
		.roomIntro{ 
			justify-content: center;
			text-align: center;
		 }
		.view { 
			padding-top:100px;
			padding-bottom:100px;
		 }
		.room_name { font-size:32px; font-weight:bold;}
		.room_text { font-size:17px;}
		.room_sub { font-size:15px; }
		.price { font-size:22px; font-weight:bold; }
	</style>
	
</head>
<body>
	<h2>객실 소개</h2> <br>	
<div class="roomIntro">	
	<div class="view">		
		<img src= "img/마운틴뷰1.PNG" class="room_img" width="470" height="300">
		<p class="room_name">MOUNTAIN 1</p><br>
	 	<p class="room_text">
	 	탁 트인 멋진 산의 절경을 한눈에 담을 수 있는 푸른 자연이 한눈에  <br>
	 	들어오는 탁 트인 뷰를 볼 수 있습니다. 또 자연을 바라보며 욕조에서  <br>
	 	즐기는 반신욕도 함께 즐겨보세요.</p> <br>
	 	<p class="room_sub">
	 	- 기준 인원 : 2명 <br>
	 	- 더블 배드 1개</p>
	 	<p class="price">
	 	230,000 KRW (1박)</p> 
	 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="마운틴뷰1" />
	 	</form>
	</div>
<hr style="border: solid 3px orange; width: 50%;">
	<div class="view">
			<img src= "img/마운틴뷰2.PNG" class="room_img" width="470" height="300">
		<div width="40%">
			<p class="room_name">MOUNTAIN 2</p><br>
		 	<p class="room_text">
		 	웅장한 산의 절경을 한눈에 담을 수 있는 SSS 호텔에서 가장 넓은 객  <br>
		 	실로 아늑한 거실과 더블 베드, 트윈 베드를 포함한 2개의 침실이 갖 <br>
		 	추어져 있으며, 다이닝 공간을 포함한 별도의 바 시설 또한 구비되어 <br>
		 	있습니다. 마운틴뷰 호텔에서 자연의 아름다움을 느껴보세요.</p> <br>
		 	<p class="room_sub">
		 	- 기준 인원 : 4명 <br>
		 	- 더블 배드 2개</p>
		 	<p class="price">
		 	420,000 KRW (1박)</p>
		 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="마운틴뷰2" />
	 	</form>
	 	</div>
	</div>
<hr style="border: solid 3px orange; width: 50%;">
	<div class="view">		
		<img src= "img/시티뷰1.PNG" class="room_img" width="470" height="300">
		<p class="room_name">CITY 1</p><br>
	 	<p class="room_text">
	 	6~8층에 위치한 시티뷰 스탠다드룸은 편안함과 쾌적함이 인상적인 최 <br>
	 	상의 휴식 환경을 제공합니다. 모던한 아름다움과 SSS 호텔 수준의 <br>
	 	고급 침구및 침대 그리고 고급 어메니티로 한 단계 업그레이드 된 <br>
	 	휴식을 경험해보세요.</p> <br>
	 	<p class="room_sub">
	 	- 기준 인원 : 2명 <br>
	 	- 싱글 배드 2개</p>
	 	<p class="price">
	 	190,000 KRW (1박)</p>
	 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="시티뷰1" />
	 	</form>
	</div>	
<hr style="border: solid 3px orange; width: 50%;">
	<div class="view">		
		<img src= "img/시티뷰2.PNG" class="room_img" width="470" height="300">
		<p class="room_name">CITY 2</p><br>
	 	<p class="room_text">
	 	15~17층 고층에 위치한 시티뷰 스위트룸은 SSS 호텔의 가장 높은 곳 <br>
	 	에서 서울 도시의 풍경을 볼 수 있으며,  밤에는 서울의 멋진 야경을 <br>
	 	즐길 수 있습니다. 모던하면서도 트랜디한 인테리어가 돋보이는 고급스<br>
	 	러움을 느껴보세요.</p> <br>
	 	<p class="room_sub">
	 	- 기준 인원 : 4명 <br>
	 	- 더블 킹 배드 2개</p>
	 	<p class="price">
	 	350,000 KRW (1박)</p>
	 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="시티뷰2" />
	 	</form>
	</div>	
<hr style="border: solid 3px orange; width: 50%;">
	<div class="view">		
		<img src= "img/한강뷰1.PNG" class="room_img" width="470" height="300">
		<p class="room_name">HANRIVER 1</p><br>
	 	<p class="room_text">
	 	SSS 호텔의 한강뷰 스위트룸은 한강이 연출하는 아름다운 뷰와 완벽한  <br>
	 	조화를 이룰 뿐 아니라 편안한 업무 공간과 인터넷 환경, 그리고 영화, <br>
	 	게임을 즐길 수 있는 엔터테인먼트 시설까지 다양하게 즐길 수 있습니다.<br>
	 	그리고 고급 어메니티로 한 단계 업그레이드 된 휴식을 경험해보세요.</p> <br>
	 	<p class="room_sub">
	 	- 기준 인원 : 2명 <br>
	 	- 싱글 배드 2개</p>
	 	<p class="price">
	 	250,000 KRW (1박)</p>
	 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="한강뷰1" />
	 	</form>
	</div>	
<hr style="border: solid 3px orange; width: 50%;">
	<div class="view">		
		<img src= "img/한강뷰2.PNG" class="room_img" width="470" height="300">
		<p class="room_name">HANRIVER 2</p><br>
	 	<p class="room_text">
	 	5~7층 고층에 위치한 한강뷰 스위트룸은 SSS호텔의 가장 아름다운 뷰입니다.  <br>
	 	스위트 룸은 침실과 거실이 나누어져 있으며 서울에서 동급 객실 중 가장 넓 <br>
	 	으며, 아름다운 한강 전망을 최고의 시설에서 감상하실 수 있습니다.</p> <br>
	 	<p class="room_sub">
	 	- 기준 인원 : 4명 <br>
	 	- 더블 킹 배드 2개</p>
	 	<p class="price">
	 	470,000 KRW (1박)</p>
	 	<form action="filterView" method="post">
	 		<input type="submit" value="리뷰보기" />
	 		<input type="hidden" name="name" value="한강뷰2" />
	 	</form>
	</div>	
</div>		
</body>
</html>