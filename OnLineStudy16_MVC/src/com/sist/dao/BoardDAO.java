package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
public class BoardDAO {
	// 파싱(XML) => SqlSessionFactory
	private static SqlSessionFactory ssf;
	// 구동하기 전에 자동으로 파싱을 한다 ==> 초기화블럭(static => static{}, instance => {})
	static
	{
		try
		{
			// 파일 읽기
			Reader reader=Resources.getResourceAsReader("Config.xml");
			// XML 파싱
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex) 
		{
			ex.printStackTrace();
		}
	}
	public static List<BoardVO> boardListData(Map map)
	{
		List<BoardVO> list=new ArrayList<BoardVO>();
		SqlSession session=ssf.openSession();
		list=session.selectList("boardListData", map);
		session.close();	// Connection 반환
		return list;
	}
	public static int boardTotalPage()
	{
		int total=0;
		SqlSession session=ssf.openSession();
		total=session.selectOne("boardTotalPage");
		session.close();
		return total;
	}
	public static BoardVO boardDetailData(int no)
	{
		SqlSession session=ssf.openSession();
		// 1. 조회수 증가
		session.update("hitIncrement", no);
		session.commit(); // 정상적으로 저장
		// 데이터 읽기
		BoardVO vo=session.selectOne("boardDetailData", no);
		// 반환
		session.close();
		return vo;
	}
}








