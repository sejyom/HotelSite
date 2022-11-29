package Member;


import java.sql.*;

public class JDBCutil {
	   final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";   
	   final static String JDBC_URL = "jdbc:mysql://localhost:3306/webProject?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8&allowPublicKeyRetrieval=true";
	   final static String JDBC_USER = "root";
	   final static String JDBC_PASS = "Park3587rs!";

	   public static Connection getConnection() {
		   try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
		   } catch (ClassNotFoundException | SQLException e) {
				   e.printStackTrace();
		   }
		   return null;
	   }
	   
	   public static void close(PreparedStatement pstmt, Connection conn) {
		   try {
			   pstmt.close();
			   conn.close();
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }
	   }
	   
	   public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		   try {
			   pstmt.close();
			   conn.close();
			   rs.close();
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }
	   }
}