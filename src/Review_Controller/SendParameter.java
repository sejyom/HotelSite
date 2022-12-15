package Review_Controller;
 
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Reservation.ReserveDAO;
import Reservation.ReserveDTO;
//index.jsp?cont=reviewForm
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
		System.out.println("tlqkf " + rsv_id);
		String hdn = request.getParameter("hdn");
		if (hdn.equals("insrt")){
			try {
				rsvDTO = rsvDAO.selectResvById(rsv_id);
				session.setAttribute("rsvDTO", rsvDTO);
				
				request.getRequestDispatcher("index.jsp?addr=reviewForm.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (hdn.equals("dlt")) {
			// 리뷰 삭제 버튼 눌렀을 때
			session.setAttribute("reserve_id", rsv_id);
			System.out.println("sendParameter | " + (String)session.getAttribute("reserve_id"));
			request.getRequestDispatcher("delete_review").forward(request, response);
		}
	}

}
