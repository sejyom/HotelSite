package Member_Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.MemberDAO;
import Member.MemberVO;

/**
 * Servlet implementation class FindPW
 */
@WebServlet("/findPW")
public class FindPW extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPW() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		MemberVO vo = new MemberVO();		
		MemberDAO dao = new MemberDAO();

		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));

		try {
			String password = dao.findPW(vo);
			if (password != null) {
				// 유저 정보 있음
				RequestDispatcher dispatcher = request.getRequestDispatcher("resultPW.jsp?password=" + password);
				dispatcher.forward(request, response);
			} else {
				// 유저 정보 없음
				RequestDispatcher dispatcher = request.getRequestDispatcher("errorPage.jsp?hidden=findPW");
				dispatcher.forward(request, response);
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
