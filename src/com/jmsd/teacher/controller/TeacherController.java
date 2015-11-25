package com.jmsd.teacher.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jmsd.mybatis.DataSourceContextHolder;
import com.jmsd.mybatis.DataSourceInstances;
import com.jmsd.teacher.pojo.Teacher;
import com.jsmd.teacher.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	private static final String LIST = "teacher/teacher";
	@Autowired
	TeacherService service;
	@Autowired
	HttpServletRequest request;
	
	
	@RequestMapping(value="/list",method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView list(){
		DataSourceContextHolder.setDbType(DataSourceInstances.DS2KEY); 
		ModelAndView mav = new ModelAndView(LIST);
		List<Teacher> list = service.findAll();
		mav.addObject("list", list);
		return mav;
	}
}
