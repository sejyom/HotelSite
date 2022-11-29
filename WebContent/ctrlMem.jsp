<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Member.MemberVO"%>
    
<jsp:useBean class="Member.MemberVO" id="regBean" scope="session" />
<jsp:setProperty name="regBean" property="*" />
<jsp:useBean class="Member.MemberDAO" id="regMgr" scope="session" />

<%
	request.setCharacterEncoding("UTF-8");
	String hidden = request.getParameter("hidden");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String address = request.getParameter("address");
	String modifyEmail = request.getParameter("modifyEmail");
	String modifyPhoneNumber = request.getParameter("modifyPhoneNumber");
	String modifyAddress = request.getParameter("modifyAddress");
	MemberVO mem = new MemberVO();

	// 로그인
	if (hidden.equals("signIn")) {
		 mem = regMgr.checkDB(id, password);
		if (mem.getId() != null) {
			// 로그인 성공
			System.out.println("id: " + mem.getId());
			regBean = mem;
			session.setAttribute("id", id);
			session.setAttribute("name", regBean.getName());
			System.out.println("login  | id: " + id + ", password: " + password + ", name: " + regBean.getName());
			
			// 관리자인지 일반 유저인지 판별
			if (regBean.getId().equals("akxxkd")) {
				// manager
				session.setAttribute("isManager", 1);
			} else {
				// user
				session.setAttribute("isManager", 0);
			}
			response.sendRedirect("index.jsp");
		} else {
			// 로그인 실패
%>
			<script>
				alert("아이디 비밀번호를 확인해주세요");
				history.back();
			</script>
<%
		}
	} 
	
	
	// 로그아웃
	else if (hidden.equals("signOut")) {
		System.out.println("logout | id : " + regBean.getId());
		session.removeAttribute("id");
		response.sendRedirect("index.jsp");
	}
	
	
	// 회원가입
	else if (hidden.equals("join")) {
		System.out.println("join   | id: " + id + ", password: " + password + ", address: " + address);
		regMgr.insertMember(regBean);
		response.sendRedirect("index.jsp");
	}
	
	
	// 비밀번호 변경
	else if (hidden.equals("modifyPassword")) {
		
	}
	
	else if (hidden.equals("modifyProfile")) {
		String id_loc = (String)session.getAttribute("id");
		regMgr.updateMember(id_loc, modifyEmail, modifyPhoneNumber, modifyAddress);
		response.sendRedirect("myPage/myPage.jsp");
	}
%>