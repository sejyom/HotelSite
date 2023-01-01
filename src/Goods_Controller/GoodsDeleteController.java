package Goods_Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Goods.GoodsDAO;
import Goods.GoodsDTO;


@WebServlet("/gdel.do")
public class GoodsDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String gdid = request.getParameter("gdid");
		GoodsDAO gdao = new GoodsDAO();
		try {
			gdao.deleteGoods(gdid);
			ArrayList<GoodsDTO>glist = gdao.goodsList();
			session.setAttribute("gslist", glist);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?addr=goodslist.jsp&st=del");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
