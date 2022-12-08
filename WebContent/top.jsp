<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#header {
	display: flex;
	justify-content: space-between;
}
.faq {
	border-width: medium; border-style: 
}

#nav_bar {
	margin: 30px 100px 70px 100px;
}

.nav_logo {
	display: flex; justify-content: center;
	align-item: center;
}
.navbar1 a { /* 메뉴바 내부 글자 색*/
	color:#472012; font-size: 19px;
}
ul {
	list-style: none;
	border-top: solid 3px #EB6952; padding-top:10px;
	border-bottom: solid 3px #EB6952; padding-bottom:10px;
}
#navbar0 {
	display: flex; flex-direction: row;
	justify-content: space-around;
	
}
ul > .nav_title > a { /* 메뉴바 타이틀 */
	display: block;
	text-align: center; color: black; 
	font-size: 23px; font-weight:bolder;
}

#navbar0 > .nav_title > .navbar1 {
	display: none;
}

#navbar0 > .nav_title:hover .navbar1 {
	display: block; padding-left: 0;
	background-color: #FEDAC0;
	
}

.headline{
	background-color: #FEDAC0;
	width: 100%; height: 30px;
	text-decoration: none;
	font-size:19px;
}

li a:hover{
	color: #E04B00; /* 마우스 글자 색*/
	font-weight:normal; font-weight:bolder;
}

.menu { 
	width:5000px; height:3px; text-align:center; max-width: 100%;
	background-position: center; background-size: cover;
	background-color: #333333;color: white; position: absolute;z-index: 1;
     }
.navbar{ text-decoration:none;}
</style>

<meta charset="UTF-8">
</head>
<body>
<section class="headline">
	<header id="header">
		<span>
			<a href="faq.jsp" class="faq" style="color:black; text-decoration: none;" >FAQ</a>
		</span>
		<span>
			<a href="loginForm.jsp" style="color:black;">로그인</a> | 
			<a href="joinForm.jsp" style="color:black;">회원가입</a> | 
			<a href="loginForm.jsp" style="color:black;">마이페이지</a>
		</span>
	</header>
</section>
<br>
<br>

<div class="nav_logo">
	<a href="index.jsp">
	<img src="img/logo_img.png"style="width: 155px; height: 155px;" />
	<img src="img/logo_text01.png"style="height: 140px; width: 430px;" />
	</a>
</div>
<br>
<br>
<ul id="navbar0" >
	<li class="nav_title"><a href="#" class="navbar">SSS호텔</a>
		<ul class="navbar1">
		<li><a href="index.jsp?addr=hotelIntro.jsp" class="navbar" >호텔소개</a></li>
		<li><a href="index.jsp?addr=notice.jsp" class="navbar">공지사항</a></li>
		<li><a href="index.jsp?addr=promotion.jsp" class="navbar">프로모션</a></li>
		<li><a href="" class="navbar">오시는 길</a></li>
		</ul>
	</li>
		
	<li class="nav_title"><a href="#" class="navbar">객실소개</a>
		<ul class="navbar1">
		<li><a href="index.jsp?addr=roomIntro.jsp" class="navbar">객실</a></li>
		<li><a href="#" class="navbar">객실예약</a></li>
		</ul>
	</li>
		
	<li class="nav_title"><a href="#" class="navbar">편의시설</a>
		<ul class="navbar1">
		<li><a href="index.jsp?addr=boo.jsp" class="navbar">편의시설 안내</a></li>
		</ul>
	</li>
	
	<li class="nav_title"><a href="#" class="navbar">문의하기</a>
		<ul class="navbar1">
		<li><a href="index.jsp?addr=qna.jsp" class="navbar">문의하기</a></li>
		<li><a href="index.jsp?addr=qna.jsp" class="navbar">내 문의</a></li>
		<li><a href="index.jsp?addr=faq.jsp" class="navbar">자주하는 질문</a></li>
		</ul>
	</li>	
</ul>
</body>
</html>
