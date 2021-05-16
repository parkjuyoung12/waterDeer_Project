package com.water.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.water.dao.BoardDAO;
import com.water.dto.CourseDTO;
import com.water.dto.MemberDTO;
import com.water.dto.QnaBoardDTO;

public class QnaListAction implements Action {
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "./qna/qnaboard.jsp";
		
		BoardDAO dao = BoardDAO.getInstance();
		String course_code = request.getParameter("course_code");
		System.out.println( ( "[QnaListAction] course_coce(from request) ===> " + request.getParameter( "course_code" ) ));
		
		if(course_code == null) {
			HttpSession session = request.getSession();
			MemberDTO member = (MemberDTO)session.getAttribute("loginUser");	// 로그인 유저의
			CourseDTO course = member.getCourse_list().get(0); 					// 강좌 목록 중 첫 번째 과목 
			course_code = course.getCourse_code();								// 의 course_code
		}
		
		List<QnaBoardDTO> qnaListBoard = dao.selectqnaList(course_code);
		
		request.setAttribute("selectqnaList", qnaListBoard);
		request.setAttribute("course_code", course_code );

		ActionFoward foward = new ActionFoward();
		foward.setPath(url);
		foward.setRedirect(false);
		return foward;
	}

}
