package Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Member.JDBCutil;

public class PaymentDAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	final String PAY_INSERT="insert into tbl_payment values(?,?,?,?,?,?)";
	final String PAY_LIST="select * from tbl_payment";
	final String PAY_DEL="delete from tbl_payment where id='";
	
	public void insertPay(PaymentDTO pay) throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(PAY_INSERT);
		pstmt.setString(1,pay.getPayId());
		pstmt.setString(2,pay.getResvId());
		pstmt.setInt(3,pay.getPayTotal());
		pstmt.setString(4,pay.getPayMeans());
		pstmt.setString(5,pay.getPayDate());
		pstmt.setString(6,pay.getPayMember());
		pstmt.executeUpdate();
		
		JDBCutil.close(pstmt, conn);
	}	
	
	public void deletePay(String payid)throws SQLException{
		conn=JDBCutil.getConnection();
		String deletp = PAY_DEL+payid+"';";
		pstmt=conn.prepareStatement(deletp);
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public ArrayList<PaymentDTO> selectPayList(String userid) throws SQLException {
	     conn=JDBCutil.getConnection();
	     String pl=PAY_LIST;
	     if(!userid.equals("akxxkd")) {
	    	 pl = PAY_LIST+" where member_id='"+userid+"'";
	     }
	     pstmt=conn.prepareStatement(pl+";");
	     rs=pstmt.executeQuery();
	     ArrayList<PaymentDTO> pList=new ArrayList<PaymentDTO>();
	     while(rs.next()) {
	        PaymentDTO rd=new PaymentDTO();
	        rd.setPayId(rs.getString("id"));
	        rd.setResvId(rs.getString("reserve_id"));
	        rd.setPayTotal(rs.getInt("total"));
	        rd.setPayMeans(rs.getString("means"));
	        rd.setPayDate(rs.getString("date"));
	        rd.setPayMember(rs.getString("member_id"));
	        pList.add(rd);
	     }
	     JDBCutil.close(pstmt, conn);
	     return pList;
	}

	public PaymentDTO selectPayById(String pid) throws SQLException {
	     conn=JDBCutil.getConnection();
	     String pl=PAY_LIST;   
	     pl = PAY_LIST+" where id='"+pid+"'";
	     pstmt=conn.prepareStatement(pl+";");
	     rs=pstmt.executeQuery();
	     PaymentDTO pymt=new PaymentDTO();
	     while(rs.next()) {
	    	pymt.setPayId(rs.getString("id"));
	    	pymt.setResvId(rs.getString("reserve_id"));
	    	pymt.setPayTotal(rs.getInt("total"));
	    	pymt.setPayMeans(rs.getString("means"));
	    	pymt.setPayDate(rs.getString("date"));
	    	pymt.setPayMember(rs.getString("member_id"));
	     }
	     JDBCutil.close(pstmt, conn);
	     return pymt;
	}
	
}
