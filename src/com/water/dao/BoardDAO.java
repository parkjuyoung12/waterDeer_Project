package com.water.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.water.dto.NoticeBoardDTO;
import com.water.dto.QnaBoardDTO;
import com.water.mybatis.SqlMapConfig;

public class BoardDAO {

	// 싱글톤
	private BoardDAO() {
	}

	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;

	public List<NoticeBoardDTO> getBoardList(String course_code, int pageNum) {
		sqlSession = sqlSessionFactory.openSession();

		List<NoticeBoardDTO> boardList = null;

		boardList = new ArrayList<NoticeBoardDTO>();

		Map<String, Object> map = new HashMap<>();
		map.put("course_code", course_code);
		map.put("first_rownum", (pageNum - 1) * 10 + 1); // 1 페이지 요청 시 1~10, 2 페이지 요청 시 11~20, ...
		map.put("last_rownum", (pageNum - 1) * 10 + 10); // 1 페이지 요청 시 1~10, 2 페이지 요청 시 11~20, ...

		try {
			boardList = sqlSession.selectList("getNoticeOf", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return boardList;
	}

	public String getCourseOfBoard(int num) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("getCourseOfBoard", num);
		} catch( Exception e ) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return null;
	}

	public List<NoticeBoardDTO> selectNoticeList(String course_code) {

		sqlSession = sqlSessionFactory.openSession();

		List<NoticeBoardDTO> iResult = null;

		try {
			iResult = sqlSession.selectList("selectNoticeList", course_code);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return iResult;
	}

	public List<QnaBoardDTO> selectqnaList(String course_code) {

		sqlSession = sqlSessionFactory.openSession();

		List<QnaBoardDTO> iResult = null;

		try {
			// FIXME 2번 사용했던 거 한 번으로 줄이기.
			iResult = sqlSession.selectList("selectqnaList", course_code);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return iResult;
	}// selectqnaList 
	
	
	
	public QnaBoardDTO selectqnaViewList(int num) {
		
		sqlSession = sqlSessionFactory.openSession();
		
		QnaBoardDTO iResult = null;
		try {
			// FIXME 2번 사용했던 거 한 번으로 줄이기.
			iResult = sqlSession.selectOne("selectqnaView", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return iResult;
	}// selectqnaViewList 
	
	
	
	public NoticeBoardDTO selectNoticeView(int num) {
		// INIT:
		String course_code = this.getCourseOfBoard(num);
		NoticeBoardDTO iResult = null;
		// (유저가 course_code까지 조작해 넘기면 쿼리 오작동) 우리 DB에서 꺼내다 쓰기

		// 매퍼에 파라미터로 전달할 DTO 
		NoticeBoardDTO param = new NoticeBoardDTO();
		param.setNum(num);
		param.setCourse_code(course_code);
		
		SqlSession sqlSession2 = sqlSessionFactory.openSession(); 
		try {
			iResult = sqlSession2.selectOne("selectNoticeView", param);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession2.close();
		}
		return iResult;
	}// selectNoticeView
	
	public boolean insertNotice(String title, String content, String img_path, String img_name, String course_code ) {
		sqlSession = sqlSessionFactory.openSession();
		
		System.out.println("[BoardDAO] title ==> " + title);
		System.out.println("[BoardDAO] content ==> " + content);
		System.out.println("[BoardDAO] img_path ==> " + img_path);
		System.out.println("[BoardDAO] img_name ==> " + img_name);
		System.out.println("[BoardDAO] course_code ==> " + course_code);
		
		NoticeBoardDTO notice = new NoticeBoardDTO();
		notice.setTitle(title);
		notice.setContent(content);
		notice.setImg_path(img_path);
		notice.setImg_name(img_name);
		notice.setCourse_code(course_code);
		
		try {
			int resultNum = sqlSession.delete("insertNotice", notice);
			sqlSession.commit();
			return resultNum > 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	}
	
	public boolean insertqna(String title, String content, String img_path, String img_name, String course_code ) {
		sqlSession = sqlSessionFactory.openSession();
		
		System.out.println("[BoardDAO] title ==> " + title);
		System.out.println("[BoardDAO] content ==> " + content);
		System.out.println("[BoardDAO] img_path ==> " + img_path);
		System.out.println("[BoardDAO] img_name ==> " + img_name);
		System.out.println("[BoardDAO] course_code ==> " + course_code);
		
		QnaBoardDTO qna = new QnaBoardDTO();
		qna.setTitle(title);
		qna.setContent(content);
		qna.setImg_path(img_path);
		qna.setImg_name(img_name);
		qna.setCourse_code(course_code);
		
		try {
			int resultNum = sqlSession.insert("insertQna", qna); 
			sqlSession.commit();
			return resultNum > 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	}
	
	public boolean updateNotice(int num, String title, String content, String img_name, String img_path) {
		sqlSession = sqlSessionFactory.openSession();
		
		NoticeBoardDTO notice = new NoticeBoardDTO();
		notice.setNum(num);
		notice.setTitle(title);
		notice.setContent(content);
		notice.setImg_name(img_name);
		notice.setImg_path(img_path);
		
		try {
			int affectedRows = sqlSession.update("updateNotice", notice);
			sqlSession.commit();
			return affectedRows > 0;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	}// updateNotice
	
	public boolean updateToQna(int num, String title, String content, String img_name, String img_path) {
		sqlSession = sqlSessionFactory.openSession();
		
		QnaBoardDTO qna = new QnaBoardDTO();
		qna.setNum(num);
		qna.setTitle(title);
		qna.setContent(content);
		qna.setImg_name(img_name);
		qna.setImg_path(img_path);
		
		try {
			int affectedRows = sqlSession.update("updateToQna", qna);
			System.out.println(affectedRows);
			sqlSession.commit();
			return affectedRows > 0;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	}// updateNotice

	
	public boolean updateQna(int num, String title, String content, String img_name, String img_path) {
		sqlSession = sqlSessionFactory.openSession();
		
		QnaBoardDTO qna = new QnaBoardDTO();
		qna.setNum(num);
		qna.setTitle(title);
		qna.setContent(content);
		qna.setImg_name(img_name);
		qna.setImg_path(img_path);
		System.out.println(qna);
		
		try {
			int affectedRows = sqlSession.update("updateQna", qna);
			System.out.println("updateQna====>"+qna);
			sqlSession.commit();
			return affectedRows > 0;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	}// updateNotice
	
	
	public boolean deleteNotice(int num) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			int resultNum = sqlSession.delete("deleteNotice", num);
			sqlSession.commit();
			return resultNum > 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	} // deleteNotice(int num);
	
	public boolean deleteQna(int num) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			int resultNum = sqlSession.delete("deleteQna", num);
			sqlSession.commit();
			return resultNum > 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return false;
	} // deleteNotice(int num);
	
}//END::public class(DAO)
