package com.app.pojos;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString(exclude="dob",callSuper = true)
@Entity
@Table(name = "student")
public class Student extends BaseEntity{
	
	@Column(name = "roll_no", unique=true)
	private String rollNo;
	@Column( length = 15)
	private String firstName;
	@Column( length = 15)
	private String lastName;
	@Column(length = 15)
	private String city;
	@Column(length = 15)
	private String courseName;
	private LocalDate dob;
	
	
}
