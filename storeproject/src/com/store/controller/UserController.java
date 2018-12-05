package com.store.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.store.entity.UserEntity;
import com.store.model.User;
import com.store.service.UserService;

@Controller
@Scope("session")
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute User user) {
		UserEntity userEntity = new UserEntity();
		userEntity.setName(user.getName());
		userEntity.setUsername(user.getUsername());
		userEntity.setPassword(user.getPassword());
		userEntity.setMobile(user.getMobile());
		userEntity.setEmail(user.getEmail());
		userEntity.setAddress(user.getAddress());
		int i = userService.registerUser(userEntity);

		if (i > 0)
			return new ModelAndView("index");
		else
			return new ModelAndView("registerError");

	}

	@RequestMapping("/login")
	public ModelAndView loginUser(@ModelAttribute User user, HttpSession session) {
		int flag = 0;
		UserEntity userEntity = new UserEntity();
		userEntity.setUsername(user.getUsername());
		userEntity.setPassword(user.getPassword());
		List list = userService.loginUser(userEntity);		
		ModelAndView mav=new ModelAndView();
		for (Iterator iterator = list.iterator(); iterator.hasNext();){
            UserEntity empEntity = (UserEntity) iterator.next(); 
            flag = 1;
         }
		if (flag == 1) {
			mav.addObject("emp", list);
			session.setAttribute("userSession", list);
			mav.setViewName("index");
			return mav;
			}
		else {
			if (user.getId()==0) {
				ModelAndView mav1=new ModelAndView();
				mav1.addObject("error",new String("....If already registered, Please login and check profile"));
				mav1.setViewName("errorLogin");
				return mav1;
			}
			else {
			return new ModelAndView("errorLogin");
			}
			}
	}

	@RequestMapping("/smartphones")
	public ModelAndView smartphones() {
		return new ModelAndView("smartphones");
	}
	
	
	@RequestMapping("/laptops")
	public ModelAndView laptops() {
		return new ModelAndView("laptops");
	}
	
	@RequestMapping("/harddiskes")
	public ModelAndView harddiskes() {
		return new ModelAndView("harddiskes");
	}
	
	@RequestMapping("/memorycards")
	public ModelAndView memorycards() {
		return new ModelAndView("memorycards");
	}
	
	@RequestMapping("/powerbanks")
	public ModelAndView powerbanks() {
		return new ModelAndView("powerbanks");
	}
	
	@RequestMapping("/logout")
	public ModelAndView loginuser(HttpSession session) {
		session.invalidate();
		return new ModelAndView("login");
		
	}		
}
