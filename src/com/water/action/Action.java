package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.common.LoginChecker;

public interface Action {
	/** TODO 권한 및 로그인 여부를 확인하는 객체 */
	final static public LoginChecker LOGIN_CHECKER = LoginChecker.getInstance();
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}// interface end
