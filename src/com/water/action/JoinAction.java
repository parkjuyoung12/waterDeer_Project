package com.water.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.dao.MemberDAO;
import com.water.dto.MemberDTO;
import com.water.dto.MemberType;


public class JoinAction implements Action{
	
	final static public int THIS_YEAR = 2021;
	
	@Override
	public ActionFoward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		String url = "login.myuk";
		
		MemberDTO mDto = new MemberDTO();
		
		// CAL: MEMBER AGE
		String member_birth = request.getParameter("member_birth");
		int member_age = 0;
		
		String strYear = member_birth.split("-") [0] ;
		int year = Integer.valueOf(strYear);
		member_age = THIS_YEAR - year + 1; // 한국식 나이.  FIXME (안 고칠 거임)
		mDto.setMember_age( member_age );
		mDto.setMember_gender(request.getParameter("member_gender"));
		
		// MEMBER POSITION
		MemberType member_position = null;
		if( "STUD".equals( request.getParameter("member_position") ) )
		{
			member_position = MemberType.STUD;
		}
		else if( "PROF".equals( request.getParameter("member_position") ) )
		{
			member_position = MemberType.PROF;
		}
		
		mDto.setMember_id(request.getParameter("member_id"));
		mDto.setMember_pw(request.getParameter("member_pw"));
		mDto.setMember_numb(request.getParameter("member_numb"));
		mDto.setMember_name(request.getParameter("member_name"));
		
		mDto.setMember_position(member_position);
		mDto.setMember_join_date(request.getParameter("member_join_date"));
		mDto.setMember_gradu_date(null);
		mDto.setMember_grade( 1 ); // FIXME (안 고칠 거임)
		mDto.setDept_code(request.getParameter("dept_code"));
		mDto.setCredit_ref_code( "CRE-REF-1" );
		mDto.setMember_minor( null );
		mDto.setMember_dual_major( null ); 
		mDto.setMember_birth(member_birth);
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.joinMember(mDto);

		// FIXME 성공할 때
		if(result < 0) {
			 url = "login.myuk";
		}
		
		ActionFoward forward = new ActionFoward();
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
