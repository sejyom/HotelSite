package Reservation_Controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Reservation.PaymentDAO;
import Reservation.PaymentDTO;
import Reservation.ReserveDAO;
import Reservation.ReserveDTO;
import Reservation.RoomDAO;
import Reservation.RoomDTO;

/**
 * Servlet implementation class ResvInfoController
 */
@WebServlet("/resvinfo.do")
public class ResvInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResvInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String pid = (String)request.getParameter("pid");
		String resvid = (String)request.getParameter("resvid");
		String roomid = (String)request.getParameter("rid");
		PaymentDAO pdao = new PaymentDAO();
		ReserveDAO resvdao = new ReserveDAO();
		RoomDAO roomdao = new RoomDAO();
		try {
			PaymentDTO payinfo = pdao.selectPayById(pid);
			ReserveDTO resvinfo = resvdao.selectResvById(resvid);
			RoomDTO roominfo = roomdao.selectRoom(roomid);
			session.setAttribute("payinfo", payinfo);
			session.setAttribute("resvinfo", resvinfo);
			session.setAttribute("srinfo", roominfo);
			request.getRequestDispatcher("resvdetail.jsp").forward(request, response);
			
		} catch (SQLException e) {
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
