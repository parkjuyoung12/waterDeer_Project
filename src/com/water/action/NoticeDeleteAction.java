package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;


public class NoticeDeleteAction implements Action{

	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		String uri = "noticeList.myuk";
		
		BoardDAO dao = BoardDAO.getInstance();
		
		String strNum = request.getParameter("num");
		int num = 0;
		try {
			num = Integer.valueOf(strNum);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean successful = dao.deleteNotice(num);
		if( successful ) {
			System.out.println("SUCCESSFUL DELETE");
		} else {
			System.out.println("NOT SUCCESSFUL DELETE");
			uri = "pages-error-404.myuk";
		}
		
		forward.setPath(uri);
		forward.setRedirect(true);
		return forward;
	}
	
}
