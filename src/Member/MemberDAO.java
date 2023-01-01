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
	
	public MemberVO selectMember(String id) throws SQLException {
		// 유저 정보 출력
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
	
	public MemberVO checkDB(String id, String password) throws SQLException {
		// 디비에 있는지 체크
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
		// 디비에 있는지 체크
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
		// 회원 정보 수정
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("update tbl_member set name='"+ name +"', email='" + email + "', phoneNumber='" + phoneNumber + "', address='" + address + "' where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public void updatePassword(String id, String new_password) throws SQLException {
		// 비밀번호 변경
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("update tbl_member set password='" + new_password + "' where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public void deleteMember(String id) throws SQLException {
		// 회원 탈퇴
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("delete from tbl_member where id='" + id + "';");
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
	}
	
	public ArrayList<MemberVO> selectMemberList() throws SQLException {
		// 회원 리스트 출력
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
	
	public String findID(MemberVO vo) throws SQLException {
		// 아이디 찾기
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("select id from tbl_member where name=? and email=?;");
		String id;
		
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		
	    rs = pstmt.executeQuery();
		
		if(rs.next())
			id = rs.getString("id");
		else
			id = null;
		
		System.out.println("findID   | name: " + vo.getName() + ", email: " + vo.getEmail() + ", userId: " + id);
		JDBCutil.close(rs, pstmt, conn);
		
		return id;
	}
	
	public String findPW(MemberVO vo) throws SQLException {
		// 비밀번호 찾기
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement("select password from tbl_member where id=? and name=? and email=?;");
		String password = "";

		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getName());
		pstmt.setString(3, vo.getEmail());
		
		rs = pstmt.executeQuery();
		
		if(rs.next())
			password = rs.getString("password");
		else
			password = null;
		
//		System.out.println("findPW   | name: " + vo.getName() + ", email: " + vo.getEmail() + ", userPassword: " + password);
		JDBCutil.close(rs, pstmt, conn);
		return password;
	}
}
