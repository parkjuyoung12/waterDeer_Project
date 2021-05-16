package com.water.dto;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CourseDTO implements Serializable {
	
	private static final long serialVersionUID = -3822864982046603471L;
	
	// DB Table
	/** 강좌 코드 */
	private String course_code;
	/** 수강 가능 학생ㅠ 수 */
	private int course_stud_lim;
	/** 분반 번호: FIXME 지금은 그냥 다 0 넣기 */
	private int course_part;
	/** 교수 아이디 */
	private String prof_id;
	/** 과목 코드 */
	private String subj_code;
	/** 강의실 코드 */
	private String room_code;
	/** 연/학기 코드 */
	private String peri_code;
	// 이 위로는 pro
	
	private String subj_dept;
	
	private String subj_dept_name;
	
	// 그 외
	/** 과목 이름 */
	private String subj_name;
	/** 교수 이름 */
	private String prof_name;
	/** 강의실 이름 */
	private String room_name;
	/** 시간표 */
	private List<String> time_table;
	
}
