package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ErrorAction implements Action{
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "./pages-error-404.jsp";
		
		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
		
	}

}
