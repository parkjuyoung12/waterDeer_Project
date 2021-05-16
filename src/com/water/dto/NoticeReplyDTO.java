package com.water.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

// 애노테이션
@Getter
@Setter
@ToString
public class NoticeReplyDTO {
	
	/** 댓글 식별 번호 */
	private int num;
	/** 작성일 */
	private Timestamp indate;
	/** 댓글 내용 */
	private String content;
	/** 원글(게시글) 번호 */
	private int board_num;
	/** 댓글 작성자 */
	private String member_id;
	
}
