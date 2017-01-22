package com.java.blog;

import java.io.IOException;
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

/**
 * Servlet implementation class Hello
 */
//@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	Statement st = null;
	ResultSet re = null;
	
	String Qid,Qno,Que,Ans;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ArrayList<QuesBean> items = new ArrayList<>();
		
		try {
			con = (Connection) JDBCUtil.getMySqlConnection();
			String sql = "select * from springQA order by Serialno Asc";
			st = con.createStatement();
			re = st.executeQuery(sql);
			
			
			while(re.next()){
				QuesBean bean = new QuesBean();
				Qid = re.getString(2);
				Qno = re.getString(3);
				Que = re.getString(5);
				Ans = re.getString(6);
				
				bean.setQid(Qid);
				bean.setQno(Qno);
				bean.setQue(Que);
				bean.setAns(Ans);
				
				items.add(bean);
				
				System.out.println(Qid+"\t"+Qno+"\t"+Que+"\t"+Ans);
			}
			
		} catch (SQLException e) {
			System.out.println("can not get connection");
			e.printStackTrace();
		}finally {
			JDBCUtil.cleanUp(re, st, con);
		}
		
		 request.getSession().setAttribute("items",items);
			System.out.println("......................");
			System.out.println(items);


		 
//		RequestDispatcher rd1 = request.getRequestDispatcher("template.jsp");
//		rd1.include(request, response);
		RequestDispatcher rd2 = request.getRequestDispatcher("index.jsp");
		rd2.forward(request, response);
	}

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
