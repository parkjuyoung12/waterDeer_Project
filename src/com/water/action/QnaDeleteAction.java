package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;


public class QnaDeleteAction implements Action{
	// FIXME 삭제기능 구현하기. 누르면 삭제는 되나 
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		String uri = "qnaboard.myuk";
		
		BoardDAO dao = BoardDAO.getInstance();
		
		String strNum = request.getParameter("num");
		int num = 0;
		try {
			num = Integer.valueOf(strNum);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		boolean successful = dao.deleteQna(num);
		
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
