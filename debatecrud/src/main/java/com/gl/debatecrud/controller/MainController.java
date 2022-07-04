package com.gl.debatecrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.gl.debatecrud.dao.studentDao;
import com.gl.debatecrud.model.Student;

@Controller
public class MainController {

	@Autowired
	private studentDao studentdao;

	// Index Page
	@RequestMapping("/")
	public String index(Model m) {
		 
		List<Student> students = studentdao.getStudent();
		m.addAttribute("students",students);
		return "index";
	}

	// show student add form
	@RequestMapping("/add-student")
	public String addStudent(Model m) {
		m.addAttribute("title", "Add Student");
		return "add_student_form";
	}

	// handle student add form(saving the data)
	@RequestMapping(value = "/handle-student", method = RequestMethod.POST)
	public RedirectView handleStudent(@ModelAttribute Student student, HttpServletRequest request) {
		System.out.println(student);
		studentdao.createStudent(student);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	//handle student delete
	@RequestMapping("/delete/{studentId}")
	public RedirectView handleStudDelete(@PathVariable("studentId") int studentId,HttpServletRequest request) {
		this.studentdao.deleteSingleStudent(studentId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	//handle student edit
	@RequestMapping("/update/{studentId}")
	public String updateForm(@PathVariable("studentId") int studentId, Model m) {
		Student student = this.studentdao.fetchStudent(studentId);
		m.addAttribute("student", student);
	return "update-form";	
	}
}
