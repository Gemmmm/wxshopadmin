package com.tc.wx.model;

import java.util.List;

public class ResultMiddle {
	
	private String tximg;
	private String username;
	private Integer lookNum=0;
	private Integer reportNum=0;
	private Integer upNum=0;
	private List list;
	public String getTximg() {
		return tximg;
	}
	public void setTximg(String tximg) {
		this.tximg = tximg;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getLookNum() {
		return lookNum;
	}
	public void setLookNum(Integer lookNum) {
		this.lookNum = lookNum;
	}
	public Integer getReportNum() {
		return reportNum;
	}
	public void setReportNum(Integer reportNum) {
		this.reportNum = reportNum;
	}
	public Integer getUpNum() {
		return upNum;
	}
	public void setUpNum(Integer upNum) {
		this.upNum = upNum;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	
}
