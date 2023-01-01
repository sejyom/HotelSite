<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cont = "modifyPassword.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>   
   h2{ 
   padding: 0 0 20px; 
   font-size:30px; color:#EB6952; text-align:center;
   border-bottom: 2px solid #EB6952;
   line-height:1; font-size:30px; color: #EB6952;}
   
   input { width:400px; height:40px; box-sizing: bord-border-box; }
   input::-webkit-input-placeholder {font-size:16px; color:#9fa19f; }
   button { width:405px; height:45px; background:#EB6952; font-size:20px; color:#fff; }
   .modifyPassword{
   width: 410px; position: absolute; left:50%; top:100%; 
   transform: translate(-50%, -50%);}
</style>
</head>
<body>
   <section class="modifyPassword" id="areaMain">
   <div class="container">
      <div class="row">
         <h2>비밀번호 변경</h2>
            <form action="modifypwd" method="post">
            <input type="password" name="password" placeholder="현재 비밀번호"><br>
            &nbsp;
            <input type="password" name="new_password" placeholder="새 비밀번호"><br>
            &nbsp;
            <button type="submit" style="border: 0; outline: 0;">수정</button>
            </form>
      </div>
   </div>      
   </section>
</body>
</html>