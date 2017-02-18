package com.java.blog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet{

	Connection con = null;
	Statement st = null;
	ResultSet re = null;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String us, pw;
		PrintWriter out;
		ArrayList<QuesBean> items = new ArrayList<>();

		try {
			con = (Connection) JDBCUtil.getMySqlConnection();
			
			us = request.getParameter("username");
			pw = request.getParameter("password");
			
			String sql1 = "select username, password from login where username='"+us+"' and password='"+pw+"'";
			st = con.createStatement();
			re = st.executeQuery(sql1);
//			int x = st.executeUpdate(sql1);
			if (re.next() == true){
				request.getSession().setAttribute("username",us);
				RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
				rd.forward(request, response);
			}else{
				out = response.getWriter();
				out.write("<h2><font color='red'>Sorry!!! Username or Password is invalid</font></h2>");
			}
			
		} catch (SQLException e) {
			System.out.println("can not get connection");
			e.printStackTrace();
		}finally {
			JDBCUtil.cleanUp(re, st, con);
		}

		request.getSession().setAttribute("items",items);
		
	}
}
