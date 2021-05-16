package com.water.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.water.dto.CourseDTO;
import com.water.dto.MemberDTO;
import com.water.mybatis.SqlMapConfig;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private MemberDAO() {}		// 싱글톤(생성자 막음)
	private static MemberDAO instance = new MemberDAO();	// 싱글톤 객체
	public static MemberDAO getInstance() {				// 싱글톤 객체 꺼내기
		return instance;
	}
	
	// id만 조회 
	public MemberDTO getMember(String userid) {
		MemberDTO mdto = null;
		
		try {
			sqlSession = sqlSessionFactory.openSession();
			mdto = sqlSession.selectOne("getMember", userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return mdto;
	}
	
	/** Login */
	public MemberDTO loginMember(String member_id, String member_pw) {
		MemberDTO param = new MemberDTO();
		MemberDTO loginUser = null;
		param.setMember_id(member_id);
		param.setMember_pw(member_pw);
		
		try {
			sqlSession = sqlSessionFactory.openSession();
			loginUser = sqlSession.selectOne("loginMember", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		// 유저가 수강하고 있는 강의 목록
		CourseDAO courseDao = CourseDAO.getInstance();
		List<CourseDTO> course_list = courseDao.getCoursesWithSubj( member_id );
		loginUser.setCourse_list(course_list);
		
		return loginUser;
	}
	
	
	public int joinMember(MemberDTO member) {
		int result = 0;
		
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectOne("joinMember", member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	
}
