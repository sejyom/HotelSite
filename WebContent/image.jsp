<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<style>
		.slogan{
			padding: 0 200px 0 200px;
			display: flex;
			flex-direction: row;
			justify-content: space-between;
		}
		.sloganImg{
			padding: 0 25px 0 25px;
		}
	</style>
	
    <meta charset="UTF-8">
    <title>메인 이미지 슬라이드</title>
</head>
<section style="margin-top: 100px; margin-bottom: 100px;">
<script>
    var index = 0; 
    window.onload = function(){
        slideShow();
    }
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1")
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    index++;
    if (index > x.length) {
        index = 1;  
    }   
    x[index-1].style.display = "block";  
    setTimeout(slideShow, 4000);   //이미지 슬라이드 넘어가는 시간
 
}
</script>
</section>
<body>
	<center>
		<div style="padding-bottom: 20px;">
		  <img class="slide1" src="img/001.jpeg" height="500" width="1000">
		  <img class="slide1" src="img/002.jpeg" height="500" width="1000">
		  <img class="slide1" src="img/003.jpeg" height="500" width="1000">
		  <img class="slide1" src="img/004.jpeg" height="500" width="1000">
		</div>
		
		<div class="slogan">	
			<div class="sloganImg">
				<img src="img/slogan01.png" height="120" width="300">
			</div>
			
			<div class="sloganImg">		
				<img src="img/slogan02.png" height="120" width="300">
			</div>
			
			<div class="sloganImg">
				<img src="img/slogan03.png" height="120" width="300">
			</div>
		</div>	
	</center>   
</body>
</html>

