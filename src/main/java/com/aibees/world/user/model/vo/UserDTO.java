package com.aibees.world.user.model.vo;

public class UserDTO {
	private String id;
	private String pwd;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public UserDTO(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
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

	@Override
	public String toString() {
		return "UserrDTO [id=" + id + ", pwd=" + pwd + "]";
	}
}