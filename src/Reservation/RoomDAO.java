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
	   final String ROOM_LIST="select * from tbl_room ";
	      
	   public ArrayList<RoomDTO> selectRoomList(int conp, String conv) throws SQLException {
	        conn=JDBCutil.getConnection();
	        String roomlst = ROOM_LIST;
	        if(conp!=0) {
	           //인원수를 선택한 경우
	           roomlst+="where person>="+conp+"";
	           if(!conv.equals("info")) {//인원수와 방옵션 모두 선택한 경우
	              roomlst += " AND view='"+conv+"'";
	           }
	        }else if(!conv.equals("info")) {//인원은 선택하지 않고 방 옵션만 선택한 경우
	           roomlst += "where view='"+conv+"'";
	        }
	       
	        pstmt=conn.prepareStatement(roomlst+";");
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