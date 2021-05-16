package com.water.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class QnaBoardDTO {
	
	private int num;
	/** 작성일 */
	private Timestamp indate;
	/** 제목 */
	private String secret;
	/** 제목 */
	private String title;
	/** 서버상 이미지경로 */
	private String img_path;
	/** 내용 */
	private String content;
	/** 이미지 이름 */
	private String img_name;
	/** 조회수 */
	private String read_count;
	/** 댓글 */
	private int ref_num;
	/** 과목 및 분반 식별 번호 */
	private String course_code;
	/** 회원 아이디 */
	private String member_id;
	/** 회원 이름 */
	private String member_name;

}
