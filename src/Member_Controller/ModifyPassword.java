package Member_Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDAO;
import Member.MemberVO;


@WebServlet("/modifypwd")
public class ModifyPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModifyPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		
		try {
			MemberVO vo = dao.checkDB((String)session.getAttribute("id"), request.getParameter("password"));
			if (vo.getId() != null) {
				dao.updatePassword((String)session.getAttribute("id"), request.getParameter("new_password"));
				
				System.out.println("modifyPassword   | id: " + (String)session.getAttribute("id") + ", password: " + request.getParameter("password") + ", new_password: " + request.getParameter("new_password"));
				System.out.println("------------------------------------------------------------------------");

				RequestDispatcher dispatcher = request.getRequestDispatcher("myPage/myPage.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("errorPage.jsp?hidden=modifyPassword");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
