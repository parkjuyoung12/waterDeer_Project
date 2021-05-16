package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFormAction implements Action{

	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		if( LOGIN_CHECKER.onLogin(request, response) ) {
			String uri = "index.myuk";
			forward.setPath(uri);
			forward.setRedirect(true);
			return forward;
		}
		
		String url = "./loginform.jsp";
		
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
