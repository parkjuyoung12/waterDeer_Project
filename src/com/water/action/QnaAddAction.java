package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;

public class QnaAddAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		String course_code = request.getParameter("course_code");
		String url = "qnaboard.myuk" ;
		if(course_code != null)  
		{
			url += "?course_code="+course_code; // 현개 강좌의 게시글 목록
		} else {
			System.out.println("\n\n\n[QnaAddAction] course_code IS NULL.\n\n\n");
			url = "pages-error-404.myuk";
			forward.setPath(url);
			forward.setRedirect(true);
			return forward;
		}
		
		BoardDAO dao = BoardDAO.getInstance();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String img_path = request.getParameter("img_path");
		String img_name = request.getParameter("img_name");
		// String course_code = request.getParameter("course_code");
		boolean successful = dao.insertqna(title, content, img_path, img_name, course_code);
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
}
