package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QnaFormAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "./qna/qnaform.jsp";
		
		String course_code = request.getParameter("course_code");
		System.out.println("[QnaFormAction] course_code: "+ course_code);
		
		request.setAttribute("course_code", course_code);
		
		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
}
