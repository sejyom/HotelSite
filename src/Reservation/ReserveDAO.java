package Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Member.JDBCutil;

public class ReserveDAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	final String RESV_INSERT="insert into tbl_reserve values(?,?,?,?,?)";
	final String RESV_LIST="select * from tbl_reserve";
	final String RESV_DEL="delete from tbl_reserve where id='";
	
	public void insertResv(ReserveDTO resv) throws SQLException{
		conn=JDBCutil.getConnection();
		pstmt=conn.prepareStatement(RESV_INSERT);
		pstmt.setString(1,resv.getResvId());
		pstmt.setString(2,resv.getResvStart());
		pstmt.setString(3,resv.getResvEnd());
		pstmt.setString(4,resv.getRoomId());
		pstmt.setString(5,resv.getResvState());
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}	
	
	public void deleteResv(String resvid)throws SQLException{
		conn=JDBCutil.getConnection();
		String deletr = RESV_DEL+resvid+"';";
		pstmt=conn.prepareStatement(deletr);
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	// (id)
	public String getState(String roomId) throws SQLException{
		conn=JDBCutil.getConnection();
		String RESV_STATE="select state from tbl_reserve where id="+roomId+";";
		pstmt=conn.prepareStatement(RESV_STATE);
	    rs=pstmt.executeQuery();
	    String state = rs.getString("state");
		JDBCutil.close(pstmt, conn);
		return state;
	}
	
	//이미 예약중인 룸id 가져옴
	public ArrayList<String> getIdState(String start, String end) throws SQLException{
		conn=JDBCutil.getConnection();
		String COND = "('"+start+"' BETWEEN start_date AND end_date) OR";
		String COND2 = "('"+end+"' BETWEEN start_date AND end_date)";
		String RESV_STATE="select room_id from tbl_reserve where ("+COND+COND2+") AND state='예약중';";
		if(start.equals("")||end.equals("")) {
			RESV_STATE="select room_id from tbl_reserve where state='임시';";
		}
		pstmt=conn.prepareStatement(RESV_STATE);
	    rs=pstmt.executeQuery();
	    ArrayList<String> xList=new ArrayList<String>();
	    while(rs.next()) {
	    	String rd = rs.getString("room_id");
	    	xList.add(rd);
	    }
		JDBCutil.close(pstmt, conn);
		return xList;
	}
	
	//상태변경
	public void setState(String resvId, String state) throws SQLException{
		conn=JDBCutil.getConnection();
		String UPDATE_STATE="update tbl_reserve set state=(?) where id=(?);";
		pstmt=conn.prepareStatement(UPDATE_STATE);
		pstmt.setString(1,state);
		pstmt.setString(2,resvId);
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	//select
	public ArrayList<ReserveDTO> selectResvList() throws SQLException {
		 conn=JDBCutil.getConnection();
	     pstmt=conn.prepareStatement(RESV_LIST+";");
	     rs=pstmt.executeQuery();
	     ArrayList<ReserveDTO> resvList=new ArrayList<ReserveDTO>();
	     while(rs.next()) {
	        ReserveDTO rd=new ReserveDTO();
	        rd.setResvId(rs.getString("id"));
	        rd.setResvStart(rs.getString("start_date"));
	        rd.setResvEnd(rs.getString("end_date"));
	        rd.setRoomId(rs.getString("room_id"));
	        rd.setResvState(rs.getString("state"));
	        resvList.add(rd);
	     }
	     JDBCutil.close(pstmt, conn);
	     return resvList;
	}
	
	//값들따로...
	public ReserveDTO selectResvById(String id) throws SQLException {
	     conn=JDBCutil.getConnection();
	     String lst = RESV_LIST+" where id='"+id+"'";
	     pstmt=conn.prepareStatement(lst+";");
	     rs=pstmt.executeQuery();
	     ReserveDTO rd=new ReserveDTO();
	     while(rs.next()) {       
	        rd.setResvId(rs.getString("id"));
	        rd.setResvStart(rs.getString("start_date"));
	        rd.setResvEnd(rs.getString("end_date"));
	        rd.setRoomId(rs.getString("room_id"));
	        rd.setResvState(rs.getString("state"));
	     }
	     JDBCutil.close(pstmt, conn);
	     return rd;
	}
	
}
