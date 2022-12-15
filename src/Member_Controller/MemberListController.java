package Member_Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDAO;
import Member.MemberVO;

@WebServlet("/memberList")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		try {
			ArrayList<MemberVO> memberList = dao.selectMemberList();
			HttpSession session = request.getSession();
			session.setAttribute("memberList", memberList);
			request.getRequestDispatcher("index.jsp?cont=managerPage.jsp&addr=userList.jsp").forward(request, response);
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
