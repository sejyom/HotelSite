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


@WebServlet({ "/dslist.do" })
public class GoodsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		GoodsDAO gsdao = new GoodsDAO();
		try {
			ArrayList<GoodsDTO>glist = gsdao.goodsList();
			session.setAttribute("gslist", glist);
			request.getRequestDispatcher("index.jsp?addr=goodslist.jsp").forward(request, response);	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
