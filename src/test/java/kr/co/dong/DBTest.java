/**
 *  데이터베이스 연결 테스트하기
 */

package kr.co.dong;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DBTest {

	@Test
	public void test() throws Exception {
		Class.forName("org.mariadb.jdbc.Driver"); //  연결드라이브
		
		// Connection 클래스사용
		String url = "jdbc:mariadb://localhost:3306/test";
//		String url = "jdbc:mysql://localhost:3306/webstore";
		String username = "myself";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url,username,password);
		
		System.out.println(conn);
		System.out.println("데이터베이스 연결성공!");
	}
	
}
