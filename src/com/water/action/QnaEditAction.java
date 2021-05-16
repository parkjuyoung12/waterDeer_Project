package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.water.dao.BoardDAO;

public class QnaEditAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO (유효성 검사 시) 직책뿐 아니라 글쓴이가 맞는지 반드시 확인
		
		// INIT:
		ActionFoward forward = new ActionFoward();
		String url = "qnaview.myuk";
		BoardDAO dao = BoardDAO.getInstance();
		
		int num = Integer.valueOf(request.getParameter("num")) ;
		String title = request.getParameter("title") ;
		String content = request.getParameter("content") ;
		String img_name = request.getParameter("img_name") ;
		String img_path = request.getParameter("img_path") ;
		
		System.out.println("[QnaEditAction] num ==> " + num);
		System.out.println("[QnaEditAction] title ==> " + title);
		System.out.println("[QnaEditAction] content ==> " + content);
		System.out.println("[QnaEditAction] img_name ==> " + img_name);
		System.out.println("[QnaEditAction] img_path ==> " + img_path);
		
		boolean successful = dao.updateQna(num, title, content, img_name, img_path);
		if(!successful) { 
			url = "pages-error-404.myuk";
			System.out.println("NOT SUCCESSFUL - UPDATE"); 
		} else {
			System.out.println("SUCCESSFUL - UPDATE");
			url += "?num="+num;
		}
		
		forward.setPath(url);
		forward.setRedirect(true); 
		return forward;
	}
}