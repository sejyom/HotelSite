package Reservation_Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Reservation.*;


@WebServlet({ "/resvlist.do" })
public class ResvListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		String userid = (String)session.getAttribute("id");
		PaymentDAO pdao = new PaymentDAO();
		ReserveDAO resvdao = new ReserveDAO();
		try {
			ArrayList<PaymentDTO> payList = pdao.selectPayList(userid);
			ArrayList<ReserveDTO> resvList = new ArrayList<>();
			for(int i=0;i<payList.size();i++) {
				PaymentDTO pd = payList.get(i);
				resvList.add(resvdao.selectResvById(pd.getResvId()));
			}
			session.setAttribute("paylist", payList);
			session.setAttribute("resvlist", resvList);
			request.getRequestDispatcher("index.jsp?addr=reserlist.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
