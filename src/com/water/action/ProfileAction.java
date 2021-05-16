package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileAction implements Action {
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "./member/pages-profile.jsp";

		ActionFoward foward = new ActionFoward();
		foward.setPath(url);
		foward.setRedirect(false);
		return foward;
	}

}
