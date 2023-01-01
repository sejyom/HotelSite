package Review_Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Review.ReviewDAO;

/**
 * Servlet implementation class DeleteReviewController
 */
@WebServlet("/delete_review")
public class DeleteReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReviewController() {
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
		ReviewDAO dao = new ReviewDAO();
		HttpSession session = request.getSession();
		try {
			String user_id = (String)session.getAttribute("id");
			dao.deleteResv((String)session.getAttribute("reserve_id"));
			session.removeAttribute("reserve_id");
			System.out.println("리뷰 삭제 완료");

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제되었습니다.');</script>"); 
			if (user_id.equals("akxxkd")) {
	               request.getRequestDispatcher("index.jsp?addr=managerPage.jsp&cont=userList.jsp").forward(request, response);
	        } else {
	               request.getRequestDispatcher("index.jsp?addr=myPage.jsp").forward(request, response);
	        }
			writer.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
