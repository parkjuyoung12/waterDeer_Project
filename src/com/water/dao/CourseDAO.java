package com.water.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.water.dto.CourseDTO;
import com.water.dto.RoomDTO;
import com.water.mybatis.SqlMapConfig;

public class CourseDAO {

	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;

	private CourseDAO() {
	}

	private static CourseDAO instance = new CourseDAO();

	public static CourseDAO getInstance() {
		return instance;
	}

	/** 이 회원의 모든 강의(과목 이름과 함께) 조회 */
	public List<CourseDTO> getCoursesWithSubj(String member_id) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			List<CourseDTO> list = sqlSession.selectList("getCoursesWithSubj", member_id);
			for(CourseDTO dto : list) {
				System.out.println(dto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return null;
	}
	
	public List<RoomDTO> selectAllRoom() {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("selectAllRoom");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return null;
	}

}
