package com.water.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomDTO {
	
	// DB TABLE COLUMNS:
	/** 강의실 코드 */
	private String room_code;
	/** 건물 코드 [외래키: uni_building(build_code)] */
	private String build_code;
	/** 강의실 이름 */
	private String room_name;
	/** 강의실 최대 수용 인원 */
	private String room_stud_size;
	
	// Others: DB 컬럼에는 없지만 내가 JSP 등에 데이터 전달할 때 필요
	/** 건물 이름 */
	private String build_name;
}
