package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;
import com.water.dto.QnaBoardDTO;

public class QnaViewAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/qna/qnaview.jsp";

		// [1] DAO 호출 - 싱글톤
		BoardDAO dao = BoardDAO.getInstance();
		
		// [3] 작업 2에서 사용할 파라미터 구해 오기
		/** Parameter로 전달하는 것: num */
		int num = 0;
		try {
			num = Integer.valueOf( request.getParameter("num") );
		} catch(NumberFormatException e) {
			e.printStackTrace();
		}
		
		// [2] dao에서 알맞은 메서드를 골라서 반환타입, 파라미터 맞춘다.
		QnaBoardDTO notice = dao.selectqnaViewList(num);
		System.out.println(notice);
		// [4] 결과를 requestScope에 담는다.
		request.setAttribute("qnaBoard", notice);	// JSP에서 공유할 이름: noticeBoard
		
		
		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
