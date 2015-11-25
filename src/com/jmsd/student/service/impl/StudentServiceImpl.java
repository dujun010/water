package com.jmsd.student.service.impl;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jmsd.student.mapper.StudentMapper;
import com.jmsd.student.pojo.Student;
import com.jmsd.student.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentMapper mapper;

	@Override
	public PageMyBatis<Student> queryListByPageFully(PagingCriteria pagingCriteria) {
		// TODO Auto-generated method stub
		return mapper.queryListByPageFully(pagingCriteria);
	}
	
}
