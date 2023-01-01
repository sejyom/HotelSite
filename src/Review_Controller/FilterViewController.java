package Review_Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Review.ReviewDAO;
import Review.ReviewVO;

/**
 * Servlet implementation class FilterViewController
 */
@WebServlet("/filterView")
public class FilterViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterViewController() {
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
		String hidden = request.getParameter("name");
		ReviewDAO dao = new ReviewDAO();
		try {
			ArrayList<ReviewVO> reviewList = dao.filterReview(hidden);
			HttpSession session = request.getSession();
			session.setAttribute("filter", reviewList);
			request.getRequestDispatcher("index.jsp?&addr=filterReview.jsp&cont=index.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
