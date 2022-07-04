package com.gl.debatecrud.dao;

import java.util.List;

import javax.transaction.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gl.debatecrud.model.Student;

@Component
public class studentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// save the student details
	@Transactional
	public void createStudent(Student student) {
		this.hibernateTemplate.saveOrUpdate(student);
	}

	// select all/fetch details
	public List<Student> getStudent() {
		List<Student> studentList = this.hibernateTemplate.loadAll(Student.class);
		return studentList;
	}

	// Delete a single record
	@Transactional
	public void deleteSingleStudent(int studID) {
		Student singleID = this.hibernateTemplate.load(Student.class, studID);
		this.hibernateTemplate.delete(singleID);
	}

	// Read a single record
	public Student fetchStudent(int studID) {
		return this.hibernateTemplate.get(Student.class, studID);
	}
}
