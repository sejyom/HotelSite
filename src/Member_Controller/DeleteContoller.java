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

/**
 * Servlet implementation class DeleteContoller
 */
@WebServlet("/delete.do")
public class DeleteContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteContoller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		String  id = (String)session.getAttribute("id");
		String pwd = request.getParameter("password");

		try {
			vo = dao.checkID(id);
			RequestDispatcher dispatcher;
			if(vo.getPassword().equals(pwd)) {
				dao.deleteMember(id);
				session.invalidate();
				 dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			}else {
				dispatcher = request.getRequestDispatcher("errorPage.jsp");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
