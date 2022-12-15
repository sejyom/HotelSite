package GoodsController;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Goods.*;


@WebServlet({ "/gpayin.do" })
public class GoodsPayInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		// TODO Auto-generated method stub

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String userid = (String)session.getAttribute("id");
		GoodsDTO gsinfo = (GoodsDTO)session.getAttribute("gsinfo");
		String mean = request.getParameter("mean");
		String date = (String)session.getAttribute("now");
		String id = userid+"_"+(date.replace("2022","").replace(":","").replace(" ","").replace("-",""));
		
		
		GoodsDAO gdao = new GoodsDAO();
		//GoodsDTO gdto = new GoodsDTO();
		
		try {
			gdao.changeQu(gsinfo.getGoodsId(), gsinfo.getGoodsQu());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		GoodspayDAO gsdao = new GoodspayDAO();
		GoodspayDTO gdp = new GoodspayDTO();
		gdp.setGspayId(id);
		gdp.setGpayDate(date);
		gdp.setGoodsId(gsinfo.getGoodsId());
		gdp.setGoodsQu(1);
		gdp.setGpayMean(mean);
		gdp.setgTotal(gsinfo.getGoodsCost());
		gdp.setGpayMember(userid);
		
		try {
			gsdao.insertGPay(gdp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("index.jsp?addr=gssuccess.jsp").forward(request, response);
	}

}
















