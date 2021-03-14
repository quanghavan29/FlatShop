package com.coosi29.flatshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coosi29.flatshop.dao.RoleDao;
import com.coosi29.flatshop.entity.Role;
import com.coosi29.flatshop.model.RoleDTO;
import com.coosi29.flatshop.service.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public List<RoleDTO> findAll() {
		List<Role> roles = roleDao.findAll();
		List<RoleDTO> roleDTOs = new ArrayList<RoleDTO>();
		for (Role role : roles) {
			RoleDTO roleDTO = new RoleDTO();
			roleDTO.setRoleId(role.getRoleId());
			roleDTO.setRoleName(role.getRoleName());
			roleDTOs.add(roleDTO);
		}
		return roleDTOs;
	}
	
	
	
}
