package Goods_Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Goods.*;


@WebServlet({ "/GoodsSelectController", "/gschoice.do" })
public class GoodsSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String gsid=request.getParameter("gsid");
		//String uid=(String)session.getAttribute("userid");
		GoodsDAO gdao = new GoodsDAO();
		try {
			GoodsDTO gsinfo = gdao.selectGoods(gsid);
			session.setAttribute("gsinfo", gsinfo);
			request.getRequestDispatcher("index.jsp?addr=gspayment.jsp").forward(request, response);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
