package com.sist.model;

import javax.servlet.http.HttpServletRequest;
/*
 * 	클래스의 유형이 다르면 조건문 사용해야 함
 * 	모든 클래스 유형이 동일 => interface
 * 
 * 	ex)
 * 		class A
 * 		class B
 * 		==> 조건문 사용
 * 
 * 		interface I
 * 		class A implements I
 * 		class B implements I
 * 		I i=new A()
 * 		I i=new B() 
 * 		==> 가능
 * 
 * 		클래스 여러개를 모아서 한번에 관리할 때 인터페이스 사용
 */
public interface model {
	public String execute(HttpServletRequest request);
}
