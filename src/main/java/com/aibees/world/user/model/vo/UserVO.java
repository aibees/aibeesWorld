package com.aibees.world.user.model.vo;

public class UserVO {
	private String id;
	private String pwd;
	private String name;
	private String role;
	private String createDate;
	private String phone;
	
	public UserVO() {
		// TODO Auto-generated constructor stub
	}

	public UserVO(String id, String pwd, String name, String role, String createDate, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.role = role;
		this.createDate = createDate;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getPhone() {
		return phone;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", role=" + role + ", createDate=" + createDate
				+ ", phoneNum=" + phone + "]";
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}