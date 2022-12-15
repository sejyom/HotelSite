package GoodsController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Goods.*;


@WebServlet({ "/gspaylist.do" })
public class GoodsPayListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userid = (String)session.getAttribute("id");//���� �ڱ�
		GoodspayDAO gsda = new GoodspayDAO();
		try {
			ArrayList<GoodspayDTO> gdpList = gsda.selectGPayList(userid);
			session.setAttribute("gdpList", gdpList);
			request.getRequestDispatcher("index.jsp?addr=goodspaylist.jsp").forward(request, response);
		}catch(SQLException e) {
			e.printStackTrace();
		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
