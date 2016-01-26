package com.jmsd.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController extends BaseController{

	private static final String LOGIN = "login";//登陆页
	private static final String INDEX = "index";//首页
	
	
	
	
	//登陆
	@RequestMapping("/login")  
    public ModelAndView login(Model model,HttpServletRequest requesst){  
		return new ModelAndView(LOGIN);
	}
	
	//验证登陆
	@RequestMapping(value="/checkLogin",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView checkLogin(ModelMap loginStateMap,@RequestParam("userName") String userName,@RequestParam("passWord") String passWord){
		loginStateMap.addAttribute("loginStateMap", "1");
		return new ModelAndView(REDIRECT+"login",loginStateMap);
	}
	
	
}
