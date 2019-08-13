package com.zgzcwy.entity;

import java.io.Serializable;

public class ActiveUser implements java.io.Serializable{
    private Integer userid;		//用户表唯一标识
	private String loginname;	//用户登陆名称
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	

}
