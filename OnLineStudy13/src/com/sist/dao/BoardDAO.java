package com.sist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {
	private static SqlSessionFactory ssf;
	// 자동 초기화 => 블록
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
	// 목록 읽기
	public static List<BoardVO> boardListData(Map map)
	{
		List<BoardVO> list=new ArrayList<BoardVO>();
		SqlSession session=null;
		try
		{
			// 연결 객체
			session=ssf.openSession();
			// SQL 문장 실행 요청
			list=session.selectList("boardListData",map);
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
/*
 * <select id="boardDetailData" resultType="BoardVO" parameterType="int">
 * 에서의 resultType과 parameterType의 데이터형이 아래와 같아야 함
 * ==> resultType=BoardVO, parameterType=int no
 * 
 * resultType => 리턴형
 * List<BoardVO> ==> selectList
 * BoardVO ==> selectOne
 * parameterType ==> 매개변수
 */
	public static BoardVO boardDetailData(int no)
	{
		BoardVO vo=new BoardVO();
		SqlSession session=null;
		try
		{
			// 연결 시도
			session=ssf.openSession();
			session.update("hitIncrement", no);
			session.commit();
			
			// 실제 데이터
			vo=session.selectOne("boardDetailData", no);
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
	// 총 페이지 구하기
	public static int boardTotalPage()
	{
		int total=0;
		SqlSession session=null;
		try
		{
			// 연결
			session=ssf.openSession();
			// 데이터 읽어오기
			total=session.selectOne("boardTotalPage");
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return total;
	}
	// 데이터 추가
	public static void boardInsert(BoardVO vo)
	{
		SqlSession session=null;
		try
		{
			session=ssf.openSession(true);
			session.insert("boardInsert",vo);
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
	// 수정할 데이터 읽기
	public static BoardVO boardUpdateData(int no)
	{
		BoardVO vo=new BoardVO();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("boardDetailData", no);
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
	public static boolean boardUpdate(BoardVO vo)
	{
		boolean bCheck=false;
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			String db_pwd=session.selectOne("boardGetPassword", vo.getNo());
			if(db_pwd.equals(vo.getPwd()))	// 본인 여부 확인 => 수정
			{
				bCheck=true;
				// 실제 수정을 한다
				session.update("boardupdate",vo);
				session.commit();
			}
			else
			{
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













