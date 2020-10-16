package com.sist.model;

import javax.servlet.http.HttpServletRequest;
/*
 * 	list.jsp => HTML만 출력한다 (데이터가 없는 상태)
 * 	list.do => 데이터를 list.jsp로 전송 후에 출력
 * 			 => list.do ==> Controller ==> ListModel ==> JSP(request에 설정된 데이터를 출력 : ${})
 */
public class InsertOkModel implements Model {

	@Override
	public String handelRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return "redirect:list.do";	// 목록으로 이동
	}
	
}
