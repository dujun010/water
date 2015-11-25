package com.jmsd.student.mapper;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;

import com.jmsd.student.pojo.Student;

public interface StudentMapper {
	PageMyBatis<Student> queryListByPageFully(PagingCriteria pagingCriteria);
}
