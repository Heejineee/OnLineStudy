package com.sist.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;
import com.sist.vo.*;
public class MovieDAO {
   private static SqlSessionFactory ssf;
   static
   {
	   ssf=CreateSqlSessionFactory.getSsf();
   }
   /*
    *   <select id="movieListData" resultType="MovieVO" parameterType="hashmap">
		    SELECT no,poster,title,num
		    FROM (SELECT no,poster,title,rownum as num
		    FROM (SELECT no,poster,title 
		    FROM daum_movie WHERE cateno=#{cateno} ORDER BY score DESC))
		    WHERE num BETWEEN #{start} AND #{end}
		  </select>
		  <select id="movieTotalPage" resultType="int" parameterType="int">
		    SELECT CEIL(COUNT(*)/12.0) FROM daum_movie
		    WHERE cateno=#{cateno}
		  </select>
    */
   public static List<MovieVO> movieListData(Map map)
   {
	   SqlSession session=ssf.openSession();
	   List<MovieVO> list=session.selectList("movieListData",map);
	   session.close();// 반환
	   return list;
   }
   public static int movieTotalPage(int cateno)
   {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("movieTotalPage", cateno);
	   session.close();
	   return total;
   }
   public static List<NewsVO> movieNewsData(Map map)
   {
	   SqlSession session=ssf.openSession();
	   List<NewsVO> list=session.selectList("movieNewsData", map);
	   session.close();
	   return list;
   }
   public static int newsTotalPage()
   {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("newsTotalPage");
	   session.close();
	   return total;
   }
   public static List<MovieVO> movieTotalData(Map map)
   {
	   SqlSession session=ssf.openSession();
	   List<MovieVO> list=session.selectList("movieTotalData",map);
	   session.close();// 반환
	   return list;
   }
   public static int movieTotalPage2()
   {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("movieTotalPage2");
	   session.close();
	   return total;
   }
}








