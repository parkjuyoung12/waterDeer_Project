package com.water.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TimetableDTO {
	
	// DB TABLE COLUMNS:
	/** 요일 */
	private List<String> course_day;
	/** 요일 */
	private List<String> daily_period;
	/** 어느 강좌(과목, 교수 포함)인지 */
	private String course_code;
	
	// Others:
	/** 과목 코드 by coure_code */
	private String subj_code;
	/** 과목 이름 by course_code */
	private String subj_name;
	/** 교수 아이디 by course_code */
	private String prof_id;
	/** 교수 이름 by course_code */
	private String prof_name;
	
	public TimetableDTO() {
	}
	
	public void setTimetable( List<String> list ) {
		
		this.course_day = new ArrayList<>();
		this.daily_period = new ArrayList<>();
		
		for(int i=0; i<list.size(); i++) {
			String []splitted = list.get(i).split("-");
			this.course_day.add(splitted[0]);
			this.daily_period.add(splitted[1]);
		}
		
	}
	
	public void splitAndSetTimetable( String list, String outerGooboonja ) {
		String []splittedOnce = list.split(outerGooboonja);
		List<String> splittedOnceList = new ArrayList<>();
		for(int i=0; i<splittedOnce.length; i++) {
			splittedOnceList.add( splittedOnce[i] );
		}
		setTimetable( splittedOnceList );
	}
	
}
