package com.water.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.BoardDAO;
import com.water.dto.CourseDTO;
import com.water.dto.MemberDTO;
import com.water.dto.NoticeBoardDTO;
import com.water.dto.QnaBoardDTO;


public class IndexAction implements Action{

	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionFoward forward = new ActionFoward();
		
		
		if( !LOGIN_CHECKER.onLogin(request, response) ) {
			String uri = "loginform.myuk";
			forward.setPath(uri);
			forward.setRedirect(true);
			return forward;
		}
		
		BoardDAO dao = BoardDAO.getInstance();
		
		MemberDTO loginUser = (MemberDTO)request.getSession().getAttribute("loginUser");
		// FIXME (학생이 수강하고 있는 강좌가 없을 때에 대한 예외처리)
		List<CourseDTO> courseList = loginUser.getCourse_list();
		List<NoticeBoardDTO> noticeBoardList;
		
		String course_code = request.getParameter("course_code");
		if( course_code == null) {
			noticeBoardList = dao.selectNoticeList( courseList.get(0).getCourse_code() );
		} else {
			noticeBoardList = dao.selectNoticeList( course_code );
		}
		
		// FIXME 질문응답 index에 뿌려주기
		
		// 해당 강좌의 공지 목록
//		request.setAttribute("course_code", course_code);
//		request.setAttribute("noticeBoardList", noticeBoardList);		
		request.setAttribute("course_code", course_code);
		request.setAttribute("noticeBoardList", noticeBoardList);		
		
		
		String uri = "index.jsp";
		
		forward.setPath(uri);
		forward.setRedirect(false);
		return forward;
	}
	
}
