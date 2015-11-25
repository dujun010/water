package com.jmsd.student.service;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;

import com.jmsd.student.pojo.Student;

public interface StudentService {
	public PageMyBatis<Student> queryListByPageFully(PagingCriteria pagingCriteria);
}
