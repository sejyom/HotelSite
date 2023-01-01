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
 * Servlet implementation class DeleteController
 */
@WebServlet("/delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8"); 
		    	
		MemberDAO dao = new MemberDAO();
		RequestDispatcher dispatcher;
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		try {
			System.out.println("withdrawal(manager)   | id: " + id);
			System.out.println("------------------------------------------------------------------------");
			dao.deleteMember(id);
			if(((String)session.getAttribute("id")).equals("akxxkd")) {
				dispatcher = request.getRequestDispatcher("index.jsp?addr=managerPage.jsp");
				dispatcher.forward(request, response);
			} else {
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
