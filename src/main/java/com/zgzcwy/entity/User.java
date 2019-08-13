package com.zgzcwy.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @ClassName:  User   
 * @Description: User表对应的实体类 
 * @author: Jayden  
 * @date:   2017年9月4日 下午3:12:14   
 *
 */
public class User implements Serializable{
	
	private static final long serialVersionUID = 2627916739056147414L;
	private Integer userid;		//用户表唯一标识
	private String loginname;	//用户登陆名称
	private String password;	//用户登陆密码
	private Integer status;		//用户状态码
	private String realname;	//用户真实姓名
	private String phone;	//用户联系电话
	private String address;		//用户联系地址
	private String email;		//用户电子邮件地址
	private String remark;		//备注
	private Date logintime;		//用户登陆系统时间
	private Date logouttime;	//用户登出系统时间
	private String department;	//所属部门
	private Integer roleid;		//外键
	private String custom01;	//待修改01
	private String custom02;	//待修改02
	private String custom03;	//待修改03
	private String custom04;	//待修改04
	private String custom05;	//待修改05
	private String salt;        //盐
	
	/**
	 * 空参构造
	 */
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 满参构造
	 */
	public User(Integer userid, String loginname, String password, Integer status, String realname, String phone,
			String address, String email, String remark, Date logintime, Date logouttime, String department,
			Integer roleid, String custom01, String custom02, String custom03, String custom04, String custom05) {
		super();
		this.userid = userid;
		this.loginname = loginname;
		this.password = password;
		this.status = status;
		this.realname = realname;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.remark = remark;
		this.logintime = logintime;
		this.logouttime = logouttime;
		this.department = department;
		this.roleid = roleid;
		this.custom01 = custom01;
		this.custom02 = custom02;
		this.custom03 = custom03;
		this.custom04 = custom04;
		this.custom05 = custom05;
	}
	
	/**
	 * get/set方法
	 */
	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getLogintime() {
		return logintime;
	}
	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}
	public Date getLogouttime() {
		return logouttime;
	}
	public void setLogouttime(Date logouttime) {
		this.logouttime = logouttime;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public Integer getRoleid() {
		return roleid;
	}
	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}
	public String getCustom01() {
		return custom01;
	}
	public void setCustom01(String custom01) {
		this.custom01 = custom01;
	}
	public String getCustom02() {
		return custom02;
	}
	public void setCustom02(String custom02) {
		this.custom02 = custom02;
	}
	public String getCustom03() {
		return custom03;
	}
	public void setCustom03(String custom03) {
		this.custom03 = custom03;
	}
	public String getCustom04() {
		return custom04;
	}
	public void setCustom04(String custom04) {
		this.custom04 = custom04;
	}
	public String getCustom05() {
		return custom05;
	}
	public void setCustom05(String custom05) {
		this.custom05 = custom05;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	/**
	 * toString方法
	 */
	@Override
	public String toString() {
		return "User [userid=" + userid + ", loginname=" + loginname + ", password=" + password + ", status=" + status
				+ ", realname=" + realname + ", phone=" + phone + ", address=" + address + ", email=" + email
				+ ", remark=" + remark + ", logintime=" + logintime + ", logouttime=" + logouttime + ", department="
				+ department + ", roleid=" + roleid + ", custom01=" + custom01 + ", custom02=" + custom02
				+ ", custom03=" + custom03 + ", custom04=" + custom04 + ", custom05=" + custom05 + "]";
	}
	
	
}   
