package Reservation_Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

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


@WebServlet({ "/resvdel.do" })
public class ResvDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String pid = request.getParameter("pid");
		String resvid = request.getParameter("resvid");	
		String userid = (String)session.getAttribute("userid");
		PaymentDAO pdao = new PaymentDAO();
		ReserveDAO resvdao = new ReserveDAO();
		try {
			pdao.deletePay(pid);
			resvdao.deleteResv(resvid);
			ArrayList<PaymentDTO> payList = pdao.selectPayList(userid);
			ArrayList<ReserveDTO> resvList = new ArrayList<>();
			for(int i=0;i<payList.size();i++) {
				PaymentDTO pd = payList.get(i);
				resvList.add(resvdao.selectResvById(pd.getResvId()));
			}
			session.setAttribute("paylist", payList);
			session.setAttribute("resvlist", resvList);
			request.getRequestDispatcher("reserlist.jsp?do=del").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
