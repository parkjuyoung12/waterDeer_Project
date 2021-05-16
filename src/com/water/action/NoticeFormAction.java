package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.water.dao.BoardDAO;

public class NoticeFormAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "./notice/noticeform.jsp";
		
		String course_code = request.getParameter("course_code");
		System.out.println("[NoticeFormAction] course_code: "+ course_code);
		
		request.setAttribute("course_code", course_code);
		
		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
}
