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
	final String PAY_INSERT="insert into webproject.tbl_payment values(?,?,?,?,?,?)";
	final String PAY_LIST="select * from webproject.tbl_payment;";
	
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
	public ArrayList<PaymentDTO> selectMemberList() throws SQLException {
	     conn=JDBCutil.getConnection();
	     pstmt=conn.prepareStatement(PAY_LIST);
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

}
