package Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Member.JDBCutil;


public class GoodsDAO {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	final String GOODS_LIST="select * from tbl_goods";
	final String GOODS_INSERT="insert into tbl_goods values(?,?,?,?)";
	final String GOODS_DEL="delete from tbl_goods where id='";
	
	// 상품 리스트
	public ArrayList<GoodsDTO> goodsList() throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(GOODS_LIST+";");
	    rs=pstmt.executeQuery();
	    ArrayList<GoodsDTO> gList = new ArrayList<>();
	    while(rs.next()) {
	    	GoodsDTO gd=new GoodsDTO();
	    	gd.setGoodsId(rs.getString("id"));
	    	gd.setGoodsCost(rs.getInt("cost"));
	    	gd.setGoodsQu(rs.getInt("quantity"));
	    	gd.setGoodsInfo(rs.getString("inform"));
	    	gList.add(gd);
	    }	 
	    JDBCutil.close(pstmt, conn);
		return gList;
	}
	
	// 상품 선택
	public GoodsDTO selectGoods(String id)throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(GOODS_LIST+" where id='"+id+"';");
		rs=pstmt.executeQuery();
		GoodsDTO gd=new GoodsDTO();
		if(rs.next()) {
			gd.setGoodsId(rs.getString("id"));
			gd.setGoodsCost(rs.getInt("cost"));
			gd.setGoodsQu(rs.getInt("quantity"));
			gd.setGoodsInfo(rs.getString("inform"));
		}
		JDBCutil.close(pstmt, conn);
		return gd;	
	}
	
	// 상품수 변경
	public void changeQu(String gid, int qu)throws SQLException{
		conn=JDBCutil.getConnection();
		String UPDATE_Qu="update tbl_goods set quantity=(?) where id=(?);";
		pstmt=conn.prepareStatement(UPDATE_Qu);
		qu-=1;
		pstmt.setInt(1, qu);
		pstmt.setString(2, gid);
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	// 상품 추가
	public void insertGoods(GoodsDTO gd)throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(GOODS_INSERT);
		pstmt.setString(1,gd.getGoodsId());
		pstmt.setInt(2,gd.getGoodsCost());
		pstmt.setInt(3, gd.getGoodsQu());
		pstmt.setString(4,gd.getGoodsInfo());
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	//삭제
	   public void deleteGoods(String gdid)throws SQLException{
	      conn=JDBCutil.getConnection();
	      String del=GOODS_DEL+gdid+"'";
	      pstmt=conn.prepareStatement(del);
	      pstmt.executeUpdate();
	      JDBCutil.close(pstmt, conn);
	   }
	   
	
	
	
	
	
	
	
	
}
