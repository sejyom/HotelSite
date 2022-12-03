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
	String ROOM_LIST="select * from webproject.tbl_room ";
	   
	public ArrayList<RoomDTO> selectRoomList(int conp,String conv) throws SQLException {
	     conn=JDBCutil.getConnection();
	     if(conp!=0) {
	    	 ROOM_LIST = ROOM_LIST+"where person<="+conp+"";
	    	 if(!conv.equals("info")) {
	    		 ROOM_LIST = ROOM_LIST+" AND view='"+conv+"'";
	    	 }
	     }else if(!conv.equals("info")) {
	    	 ROOM_LIST = ROOM_LIST+"where view='"+conv+"'";
	     }
	    
	     pstmt=conn.prepareStatement(ROOM_LIST+";");
	     rs=pstmt.executeQuery();
	     ArrayList<RoomDTO> rList=new ArrayList<RoomDTO>();
	     while(rs.next()) {
	        RoomDTO rd=new RoomDTO();
	        rd.setRoomId(rs.getString("id"));
	        rd.setRoomCost(rs.getInt("cost"));
	        rd.setRoomView(rs.getString("view"));
	        rd.setRoomPerson(rs.getInt("person"));
	        rd.setRoomSize(rs.getString("size"));
	        rList.add(rd);
	     }
	     JDBCutil.close(pstmt, conn);
	     return rList;
	}
	//아이디로 찾기
	public RoomDTO selectRoom(String id) throws SQLException {
	     conn=JDBCutil.getConnection();
	     pstmt=conn.prepareStatement(ROOM_LIST+"where id='"+id+"';");
	     rs=pstmt.executeQuery();
	     RoomDTO rd=new RoomDTO();
	     if(rs.next()) {
	     rd.setRoomId(rs.getString("id"));
	     rd.setRoomCost(rs.getInt("cost"));
	     rd.setRoomView(rs.getString("view"));
	     rd.setRoomPerson(rs.getInt("person"));
	     rd.setRoomSize(rs.getString("size"));
	     JDBCutil.close(pstmt, conn);
	     }
	     return rd;
	     
	}


}
