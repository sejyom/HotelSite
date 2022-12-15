package Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Member.JDBCutil;

public class GoodspayDAO {
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	final String GSPAY_INSERT="insert into tbl_goodspay values(?,?,?,?,?,?,?)";
	final String GSPAY_LIST="select * from tbl_goodspay";
	final String GSPAY_DEL="delete from tbl_goodspay where id='";

	public void insertGPay(GoodspayDTO gspay)throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(GSPAY_INSERT+";");
		pstmt.setString(1, gspay.getGspayId());
		pstmt.setString(2, gspay.getGoodsId());
		pstmt.setInt(3, gspay.getGoodsQu());
		pstmt.setInt(4, gspay.getgTotal());
		pstmt.setString(5, gspay.getGpayMean());
		pstmt.setString(6, gspay.getGpayDate());
		pstmt.setString(7, gspay.getGpayMember());
		pstmt.executeUpdate();
		
		JDBCutil.close(pstmt, conn);
	}
	public ArrayList<GoodspayDTO> selectGPayList(String userid)throws SQLException{
		conn=JDBCutil.getConnection();
		String pl=GSPAY_LIST;
		if(!userid.equals("akxxkd")) {
			pl=pl+" where member_id='"+userid+"';";
		}
		pstmt=conn.prepareStatement(pl);
		rs=pstmt.executeQuery();
		ArrayList<GoodspayDTO> gpList = new ArrayList<>();
		while(rs.next()) {
			GoodspayDTO gs = new GoodspayDTO();
			gs.setGspayId(rs.getString("id"));
			gs.setGoodsId(rs.getString("goods"));
			gs.setGoodsQu(rs.getInt("quantity"));
			gs.setgTotal(rs.getInt("total"));
			gs.setGpayMean(rs.getString("means"));
			gs.setGpayDate(rs.getString("date"));
			gs.setGpayMember(rs.getString("member_id"));
			gpList.add(gs);
		}
		JDBCutil.close(pstmt, conn);
		return gpList;
	}
	
}
