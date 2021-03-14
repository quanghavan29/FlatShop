package com.coosi29.flatshop.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.coosi29.flatshop.entity.Role;

public class UserPrincipal extends User {

	
	private static final long serialVersionUID = 1L;

	public UserPrincipal(String email, String phone, String password, Collection<? extends GrantedAuthority> authorities) {
		super(email, password, authorities);
		this.phone = phone;
	}

	private long userId;
	private String email;
	private String password;
	private String fullname;
	private String phone;
	private String address;
	private boolean gender;
	private boolean verify;
	private Role role;
	private String avatar;

	public UserPrincipal(String username, String password, Collection<? extends GrantedAuthority> authorities, long userId,
			String email, String password2, String fullname, String phone, String address, boolean gender,
			boolean verify, Role role, String avatar) {
		super(username, password, authorities);
		this.userId = userId;
		this.email = email;
		password = password2;
		this.fullname = fullname;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.verify = verify;
		this.role = role;
		this.avatar = avatar;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public boolean isVerify() {
		return verify;
	}

	public void setVerify(boolean verify) {
		this.verify = verify;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

}
