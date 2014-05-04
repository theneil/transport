package com.transport.object;


public class User  {
	private Long id;
	private String username;
	private String password;
	private String employcode;
	private String role;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmploycode() {
		return employcode;
	}
	public void setEmploycode(String employcode) {
		this.employcode = employcode;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}