package com.sist.model;

import javax.servlet.http.HttpServletRequest;
// 게시판 목록 처리
import java.util.*;
import com.sist.dao.*;
public class ListModel implements Model {

	@Override
	public String handelRequest(HttpServletRequest request) {
		// =게시물 목록 가지고 오고 => request에 값을 담아서 JSP로 전송
		String page=request.getParameter("page");	// 사용자가 요청한 페이지를 받는다
		if(page==null)	// 게시판 실행할 때 첫 페이지
			page="1";	// default
		int curpage=Integer.parseInt(page);	// 현재 페이지 ==> list목록을 가지고 온다
		Map map=new HashMap();
		// 시작위치, 끝위치 => MyBatis에서 처리
		int rowSize=10;
		int start=(rowSize*curpage)-(rowSize-1);	// rownum은 1부터 시작
		int end=rowSize*curpage;
		/*
		 * 1page ==> 1 AND 10
		 * 2page ==> 11 AND 20
		 */
		map.put("start", start);
		map.put("end", end);
		
		List<BoardVO> list=BoardDAO.boardListData(map);
		
		int totalpage=BoardDAO.boardTotalPage();
		
		/*
		 * JSP로 전송해야 될 데이터는 3개(현재 페이지, 총 페이지, list 목록)
		 */
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		// 여기서 전송된 것이 아니라 Controller에서 request를 받아서 전송
		/*
		 * 	사용자 요청 ==> Controller ==> Model ==> BoardDAO
		 * 	Model ==> Controller ==> JSP
		 */
		
		return "board/list.jsp";	// 어떤 JSP로 request를 보낼 것인지 설정
	}

}














