package com.java.blog;

import java.sql.*;
public class JDBCUtil {
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			System.out.println(e);
		}
	}
	public static Connection getMySqlConnection() throws SQLException{
		String url = "jdbc:mysql://localhost:3306/javaqa";
		Connection con = DriverManager.getConnection(url, "root", "toor");
		return con;
	}
	
	public static Connection getOracleConnection() throws SQLException{
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		Connection con = DriverManager.getConnection(url, "system", "toor");
		return con;
	}
	
	public static void cleanUp(Statement st, Connection con){
		try{
			if(st != null)	st.close();
			if(con != null)	con.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
	public static void cleanUp(ResultSet rs, Statement st, Connection con){
		try{
			if(st != null)	st.close();
			if(con != null)	con.close();
			if(rs != null)	rs.close();
		}catch(Exception e){
			System.out.println(e);
		}
	}
}
