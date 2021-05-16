package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.water.dao.BoardDAO;
import com.water.dto.QnaBoardDTO;

public class QnaEditFormAction implements Action{
	
	private static int come_cnt= 0;
	
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO (유효성 검사 시) 직책뿐 아니라 글쓴이가 맞는지 반드시 확인
		
		// INIT:
		String url = "/qna/qnaUpdateForm.jsp";
		BoardDAO dao = BoardDAO.getInstance(); 			// DAO 불러오기
		String numStr = request.getParameter("num"); 	// 요청에 담긴 글 번호 (/noticeEditForm.myuk?num=1)
		come_cnt++;
		System.out.println(come_cnt +"회차 방문. numstr: "+ numStr); 
		
		int num = 0;
		num = Integer.valueOf(numStr);
		QnaBoardDTO qna = dao.selectqnaViewList(num);
		System.out.println(qna);
		request.setAttribute("qnaBoard", qna);

		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false); 
		return forward;
	}
}