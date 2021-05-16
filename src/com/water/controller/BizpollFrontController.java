package com.water.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.action.Action;
import com.water.action.ActionFoward;
import com.water.action.CreditAction;
import com.water.action.CreditInsertAction;
import com.water.action.ErrorAction;
import com.water.action.IndexAction;
import com.water.action.JoinAction;
import com.water.action.JoinFormAction;
import com.water.action.LectureAction;
import com.water.action.LectureInsertAction;
import com.water.action.LoginAction;
import com.water.action.LoginFormAction;
import com.water.action.LogoutAction;
import com.water.action.MapAction;
import com.water.action.NoticeAddAction;
import com.water.action.NoticeDeleteAction;
import com.water.action.NoticeEditAction;
import com.water.action.NoticeEditFormAction;
import com.water.action.NoticeFormAction;
import com.water.action.NoticeListAction;
import com.water.action.NoticeViewAction;
import com.water.action.ProfileAction;
import com.water.action.QnaAddAction;
import com.water.action.QnaDeleteAction;
import com.water.action.QnaEditAction;
import com.water.action.QnaEditFormAction;
import com.water.action.QnaFormAction;
import com.water.action.QnaListAction;
import com.water.action.QnaViewAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public BizpollFrontController() {}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 깨짐 방지(POST방식)
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;
		ActionFoward forward = null;
		
		String uri = request.getRequestURI();	// 요청받은 url
		String ctx = request.getContextPath();	//프로젝트 명
		String command = uri.substring(ctx.length());	// url의 프로젝트명 뒤에 문자열을 가져와라
		
		System.out.println("uri ===> " + uri);
		System.out.println("ctx ===> " + ctx);
		System.out.println("command ===> " + command);
		
		// ------------------ 액션 맵핑 ------------------
		if ( "/index.myuk".equals(command) ) {
			// 메인
			action = new IndexAction();
			forward = action.excute(request, response);
		} else if ("/loginform.myuk".equals(command)) {
			// 로그인 창으로 이동
			action = new LoginFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/login.myuk")) {
			action = new LoginAction();
			forward = action.excute(request, response);
		} else if (command.equals("/logout.myuk")) {
			// 로그아웃
			action = new LogoutAction();
			forward = action.excute(request, response);
		} else if (command.equals("/joinform.myuk")) {
			action = new JoinFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/join.myuk")) {
			action = new JoinAction();
			forward = action.excute(request, response);
		} else if (command.equals("/pages-profile.myuk")) { 
			action = new ProfileAction();
			forward = action.excute(request, response);
		}  else if (command.equals("/pages-error-404.myuk")) { //에러
			action = new ErrorAction();
			forward = action.excute(request, response);
		} else if (command.equals("/map-google.myuk")) { // 찾아오는길 
			action = new MapAction();
			forward = action.excute(request, response);
		}
		
		//--------------------------교수 전용-----------------------
		if(command.equals("/lecture.myuk")) { // 강의 관리
			action = new LectureAction();
			forward = action.excute(request, response);
		} else if (command.equals("/lectureinsert.myuk")){ // 강의 등록 폼
			action = new LectureInsertAction();
			forward = action.excute(request, response);
		} else if (command.equals("/lectureinsertcomple.myuk")){ // 강의 등록 폼
			action = new LectureInsertAction();
			forward = action.excute(request, response);
		} else if (command.equals("/creditinsert.myuk")){ // 성적 등록
			action = new CreditInsertAction();
			forward = action.excute(request, response);
		}
		
		// 학생 전용
		
		if(command.equals("/selectcredit.myuk")) {	 // 수강신청
			action = new CreditAction();
			forward = action.excute(request, response);
		} else if (command.equals("/creditinsert1.myuk")){ //학점조회
			action = new CreditInsertAction();
			forward = action.excute(request, response);
		} 
		
		//--------------------------- 게시판 액션 맵핑 ------------------
		if(command.equals("/noticeList.myuk")) {	
			action = new NoticeListAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnaboard.myuk")){
			action = new QnaListAction();
			forward = action.excute(request, response);
		} else if (command.equals("/addNotice.myuk")) {
			action = new NoticeAddAction();
			forward = action.excute(request, response);
		} else if (command.equals("/noticeform.myuk")) { // 공지 게시판 폼
			action = new NoticeFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnaview.myuk")) { // 질문게시판 상세내용
			action = new QnaViewAction();
			forward = action.excute(request, response);
		} else if (command.equals("/noticeview.myuk")) { // 공지 게시판 상세내용
			action = new NoticeViewAction();
			forward = action.excute(request, response);
		} else if (command.equals("/noticeeditform.myuk")) { // 공지 게시판 수정 폼
			action = new NoticeEditFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/noticeedit.myuk")) { // 공지 게시판 수정
			action = new NoticeEditAction();
			forward = action.excute(request, response);
		} else if (command.equals("/noticedelete.myuk")) { // 공지 게시판 삭제
			action = new NoticeDeleteAction();
			forward = action.excute(request, response);
		} else if (command.equals("/addqna.myuk")) {
			action = new QnaAddAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnaform.myuk")) {
			action = new QnaFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnaeditform.myuk")) { // 공지 게시판 수정 폼
			action = new QnaEditFormAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnaedit.myuk")) { // 공지 게시판 수정
			action = new QnaEditAction();
			forward = action.excute(request, response);
		} else if (command.equals("/qnadelete.myuk")) { // 공지 게시판 삭제
			action = new QnaDeleteAction();
			forward = action.excute(request, response);
		}
		
		// ------------------ 공통 분기 작업 ------------------
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
		
	}// void service(HttpServletRequest request, HttpServletResponse response)
}// END::public class
