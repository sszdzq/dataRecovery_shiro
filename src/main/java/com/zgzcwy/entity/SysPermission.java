package com.zgzcwy.entity;

import java.io.Serializable;

public class SysPermission implements Serializable{
	private static final long serialVersionUID = -5844240676040884559L;
	private Integer id;
	private String name;
	private String fnpath;
	private String description;
	private String percode;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFnpath() {
		return fnpath;
	}
	public void setFnpath(String fnpath) {
		this.fnpath = fnpath;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPercode() {
		return percode;
	}
	public void setPercode(String percode) {
		this.percode = percode;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}