package com.jmsd.teacher.pojo;

import java.io.Serializable;

/**
 * 教师
 * @author djun
 *
 */
public class Teacher implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String teachingCourse;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeachingCourse() {
		return teachingCourse;
	}
	public void setTeachingCourse(String teachingCourse) {
		this.teachingCourse = teachingCourse;
	}
	
	
}
