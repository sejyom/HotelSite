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


import Reservation.*;


@WebServlet({ "/RoomListController", "/rlist.do" })
public class RoomListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int condp = Integer.parseInt(request.getParameter("condp"));
		String condv = request.getParameter("condv");
		String start = request.getParameter("startd");
		String end = request.getParameter("endd");
		RoomDAO rdao=new RoomDAO();
		ReserveDAO resvd= new ReserveDAO();
		try {
			ArrayList<RoomDTO>rList = rdao.selectRoomList(condp,condv);
			ArrayList<String>xList = resvd.getIdState(start, end);
			if(!xList.isEmpty()) {
				for(int i=0;i<rList.size();i++) {
					RoomDTO rd=(RoomDTO)rList.get(i);
					if(xList.contains(rd.getRoomId())) {
						rList.remove(i);
					}
				}
			}
			HttpSession session=request.getSession();
			session.setAttribute("rlist", rList);
			session.setAttribute("resv_start", start);
			session.setAttribute("resv_end", end);
			request.getRequestDispatcher("reser.jsp").forward(request, response);	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
