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

/**
 * Servlet implementation class ModifyProfile
 */
@WebServlet("/modify.do")
public class ModifyProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		System.out.println((String)session.getAttribute("id"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("phoneNumber"));
		System.out.println(request.getParameter("address"));
		try {
			dao.updateMember((String)session.getAttribute("id"), request.getParameter("name"), request.getParameter("email"), request.getParameter("phoneNumber"), request.getParameter("address"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("myPage/myPage.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
