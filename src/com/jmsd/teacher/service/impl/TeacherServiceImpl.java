package com.jmsd.teacher.service.impl;

import java.util.List;

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
	public List<Teacher> findAll() {
		// TODO Auto-generated method stub
		return mapper.findAll();
	}
	
}
