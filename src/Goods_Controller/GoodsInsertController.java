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

import Goods.*;


@WebServlet({ "/GoodsInsertController", "/gdin.do" })
public class GoodsInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String gdid = request.getParameter("gdid");
		int cost = Integer.parseInt(request.getParameter("gdcost"));
		int qu = Integer.parseInt(request.getParameter("gdqu"));
		String info = request.getParameter("gdinfo");
		GoodsDTO gd = new GoodsDTO();
		GoodsDAO gdao = new GoodsDAO();
		gd.setGoodsId(gdid);
		gd.setGoodsCost(cost);
		gd.setGoodsQu(qu);
		gd.setGoodsInfo(info);		
		try {
			gdao.insertGoods(gd);
			ArrayList<GoodsDTO>glist = gdao.goodsList();
			session.setAttribute("gslist", glist);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?addr=goodslist.jsp?st=ok");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
