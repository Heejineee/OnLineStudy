package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
/*
 * 	액션 태그 : 자바 문법을 태그형으로 제작
 * 		1) <jsp:include page="첨부할 JSP 파일명">
 * 		2) <jsp:useBean id="dao" class="MemberDAO">
 * 			=> 자바코드
 * 				MemberDAO dao=new MemberDAO()
 * 								   ----- id => id가 객체명이 된다
 * 		3) <jsp:setProperty name="객체명" property="">
 * 								   ------------------ ----------------
 * 									name => id명칭 property : 변수명 ==> setXXX()에 값을 채워준다
 * 			예)
 * 				JSP => Bean, MyBatis => DTO, Spring => VO
 * 				Bean = DTO = VO는 동일한 개념
 * 				public class MemberVO
 * 				{
 * 					private int no;
 * 					// 쓰기 => 메모리에 저장
 * 					public void setNo(int no)
 * 					{
 * 						this.no=no;
 * 					}
 * 					// 읽기 => 저장된 값 읽기
 * 					public void getNo()
 * 					{
 * 						return no;
 * 					}
 * 				}
 * 				==> <jsp:useBean id="vo" class="MemberVO"> 라고 쓸 수 있음
 * 						useBean : 메모리 할당
 * 				=> HTML과 자바코딩을 분리
 * 					<c:forEach> <c:if> <c:forTokenes> : JSTL
 * 					<% %> => 제거
 * 					vo.setName("홍길동"), vo.setNo(1)
 * 					=> <jsp:setProperty name="vo" property="no" value="1">
 * 						=> setProperty => setXXX() 에 값을 채워준다
 *						
 */
public class BoardDAO{
	private static SqlSessionFactory ssf;
	static 
	{
		try
		{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public static List<BoardVO> freeBoardListData(Map map)
	{
		List<BoardVO> list=new ArrayList<BoardVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("freeBoardListData",map);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return list;
	}
	public static void freeBoardInsert(BoardVO vo)
	{
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true); // insert => commit(autoCommit)
			session.insert("freeBoardInsert", vo);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	// 상세보기
	public static BoardVO freeBoardDetailData(int no)
	{
		BoardVO vo=new BoardVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			session.update("freeBoardHitIncrement", no);
			// commit을 전송
			session.commit();
			/*
			 * 	한 줄 => selectOne(말 그대로 한줄이라 필드 여러개여도 한 줄이면 selectOne)
			 *  여러 줄 => selectList
			 */
			vo=session.selectOne("freeBoardDetailData", no);
			// 화면 출력
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	// 수정할 데이터를 읽어온다 : board-mapper.xml에 이미 만들어진 SQL 문장이 있는 경우 => 재사용이 가능
	public static BoardVO freeBoardUpdateData(int no)
	{
		BoardVO vo=new BoardVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("freeBoardUpdateData", no);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	public static boolean freeBoardUpdate(BoardVO vo)
	{
		boolean bCheck=false;
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			// 비밀번호 가지고 온다
			String db_pwd=session.selectOne("freeBoardGetPassword", vo.getNo());
			if(db_pwd.equals(vo.getPwd()))
			{
				// 비밀번호가 일치
				bCheck=true;
				// 실제 수정
				session.update("freeBoardUpdate",vo);
				// commit
				session.commit();
			}
			else
			{
				// 비밀번호 불일치
				bCheck=false;
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return bCheck;
	}
}










