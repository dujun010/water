package com.jmsd.teacher.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;
import org.mybatis.pagination.dto.datatables.SortDirection;
import org.mybatis.pagination.dto.datatables.SortField;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
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
	public ModelAndView list(Model model){
		//数据库驱动
		DataSourceContextHolder.setDbType(DataSourceInstances.DS2KEY);
		
		String pageNum = request.getParameter("pageNum");
		String pageSize = request.getParameter("pageSize");
		
		//分页
		int intPage = Integer.parseInt(pageNum == null || pageNum.equals("") ? "0" : pageNum);//当前页
		int intPageSize = Integer.parseInt(pageSize == null || pageSize.equals("") ? "20" : pageSize);//每页大小
		int start = (intPage-1) * intPageSize;//
		
		//SQL
		String sqlCon = "";
		
		//排序
		List<SortField> sortFields = Lists.newArrayList();
		sortFields.add(new SortField("id", SortDirection.ASC));
		
		//mybatis 分页
		PagingCriteria baseCriteria = PagingCriteria.createCriteriaWithAllParamter(start, intPageSize, intPage-1, sortFields, sqlCon);
		
		PageMyBatis<Teacher> pageMyBatis = this.service.queryListByPageFully(baseCriteria);
		long totalCount = pageMyBatis.getTotal();
		
		model.addAttribute("totalcount", totalCount);
		model.addAttribute("numPerPage", intPageSize);
		model.addAttribute("currentPage", intPage);
		model.addAttribute("list", pageMyBatis);
		return new ModelAndView(LIST);
	}
}
