package com.rupcharcha.controllers;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rupcharcha.dao.UserDao;
import com.rupcharcha.entity.User;

@Controller
public class ErosController {

	@Autowired
	UserDao userDao;
	
	@RequestMapping("/home")
	public String homePage() {
		
		return "home-page";
	}
	
	@RequestMapping("/user-login")
	public String loginPage() {
		
		return "login-page" ;
	}
	
	
	@RequestMapping(path = "login-process", method = RequestMethod.POST)
	public String loginProcess(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
		User user = userDao.loginUser(email, password);
		if (user != null) {
			session.setAttribute("loginSuccess", user);
			return "redirect:/home";
		}else {
			session.setAttribute("msg", "Login Failed! User or Password was wrong!");
			return "login-page";
		}
		
	}
	
	
	@RequestMapping("user-registration")
	public String registerPage() {
		
		return "register-page";
	}
	
	@RequestMapping(path = "registration-process", method = RequestMethod.POST)
	public String registrationProcess(@ModelAttribute User user, HttpSession session) {
		int i = userDao.registerUser(user);
		if (i>0) {
			session.setAttribute("msg" , "Registration Success! Please Login...");
			return "redirect:/user-login";
		}else {
			session.setAttribute("msg", "Registration Failed!");
			return "register-page";
		}
	}
	
}
