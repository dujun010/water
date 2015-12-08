package com.jmsd.teacher.mapper;

import org.mybatis.pagination.dto.PageMyBatis;
import org.mybatis.pagination.dto.datatables.PagingCriteria;

import com.jmsd.teacher.pojo.Teacher;

public interface TeacherMapper {
	PageMyBatis<Teacher> queryListByPageFully(PagingCriteria pagingCriteria);
}
