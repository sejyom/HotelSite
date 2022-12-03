package Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCutil {
	final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final static String JDBC_URL = "jdbc:mysql://localhost:3306/webProject?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
    final static String JDBC_USER = "root";
    final static String JCBC_PASS ="sejyomeee2!";
    
    public static Connection getConnection() {
        try {
        Class.forName(JDBC_DRIVER);
        return DriverManager.getConnection(JDBC_URL ,JDBC_USER, JCBC_PASS);
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
        e.printStackTrace();
        }
     }
     public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
           pstmt.close();
           conn.close();
           rs.close();
        } catch (SQLException e) {
           e.printStackTrace();
        }
     }
}
