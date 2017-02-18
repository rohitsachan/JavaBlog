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

public class SubmitController extends HttpServlet{
	
	Connection con = null;
	Statement st = null;
	ResultSet re = null;
	String sno;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		ArrayList<QuesBean> items = new ArrayList<>();

		try {
			con = (Connection) JDBCUtil.getMySqlConnection();
			String sql1 = "select Serialno from springQA order by Serialno Desc limit 1";
			st = con.createStatement();
			re = st.executeQuery(sql1);
			
			while(re.next()){
				sno = re.getString(1)+1;
				System.out.println(re.next());
			}
			String Qid,Qno,Qtype,QText,Ans,AnsExt,Author,Tags,Topic;
			
			
			Qid = "Ques"+sno;
			Qno = "Q"+sno;
			QText = request.getParameter("ques");
			Ans	= request.getParameter("answer");
			Qtype = request.getParameter("QType");
			AnsExt = request.getParameter("source");
			Tags = request.getParameter("tags");
			Topic = request.getParameter("Topic");
			
			
			String sql2 = "insert into springQA(Qid,qno,Qtype,QText,Ans,AnsExt,Author,Tags,Topic) values(Qid,Qno,Qtype,QText,Ans,AnsExt,Author,Tags,Topic)";
			st = con.createStatement();
			
			int x = st.executeUpdate(sql2);
			if(x==1){
				System.out.println("record inserted");
				RequestDispatcher rd2 = request.getRequestDispatcher("admin.jsp");
				rd2.forward(request, response);
			}
			else{
				System.out.println("record not inserted");
				RequestDispatcher rd2 = request.getRequestDispatcher("submitQA.jsp");
				rd2.forward(request, response);
			}
			
		} catch (SQLException e) {
			System.out.println("can not get connection");
			e.printStackTrace();
		}finally {
			JDBCUtil.cleanUp(re, st, con);
		}

		

	}
}
