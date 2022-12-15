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

@WebServlet("/modify")
public class ModifyProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModifyProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		try {
			dao.updateMember((String)session.getAttribute("id"), request.getParameter("name"), request.getParameter("email"), request.getParameter("phoneNumber"), request.getParameter("address"));
			System.out.println("modifyProfile   | id: " + (String)session.getAttribute("id") + ", name: " + request.getParameter("name") + ", email: " + request.getParameter("email") 
			+ ", phoneNumber: " + request.getParameter("phoneNumber") + ", address: " + request.getParameter("address"));
			System.out.println("------------------------------------------------------------------------");
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?addr=myPage.jsp");
			dispatcher.forward(request, response);
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
