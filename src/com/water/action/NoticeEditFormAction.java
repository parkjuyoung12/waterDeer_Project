package com.water.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;

import com.water.common.FileUpLoad;
import com.water.dao.BoardDAO;
import com.water.dto.NoticeBoardDTO;

public class NoticeEditFormAction implements Action{
	
	private static int come_cnt= 0;
	
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO (유효성 검사 시) 직책뿐 아니라 글쓴이가 맞는지 반드시 확인
		
		// INIT:
		String url = "/notice/noticeUpdateForm.jsp";
		BoardDAO dao = BoardDAO.getInstance(); 			// DAO 불러오기
		String numStr = request.getParameter("num"); 	// 요청에 담긴 글 번호 (/noticeEditForm.myuk?num=1)
		come_cnt++;
		System.out.println(come_cnt +"회차 방문. numstr: "+ numStr); 
		
		int num = 0;
		num = Integer.valueOf(numStr);
		
		NoticeBoardDTO notice = dao.selectNoticeView(num);
		request.setAttribute("noticeBoard", notice);

		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false); 
		return forward;
	}
}