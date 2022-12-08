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
	final String RESV_INSERT="insert into webproject.tbl_reserve values(?,?,?,?,?)";
	final String RESV_LIST="select * from webproject.tbl_reserve;";
	
	public void insertPay(ReserveDTO resv) throws SQLException{
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
	//선택 룸 상태값 가져오기 (id)
	public String getState(String roomId) throws SQLException{
		conn=JDBCutil.getConnection();
		String RESV_STATE="select state from webproject.tbl_reserve where id="+roomId+";";
		pstmt=conn.prepareStatement(RESV_STATE);
	    rs=pstmt.executeQuery();
	    String state = rs.getString("state");
		JDBCutil.close(pstmt, conn);
		return state;
	}
	//해당 날짜 안의 state가 "예약중"인 룸 리스트 나중에 if에서 제거 조건 수정해야됨 아직
	public ArrayList<String> getState(String start, String end) throws SQLException{
		conn=JDBCutil.getConnection();
		String RESV_STATE="select room_id from webproject.tbl_reserve where ="+start+
				"start_date <= (?) AND end_date  (?) AND state='예약중'";
		pstmt=conn.prepareStatement(RESV_STATE);
		pstmt.setString(1,start);
		pstmt.setString(2,end);
	    rs=pstmt.executeQuery();
	    ArrayList<String> xList=new ArrayList<String>();
	    while(rs.next()) {
	    	String rd = rs.getString("room_id");
	    	xList.add(rd);
	    }
		JDBCutil.close(pstmt, conn);
		return xList;
	}
	//예약 상태값 변경
	public void setState(String resvId, String state) throws SQLException{
		conn=JDBCutil.getConnection();
		String UPDATE_STATE="update webproject.tbl_reserve set state=(?) where id=(?);";
		pstmt=conn.prepareStatement(UPDATE_STATE);
		pstmt.setString(1,state);
		pstmt.setString(2,resvId);
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	//예약목록
	public ArrayList<ReserveDTO> selectMemberList() throws SQLException {
	     conn=JDBCutil.getConnection();
	     pstmt=conn.prepareStatement(RESV_LIST);
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
	
}
