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
   border-width: medium;
   border-style: 
}

#nav_bar {
   margin: 70px 100px 70px 100px;
}
.nav_logo {
   display: flex;
   justify-content: center;
   align-item: center;
}
.depth1 a {
   color: white;
}
ul {
   list-style: none;
}
#depth0 {
   display: flex;
   flex-direction: row;
   justify-content: space-between;
}
ul > .nav_title > a {
   display: block;
   background: #FF6600;
   text-align: center;
   color: white;

}
#depth0 > .nav_title > .depth1 {
   display: none;
}
#depth0 > .nav_title:hover .depth1 {
   display: block;
   padding-left: 0;
   background-color: #ff9966;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="header">
   <span>
      <a href="faq.jsp" class="faq">FAQ</a>
   </span>
   <span>
      <a href="loginForm.jsp">로그인</a> | 
      <a href="joinForm.jsp">회원가입</a> | 
      <a href="loginForm.jsp">마이페이지</a>
   </span>
</header>
<br>
<br>

<div class="nav_logo">
<a href="index.jsp">
<img src="img/logo_img.png"style="width: 150px; height: 150px;" />
<img src="img/logo_text.png"style="height: 150px; width: 450px;" />
</a>
</div>
<br>
<br>
<ul id="depth0">

   <li class="nav_title"><a href="#">SSS호텔</a>
      <ul class="depth1">
      <li><a href="hotelIntro.jsp">호텔소개</a></li>
      <li><a href="notice.jsp">공지사항</a></li>
      <li><a href="">오시는 길</a></li>
      </ul>
   </li>
      
   <li class="nav_title"><a href="#">객실소개</a>
      <ul class="depth1">
      <li><a href="">객실</a></li>
      <li><a href="">객실예약</a></li>
      </ul>
   </li>
      
   <li class="nav_title"><a href="#">편의시설</a>
      <ul class="depth1">
      <li><a href="boo.jsp">편의시설 안내</a></li>
      </ul>
   </li>
   
   <li class="nav_title"><a href="#">문의하기</a>
      <ul class="depth1">
      <li><a href="qna.jsp">문의하기</a></li>
      <li><a href="qna.jsp">내 문의</a></li>
      <li><a href="faq.jsp">자주하는 질문</a></li>
      </ul>
   </li>   
</ul>

</body>
</html>