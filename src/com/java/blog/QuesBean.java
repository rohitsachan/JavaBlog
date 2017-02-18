package com.java.blog;

import java.io.Serializable;

public class QuesBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1369L;
	
	private String Qid,Qno,Que,ansid,Ans,Source;

	public QuesBean(){}

	public QuesBean(String qid, String qno, String que, String ansid, String ans, String source) {
		super();
		Qid = qid;
		Qno = qno;
		Que = que;
		this.ansid = ansid;
		Ans = ans;
		Source = source;
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

	public String getAnsid() {
		return ansid;
	}

	public void setAnsid(String ansid) {
		this.ansid = ansid;
	}

	public String getAns() {
		return Ans;
	}

	public void setAns(String ans) {
		Ans = ans;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	@Override
	public String toString() {
		return "QuesBean [Qid=" + Qid + ", Qno=" + Qno + ", Que=" + Que + ", ansid=" + ansid + ", Ans=" + Ans
				+ ", Source=" + Source + "]";
	}

	
	
	
}
