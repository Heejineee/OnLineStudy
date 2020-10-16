package com.sist.model;

import javax.servlet.http.HttpServletRequest;

/*
 * 		인터페이스 역할
 * 			- 서로 다른 여러개의 클래스를 묶어서 한개의 이름(인터페이스)으로 관리(제어)
 * 				ex) class A => A 데이터형
 * 					 class B => B 데이터형
 * 				     interface I
 * 					 class C implements I ==> C, I 데이터형
 * 			- 단점 : 인터페이스에 존재하는 메소드에 한정 ==> 인터페이스에 메소드를 증가하면 구현하고 있는 모든 클래스에 에러 발생
 * 				==> 그래서 POJO(인터페이스 구현(X), 상속(X)) ==> 구분(어노테이션) ==> Spring
 */		
public interface Model {
	// 기능(요청) 처리하는 메소드 => Model의 모든 클래스가 요청을 처리하기 위한 메소드
	public String handelRequest(HttpServletRequest request);	// Call By References
	// 주소(메모리) ==> 값을 주소에 채워주는 방식(클래스, 배열 => 메모리 주소를 이용하는 방식)
	/*
	 * 	매개변수 전송 방식
	 * 		- Call by Value : 다른 메모리에 값을 복사(일반 데이터)
	 * 		- all by Reference : 같은 메모리 주소 원본이 넘어간다
	 * 
	 * 	MVC 구조
	 * 		1. 컨트롤러 : 서블릿(모델과 뷰를 연결해 주는 역할 수행)
	 * 				- 연결해야되는 모델과 뷰를 알고있다
	 * 				1) 요청 받는다
	 * 					String cmd=request.getRequestURI()
	 * 						=> (list).do 
	 * 				2) 모델을 찾는다	==> ListModel
	 * 				3) 모델에서 넘겨준 결과값을 request, session에 담아서 
	 * 					request.setAttribute()
	 * 				4) JSP를 찾고 => request, session을 넘겨준다
	 * 					forward(request, response)
	 * 
	 * 					list.do ==> ListModel ===> list.jsp
	 * 					detail.do ==> DetailModel ===> detail.jsp ==> Map을 이용해서(요청 : 키, 해당 자바파일)
	 * 		2. 모델 : 요청 처리 ==> 확장(재사용) 일반 자바
	 * 		3. 뷰 : 요청 처리된 결과값을 출력 ==> JSP (EL, JSTL)
	 */
	
}












