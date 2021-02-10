package web.jsp0209.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDAO {
	// 싱글톤 만들기
	private static TestDAO singleton = new TestDAO();
	private TestDAO() {}
	public static TestDAO getInstance() {return singleton;}
	//연결만들기
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		Context env = (Context) ctx.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc/orcl");
		return ds.getConnection();
	}
	//close만들기
	private void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if(rs!=null) try { rs.close(); }catch(Exception e) {e.printStackTrace();}
		if(pstmt!=null) try { pstmt.close(); }catch(Exception e) {e.printStackTrace();}
		if(conn!=null) try { conn.close(); }catch(Exception e) {e.printStackTrace();}
	}
	
	public boolean idPwCheck(String id, String pw) {
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			String sql = "select * from test where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, pstmt, rs);
		}
		return false;
	}
	
}
