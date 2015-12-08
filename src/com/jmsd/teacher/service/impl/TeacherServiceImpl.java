package com.jmsd.teacher.service.impl;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jmsd.teacher.mapper.TeacherMapper;
import com.jmsd.teacher.pojo.Teacher;
import com.jsmd.teacher.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper mapper;

	@Override
	public PageMyBatis<Teacher> queryListByPageFully(
			PagingCriteria pagingCriteria) {
		// TODO Auto-generated method stub
		return mapper.queryListByPageFully(pagingCriteria);
	}
	
}
