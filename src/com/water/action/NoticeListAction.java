package com.water.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;
import com.water.dao.CourseDAO;
import com.water.dto.CourseDTO;
import com.water.dto.MemberDTO;
import com.water.dto.NoticeBoardDTO;

public class NoticeListAction implements Action {
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		
		// 유효성 검사: 로그인 상태
		if( !LOGIN_CHECKER.onLogin(request, response) ) {
			String uri = "loginform.myuk";
			forward.setPath(uri);
			forward.setRedirect(true);
			return forward;
		}
		
		// INIT:
		String url = "./notice/noticeboard.jsp";
		BoardDAO dao = BoardDAO.getInstance();

		MemberDTO loginUser = (MemberDTO)request.getSession().getAttribute("loginUser");
		List<CourseDTO> courseList = loginUser.getCourse_list();
		List<NoticeBoardDTO> noticeBoardList;
		
		String course_code = request.getParameter("course_code");
		if( course_code == null) {
			noticeBoardList = dao.selectNoticeList( courseList.get(0).getCourse_code() );
		} else {
			noticeBoardList = dao.selectNoticeList( course_code );
		}
		
		// 해당 강좌의 공지 목록
		request.setAttribute("course_code", course_code);
		request.setAttribute("noticeBoardList", noticeBoardList);
		
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
	
	
	
	
	
	
	
	
	
	
	
	

	/*
	 * @Override public ActionFoward excute(HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * 
	 * String url = "./notice/noticeboard.jsp";
	 * 
	 * // FIXME 이 요청이 왔을 때, 해당 사람이 듣거나 진행하는 강좌 중 하나를 골라 주어야 함. BoardDAO bDao =
	 * BoardDAO.getInstance(); String course_code =
	 * request.getParameter("course_code"); if(course_code==null) {
	 * System.out.println("[ TEST for NOTICE BOARD(RANDOM COURSE-CODE) ] COURSE-1");
	 * course_code = "COURSE-1"; } // FIXME 우선 테스트하는 동안 COURSE-1으로 보내기로 했음. String
	 * _pageNum = request.getParameter("pageNum"); int pageNum = Integer.valueOf(
	 * _pageNum!=null? _pageNum:"1" ); // 렉 먹음 List<NoticeBoardDTO> boardList =
	 * bDao.getBoardList(course_code, pageNum);
	 * 
	 * for(NoticeBoardDTO dto : boardList) { System.out.println(dto); }
	 * 
	 * request.setAttribute("boardList", boardList);
	 * 
	 * ActionFoward foward = new ActionFoward(); foward.setPath(url);
	 * foward.setRedirect(false);// false: forwarding, true: redirect return foward;
	 * }
	 */
}