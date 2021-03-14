package com.coosi29.flatshop.controller.admin;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coosi29.flatshop.dao.RoleDao;
import com.coosi29.flatshop.model.RoleDTO;
import com.coosi29.flatshop.model.UserDTO;
import com.coosi29.flatshop.service.RoleService;
import com.coosi29.flatshop.service.UserService;

@Controller
@RequestMapping("/admin")
public class UserManagementAdminController {

	// User Manager

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	// Show all users

	@GetMapping("/user-list")
	public String userList(HttpServletRequest request) {
		int pageIndex = 0;
		int pageSize = 5;
		int totalPage = 0;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}

		int count = userService.count();
		if (count % 5 == 0) {
			totalPage = count / 5;
		} else {
			totalPage = count / 5 + 1;
		}

		request.setAttribute("totalPage", totalPage);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("users", userService.findAll(pageIndex, pageSize));
		return "admin/user/listUser";
	}

	// Create new account

	@GetMapping(value = "/user-create")
	public String userCreate(HttpServletRequest request) {
		request.setAttribute("roles", roleService.findAll());
		return "admin/user/createUser";
	}

	@PostMapping(value = "/user-create")
	public String userCreate(HttpServletRequest request, @RequestParam(name = "email") String email,
			@RequestParam(name = "fullName", required = false) String fullName,
			@RequestParam(name = "gender") boolean gender, @RequestParam(name = "phone") String phone,
			@RequestParam(name = "address") String address, @RequestParam(name = "roleId") long roleId,
			@RequestParam(name = "password") String password, @RequestParam(name = "repassword") String repassword,
			@RequestParam(name = "avatarFile") MultipartFile avatarFile) {
		
		if (userService.findByEmail(email) != null) {
			request.setAttribute("roles", roleService.findAll());
			request.setAttribute("message", "Email already exists!");
			return "admin/user/createUser";
		} else {

			UserDTO userDTO = new UserDTO();
			RoleDTO roleDTO = new RoleDTO();
			roleDTO.setRoleId(roleId);

			userDTO.setEmail(email);
			userDTO.setFullname(fullName);
			userDTO.setGender(gender);
			userDTO.setPhone(phone);
			userDTO.setAddress(address);
			userDTO.setRoleDTO(roleDTO);
			userDTO.setVerify(true);
			if (avatarFile != null && avatarFile.getSize() > 0) {
				String originalFilename = avatarFile.getOriginalFilename();
				int lastIndex = originalFilename.lastIndexOf(".");
				String ext = originalFilename.substring(lastIndex);
				String avatarFilename = System.currentTimeMillis() + ext;
				File newfile = new File("C:\\image_spring_boot\\" + avatarFilename);
				FileOutputStream fileOutputStream;
				try {
					fileOutputStream = new FileOutputStream(newfile);
					fileOutputStream.write(avatarFile.getBytes());
					fileOutputStream.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				userDTO.setAvatar(avatarFilename);
			}
			if (password.equals(repassword)) {
				userDTO.setPassword(new BCryptPasswordEncoder().encode(repassword));
				userService.insert(userDTO);
				return "redirect:../admin/user-list";
			} else {
				request.setAttribute("message", "Password do not match!");
				request.setAttribute("roles", roleService.findAll());
				return "admin/user/createUser";
			}
		}

	}

	// Update user

	@GetMapping(value = "user-update")
	public String userUpdate(HttpServletRequest request, @RequestParam(name = "userId") long userId) {
		request.setAttribute("roles", roleService.findAll());
		request.setAttribute("user", userService.findById(userId));
		return "admin/user/updateUser";
	}
	
	@PostMapping (value = "user-update")
	public String userUpdate(HttpServletRequest request, @RequestParam(name = "userId") long userId,
			@RequestParam(name = "fullName", required = false) String fullName,
			@RequestParam(name = "gender") boolean gender, @RequestParam(name = "phone") String phone,
			@RequestParam(name = "address") String address, @RequestParam(name = "roleId") long roleId,
			@RequestParam(name = "password", required = false) String password, @RequestParam(name = "repassword", required = false) String repassword,
			@RequestParam(name = "avatarFile") MultipartFile avatarFile,
			@RequestParam(name = "avatar") String avatar) {
		
		UserDTO userDTO = userService.findById(userId);
		RoleDTO roleDTO = new RoleDTO();
		roleDTO.setRoleId(roleId);
  
		userDTO.setFullname(fullName);
		userDTO.setGender(gender);
		userDTO.setPhone(phone);
		userDTO.setAddress(address);
		userDTO.setRoleDTO(roleDTO);
		if (avatarFile != null && avatarFile.getSize() > 0) {
			String originalFilename = avatarFile.getOriginalFilename();
			int lastIndex = originalFilename.lastIndexOf(".");
			String ext = originalFilename.substring(lastIndex);
			String avatarFilename = System.currentTimeMillis() + ext;
			File newfile = new File("C:\\image_spring_boot\\" + avatarFilename);
			FileOutputStream fileOutputStream;
			try {
				fileOutputStream = new FileOutputStream(newfile);
				fileOutputStream.write(avatarFile.getBytes());
				fileOutputStream.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			userDTO.setAvatar(avatarFilename);
		}
		if (password.equals(repassword) && password != null) {
			userDTO.setPassword(new BCryptPasswordEncoder().encode(repassword));
			userService.update(userDTO);
			return "redirect:../admin/user-list";
		} else {
			request.setAttribute("message", "Password do not match!");
			request.setAttribute("roles", roleService.findAll());
			request.setAttribute("user", userService.findById(userId));
			return "admin/user/updateUser";
		}
	}

	// Delete user

	@GetMapping(value = "/user-delete")
	public String userDelete(HttpServletRequest request) {
		String[] userIds = request.getParameterValues("userId");
		for (String userId : userIds) {
			userService.delete(Long.parseLong(userId));
		}
		return "redirect:/admin/user-list";
	}
}
