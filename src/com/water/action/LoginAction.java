package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.water.dao.MemberDAO;
import com.water.dto.MemberDTO;

public class LoginAction implements Action{

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
		String uri = "";
		/* String uri = "/member/login.jsp"; */
		
		HttpSession session = request.getSession();
		
		String userid = request.getParameter("member_id");
		String userpwd = request.getParameter("member_pw");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO loginUser = mDao.loginMember(userid, userpwd);
		 
		if (loginUser != null) {
			uri = "index.myuk";
			session.removeAttribute("id");
			session.setAttribute("loginUser", loginUser);
			forward.setRedirect(true);
		} else {
			// FIXME AJAX로 대체
			uri = "loginform.myuk";
			forward.setRedirect(true);
		}
		
		forward.setPath(uri);
		return forward;
	}

}// class end
