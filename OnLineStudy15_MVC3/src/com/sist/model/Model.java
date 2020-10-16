package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public interface Model {
	public String handlerReString(HttpServletRequest request);

	public String handlerRequest(HttpServletRequest request);
	
}
