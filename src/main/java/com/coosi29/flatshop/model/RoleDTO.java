package com.coosi29.flatshop.model;

import java.util.List;

public class RoleDTO {

	private long roleId;
	private String roleName;
	private List<UserDTO> userDTOs;
	
	public RoleDTO() {
		// TODO Auto-generated constructor stub
	}

	public RoleDTO(long roleId, String roleName, List<UserDTO> userDTOs) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.userDTOs = userDTOs;
	}

	public long getRoleId() {
		return roleId;
	}

	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public List<UserDTO> getUserDTOs() {
		return userDTOs;
	}

	public void setUserDTOs(List<UserDTO> userDTOs) {
		this.userDTOs = userDTOs;
	}
	
	
}
