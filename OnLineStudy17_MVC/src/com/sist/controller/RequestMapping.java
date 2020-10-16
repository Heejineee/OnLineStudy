package com.sist.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)
/*
 * 	메모리 유지
 * 	- CLASS
 * 	- SOURCE
 *   ------------ 컴파일 후에 메모리 해제
 * 	- RUNTIME
 *   ------------ 컴파일 후에도 메모리 유지
 */
@Target(METHOD)
/*
 * 	Annotation
 * 		1. 기능이 없다
 * 		2. 찾기 기능만 있다
 * 			- TYPE : 클래스를 찾는 경우
 * 			- PARAMETER : 매개변수를 찾는 경우
 * 			- CONSTRUCTOR : 생성자 찾는 경우
 * 			- FIELD : 멤버변수 찾는 경우
 * 			- METHOD : 메소드 찾는 경우
 * 
 */
public @interface RequestMapping {
	public String value();	// 문자열로 구분
	
}










