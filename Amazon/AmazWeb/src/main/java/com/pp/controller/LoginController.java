package com.pp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pp.model.UserDto;
import com.pp.service.LoginService;


@Controller
public class LoginController{
	
	@Autowired
	private LoginService logSer;
	
	@RequestMapping("/showLogin")
	public String showLogin(Map<String, Object> map) {
		System.out.println("Inside Login Controller");
		map.put("UserDtoKey", new UserDto());
		return "login";
	}
	
	@RequestMapping(value = "/submitLogin", method = RequestMethod.POST)
	public String submitLogin(@ModelAttribute("UserDtoKey") UserDto login) {
		System.out.println("Inside submitLogin method");
		
		System.out.println("Email: "+login.getEmailId());
		System.out.println("Password: "+login.getPassword());
		
		logSer.userSignIn(login);
		return "login";
	}
}