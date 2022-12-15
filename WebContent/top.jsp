<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String id = (String) session.getAttribute("id");
   
     String manager = "0";
     String name = null;
     try {
         manager = (String)session.getAttribute("manager");
         name = (String)session.getAttribute("name");
     } catch (Exception e) {
        e.printStackTrace();
     }
%>  
<!DOCTYPE html>
<html>
<head>

<style>
#header {
   display: flex;
   justify-content: space-between;
}
.nav_logo{
   padding: 30px 15px;
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
   color:#472012; font-size: 19px;
}
ul {
   list-style: none;
   border-top: solid 3px #EB6952; padding-top:10px;
   border-bottom: solid 3px #EB6952; padding-bottom:10px;
}
#depth0 {
   display: flex;
   flex-direction: row;
   justify-content: space-around;
}
ul > .nav_title > a {
    display: block;
   text-align: center; color: black; 
   font-size: 23px; font-weight:bolder;

}
#depth0 > .nav_title > .depth1 {
   display: none;
}
#depth0 > .nav_title:hover .depth1 {
   display: block;
   padding-left: 0;
   background-color: #FEDAC0;
}
.headline{
   background-color: #FEDAC0;
   width: 100%; height: 30px;
   text-decoration: none;
   font-size:19px;
}
li a:hover{
   color: #E04B00; /* 마우스 글자 색 */
   font-weight:normal; font-weight:bolder;
}
.navbar1{ text-decoration:none;}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="headline">
<header id="header">
   <span>
      <a href="index.jsp?addr=faq.jsp" class="faq" style="color:black;">FAQ</a>
   </span>
   <span style="text-align: right;">
   <%
         if(name == null) {
            %>
            <a href="loginForm.jsp" style="color:black;">로그인</a>
            <a href="joinForm.jsp" style="color:black;">회원가입</a>
            <%
         } else {
            %>
            <a href="signOut" style="color:black;">로그아웃</a>
            <%
            if(manager.equals("0")) {
                // user
             %>
                <a href="index.jsp?addr=myPage.jsp" style="color:black;">마이페이지</a><br>
                <%= id + "님" %>
             <%
            } else {
                // manager
            %>
                <a href="index.jsp?addr=managerPage.jsp" style="color:black;">마이페이지</a><br>
                관리자님
         <%
            }
         }
   %>
   </span>
</header>
</section>
<div class="nav_logo" >
<a href="index.jsp">
<img src="img/logo_img.png" style="width: 150px; height: 150px;" />
<img src="img/logo_text01.png "style="height: 150px; width: 450px;" />
</a>
</div>
<ul id="depth0">

   <li class="nav_title"><a href="#">호텔안내</a>
      <ul class="depth1">
      <li><a href="index.jsp?addr=hotelIntro.jsp" class="navbar1">호텔소개</a></li>
      <li><a href="index.jsp?addr=notice.jsp" class="navbar1">공지사항</a></li>
      <li><a href="index.jsp?addr=boo.jsp" class="navbar1">편의시설 안내</a></li>
      <li><a href="index.jsp?addr=map.jsp" class="navbar1">오시는 길</a></li>
      </ul>
   </li>
      
   <li class="nav_title"><a href="#">객실</a>
      <ul class="depth1">
      <li><a href="index.jsp?addr=roomIntro.jsp" class="navbar1">객실소개</a></li>
      <li><a href="index.jsp?addr=reser.jsp" class="navbar1">객실예약</a></li>
      </ul>
   </li>
      
   <li class="nav_title"><a href="#">상품 및 프로모션</a>
      <ul class="depth1">
      <li><a href="index.jsp?addr=promotion.jsp" class="navbar1">프로모션</a></li>
      <li><a href="dslist.do" class="navbar1">상품</a></li>
      </ul>
   </li>
   
   <li class="nav_title"><a href="#">문의하기</a>
      <ul class="depth1">
      <li><a href="index.jsp?addr=qna.jsp" class="navbar1">문의하기</a></li>
      <li><a href="index.jsp?addr=myInquiry.jsp" class="navbar1">내 문의</a></li>
      <li><a href="index.jsp?addr=faq.jsp" class="navbar1">자주하는 질문</a></li>
      </ul>
   </li>   
</ul>

</body>
</html>