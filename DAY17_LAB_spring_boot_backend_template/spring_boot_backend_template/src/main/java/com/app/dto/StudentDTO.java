package com.app.dto;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty.Access;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString

public class StudentDTO {
	//serializable
	@JsonProperty(access = Access.READ_ONLY)
	private Long id;
	private String rollNo;
	private String firstName;
	private String lastName;
	private String city;
	private String courseName;
	private LocalDate dob;

}
