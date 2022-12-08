package Member;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {
	PreparedStatement pstmt = null;
	Connection conn = null;
	ResultSet rs = null;
	
	public void insertMember(MemberVO mem) throws SQLException {
		// 회원 등록
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("insert into tbl_member values(?, ?, ?, ?, ?, ?, ?);");

		pstmt.setString(1, mem.getId());
		pstmt.setString(2, mem.getPassword());
		pstmt.setString(3, mem.getName());
		pstmt.setString(4, mem.getEmail());
		pstmt.setString(5, mem.getPhoneNumber());
		pstmt.setString(6, mem.getAddress());
		pstmt.setString(7, mem.getManager());
		
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public MemberVO selectMember() throws SQLException {
		conn = JDBCutil.getConnection();
		MemberVO mem = new MemberVO();
		pstmt = conn.prepareStatement("select * from tbl_member;");
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			mem.setId(rs.getString("id"));
			mem.setPassword(rs.getString("password"));
			mem.setName(rs.getString("name"));
			mem.setEmail(rs.getString("email"));
			mem.setPhoneNumber(rs.getString("phoneNumber"));
			mem.setAddress(rs.getString("address"));
			mem.setManager(rs.getString("manager"));
		}
		JDBCutil.close(rs, pstmt, conn);
		return mem;
	}
	
	public MemberVO checkDB(String id, String password) throws SQLException {
		conn = JDBCutil.getConnection();
		MemberVO mem = new MemberVO();
		
		pstmt = conn.prepareStatement("select * from tbl_member where id='" + id + "' and password='" + password +"';");
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			mem.setId(rs.getString("id"));
			mem.setPassword(rs.getString("password"));
			mem.setName(rs.getString("name"));
			mem.setEmail(rs.getString("email"));
			mem.setPhoneNumber(rs.getString("phoneNumber"));
			mem.setAddress(rs.getString("address"));
			mem.setManager(rs.getString("manager"));
		}
		JDBCutil.close(rs, pstmt, conn);
		return mem;
	}
	
	public MemberVO checkID(String id) throws SQLException {
		conn = JDBCutil.getConnection();
		MemberVO mem = new MemberVO();
		
		pstmt = conn.prepareStatement("select * from tbl_member where id='" + id + "';");
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			mem.setId(rs.getString("id"));
			mem.setPassword(rs.getString("password"));
			mem.setName(rs.getString("name"));
			mem.setEmail(rs.getString("email"));
			mem.setPhoneNumber(rs.getString("phoneNumber"));
			mem.setAddress(rs.getString("address"));
			mem.setManager(rs.getString("manager"));
		}
		JDBCutil.close(rs, pstmt, conn);
		return mem;
	}
	
	public void updateMember(String id, String name, String email, String phoneNumber, String address) throws SQLException {
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("update tbl_member set name='"+ name +"', email='" + email + "', phoneNumber='" + phoneNumber + "', address='" + address + "' where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public void updatePassword(String id, String new_password) throws SQLException {
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("update tbl_member set password='" + new_password + "' where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public void deleteMember(String id) throws SQLException {
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("delete from tbl_member where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public ArrayList<MemberVO> selectMemberList() throws SQLException {
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("select * from tbl_member;");
		rs = pstmt.executeQuery();
		
		ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
		
		while (rs.next()) {
			MemberVO mem = new MemberVO();
			mem.setId(rs.getString("id"));
			mem.setPassword(rs.getString("password"));
			mem.setName(rs.getString("name"));
			mem.setEmail(rs.getString("email"));
			mem.setAddress(rs.getString("address"));
			mem.setPhoneNumber(rs.getString("phoneNumber"));
			mem.setManager(rs.getString("manager"));
			memberList.add(mem);
		}
		JDBCutil.close(rs, pstmt, conn);
		return memberList;
	}
}
