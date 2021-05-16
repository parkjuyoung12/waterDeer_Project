package com.water.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

// 애노테이션
@Getter
@Setter
@ToString
public class NoticeBoardDTO {
	
	/** 글 번호 */
	private int num;
	/** 작성일 */
	private Timestamp indate;
	/** 제목 */
	private String title;
	/** 내용 */
	private String content;
	/** 서버상 이미지경로 */
	private String img_path;
	/** 이미지 이름 */
	private String img_name;
	/** 과목 및 분반 식별 번호 */
	private String course_code;
	/** 조회수 */
	private int read_count;

	/** 작성자(교수) 이름<br>[JOIN: uni_member(member_name)] */
	private String member_name;
	
}
