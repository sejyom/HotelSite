package Reservation_Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Reservation.*;



@WebServlet({ "/pinsert.do" })
public class PayInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String userid = (String)session.getAttribute("id");
		RoomDTO prinfo = (RoomDTO)session.getAttribute("rinfo");
		int pcost =  Integer.parseInt(String.valueOf(session.getAttribute("pcost")));
		String mean = (String)request.getAttribute("mean");
		String date = (String)session.getAttribute("now");
		String start = (String)session.getAttribute("resv_start");
		String end = (String)session.getAttribute("resv_end");
		String id = userid+(date.replace("-","").replace(":","").replace(" ",""));
		
		ReserveDTO resv = new ReserveDTO();
		ReserveDAO resvdao = new ReserveDAO();

		
		resv.setResvId(id); resv.setRoomId(prinfo.getRoomId());
		resv.setResvStart(start); resv.setResvEnd(end);
		resv.setResvState("예약중");
		try {
			resvdao.insertResv(resv);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PaymentDTO pay = new PaymentDTO();
		PaymentDAO paydao = new PaymentDAO();
		pay.setPayId(id+"p"); pay.setResvId(id);
		pay.setPayTotal(pcost); pay.setPayMeans(mean);
		pay.setPayDate(date); pay.setPayMember(userid);
		try {
			paydao.insertPay(pay);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?addr=resvsuccess.jsp");
		dispatcher.forward(request, response);
	}

}
