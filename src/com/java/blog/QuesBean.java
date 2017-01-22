package com.java.blog;

import java.io.Serializable;

public class QuesBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1369L;
	
	private String Qid,Qno,Que,Ans;

	public QuesBean(){}

	public QuesBean(String qid, String qno, String que, String ans) {
		super();
		Qid = qid;
		Qno = qno;
		Que = que;
		Ans = ans;
	}

	public String getQid() {
		return Qid;
	}

	public void setQid(String qid) {
		Qid = qid;
	}

	public String getQno() {
		return Qno;
	}

	public void setQno(String qno) {
		Qno = qno;
	}

	public String getQue() {
		return Que;
	}

	public void setQue(String que) {
		Que = que;
	}

	public String getAns() {
		return Ans;
	}

	public void setAns(String ans) {
		Ans = ans;
	}
	
	
	
}
