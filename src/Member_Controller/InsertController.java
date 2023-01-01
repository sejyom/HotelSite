package Member_Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.MemberDAO;
import Member.MemberVO;

@WebServlet("/insert")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phoneNumber");
		String manager;
		
		// 관리자인지 아닌지 판별
		if (id.equals("akxxkd")) {
			manager = "1";
		} else manager = "0";
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setPhoneNumber(phoneNumber);
		vo.setManager(manager);
		MemberDAO dao = new MemberDAO();
		try {
			dao.insertMember(vo);
			System.out.println("join   | id: " + id + ", password: " + password + ", manager: " + manager + ", address: " + address);
			System.out.println("------------------------------------------------------------------------");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입이 완료되었습니다.'); location.href='index.jsp';</script>");
			writer.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
