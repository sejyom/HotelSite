package Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Member.JDBCutil;

public class RoomDAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String ROOM_LIST="select * from webproject.tbl_room;";
	   
	public ArrayList<RoomDTO> selectMemberList(String conp,String conv) throws SQLException {
	     conn=JDBCutil.getConnection();
	     if(conp!=null||!conp.equals("인원자유")) {
	    	 ROOM_LIST = ROOM_LIST+"where person="+conp;
	    	 if(conv!=null||!conv.equals("뷰자유")) {
	    		 ROOM_LIST = ROOM_LIST+" AND view="+conv+";";
	    	 }else {
	    		 ROOM_LIST = ROOM_LIST+";";
	    	 }
	     }else if(conv!=null||!conv.equals("뷰자유")) {
	    	 ROOM_LIST = ROOM_LIST+" where view="+conv+";";
	     }
	     pstmt=conn.prepareStatement(ROOM_LIST);
	     rs=pstmt.executeQuery();
	     ArrayList<RoomDTO> rList=new ArrayList<RoomDTO>();
	     while(rs.next()) {
	        RoomDTO rd=new RoomDTO();
	        rd.setRoomId(rs.getString("id"));
	        rd.setRoomCost(rs.getString("cost"));
	        rd.setRoomView(rs.getString("view"));
	        rd.setRoomPerson(rs.getInt("person"));
	        rd.setRoomSize(rs.getString("size"));
	        rList.add(rd);
	     }
	     JDBCutil.close(pstmt, conn);
	     return rList;
	}
	//룸 가격 가져오기
	public int getCost(String roomId) throws SQLException{
		conn=JDBCutil.getConnection();
		String ROOM_COST="select cost from webproject.tbl_room where id="+roomId+";";
		pstmt=conn.prepareStatement(ROOM_COST);
	    rs=pstmt.executeQuery();
	    int cost = rs.getInt("cost");
		JDBCutil.close(pstmt, conn);
		return cost;
	}

}
