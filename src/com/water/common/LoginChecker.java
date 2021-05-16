package com.water.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.water.dto.MemberDTO;
import com.water.dto.MemberType;

public class LoginChecker {
	
	// 싱글톤
	private LoginChecker() {}
	private static LoginChecker instance = new LoginChecker();
	public static LoginChecker getInstance() {
		return instance;
	}
	
	public boolean isStudent(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("loginUser");
		
		return member.getMember_position() == MemberType.STUD ;
	}
	
	public boolean isProfessor(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("loginUser");
		
		return member.getMember_position() == MemberType.PROF ;
	}
	
	public boolean onLogin (HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		return session.getAttribute("loginUser") != null ;
	}
	
}
