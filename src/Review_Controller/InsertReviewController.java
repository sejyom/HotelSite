package Review_Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Review.ReviewDAO;
import Review.ReviewVO;

/**
 * Servlet implementation class InsertReviewController
 */
@WebServlet("/insert_review")
public class InsertReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// param: user_id, rsv_id, room_id, rating, comment
		request.setCharacterEncoding("UTF-8");
		String rsv_id = request.getParameter("rsv_id");
		String user_id = request.getParameter("user_id");
		String room_id = request.getParameter("room_id");
		String comment = request.getParameter("comment");
		int rating = Integer.parseInt(request.getParameter("rating"));
		
		ReviewVO rv_vo = new ReviewVO();
		rv_vo.setReserve_id(rsv_id);
		rv_vo.setUser_id(user_id);
		rv_vo.setRoom_id(room_id);
		rv_vo.setComment(comment);
		rv_vo.setRating(rating);
		ReviewDAO rv_dao = new ReviewDAO();
		
		try {
			rv_dao.insertReview(rv_vo);
			System.out.println(user_id + " 리뷰 작성 완료");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('작성되었습니다.'); location.href='index.jsp?addr=myPage.jsp';</script>");
			writer.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			request.getRequestDispatcher("errorPage.jsp?hidden=insertError").forward(request, response);
			e.printStackTrace();
		}
	}

}
