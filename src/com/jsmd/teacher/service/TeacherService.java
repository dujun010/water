package com.jsmd.teacher.service;


import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;

import com.jmsd.teacher.pojo.Teacher;

public interface TeacherService {
	public PageMyBatis<Teacher> queryListByPageFully(PagingCriteria pagingCriteria);
}
