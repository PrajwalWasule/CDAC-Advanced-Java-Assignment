package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Student;

public interface StudentDao extends JpaRepository<Student, Long> {
	//for adding student details: use inherited api: save
	

}
