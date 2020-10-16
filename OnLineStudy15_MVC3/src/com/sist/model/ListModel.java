package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
public class ListModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest request) {
		List<String> list=new ArrayList<String>();
		list.add("짱구");
		list.add("훈이");
		list.add("유리");
		list.add("철수");
		list.add("맹구");
		
		request.setAttribute("list", list);
		return "board/list.jsp";
	}

}
