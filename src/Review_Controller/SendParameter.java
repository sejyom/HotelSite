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

import Reservation.ReserveDAO;
import Reservation.ReserveDTO;
import Review.ReviewVO;

/**
 * Servlet implementation class SendParameter
 */
@WebServlet("/sendParameter")
public class SendParameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendParameter() {
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
		HttpSession session = request.getSession();
		ReserveDTO rsvDTO = new ReserveDTO();
		ReserveDAO rsvDAO = new ReserveDAO();
		String rsv_id = request.getParameter("rsv_id");
		String hdn = request.getParameter("hdn");
		if (hdn.equals("insrt") || hdn.equals("mdfy")){
			// 리뷰 작성|수정
			try {
				rsvDTO = rsvDAO.selectResvById(rsv_id);
				session.setAttribute("rsvDTO", rsvDTO);
				if (hdn.equals("insrt"))
					request.getRequestDispatcher("index.jsp?addr=reviewForm.jsp").forward(request, response);
				if (hdn.equals("mdfy")) 
					request.getRequestDispatcher("index.jsp?addr=modifyReview.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (hdn.equals("dlt")) {
			// 리뷰 삭제
			session.setAttribute("reserve_id", rsv_id);
			System.out.println("sendParameter | " + (String)session.getAttribute("reserve_id"));
			if(((String)session.getAttribute("id")).equals("akxxkd")) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('삭제가 완료되었습니다.'); location.href='index.jsp?addr=roomIntro.jsp';</script>");
				writer.close();
				
			} else {
				request.getRequestDispatcher("delete_review").forward(request, response);
			}
		}
	}

}
