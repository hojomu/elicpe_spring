package org.hj.model;

public class LoginVO {

	
	private String id;
	private String password;
	private String addr;
	private String phone;
	private String email;
	private String name;
	private String birthday;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setge(String birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", password=" + password + ", addr=" + addr + ", phone=" + phone + ", email="
				+ email + ", name=" + name + ", birthday=" + birthday + "]";
	}
	
	
	
	
}
