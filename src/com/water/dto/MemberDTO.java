package com.water.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO implements Serializable {
	
	private static final long serialVersionUID = 6114295115407280917L;
	
	private String member_id;
	private String member_pw;
	private String member_numb;
	private String member_name;
	private int member_age;
	private String member_gender;
	private MemberType member_position;
	private String member_join_date;
	private String member_gradu_date;
	private int member_grade;
	private String dept_code;
	private String credit_ref_code;
	private String member_minor;
	private String member_dual_major;
	private String member_birth;
	
	private List<CourseDTO> course_list ;
	
	public MemberDTO() {
		
	}
	
}
