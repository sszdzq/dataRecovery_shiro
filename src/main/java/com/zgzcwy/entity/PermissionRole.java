package com.zgzcwy.entity;

public class PermissionRole implements java.io.Serializable{
	private static final long serialVersionUID = -5844240676040884559L;
	private Integer id;
	private String roleid;
	private String permissionid;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public String getPermissionid() {
		return permissionid;
	}

	public void setPermissionid(String permissionid) {
		this.permissionid = permissionid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}