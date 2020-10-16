package com.sist.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// XML 파싱
import javax.xml.parsers.*;
import org.w3c.dom.*;
// Model, JSP 연결
import com.sist.model.*;
import java.util.*;
/*
 * web.xml에서 Controller 등록
 */

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * 	서블릿 동작
	 * 		= 메모리 할당 (생성자 호출)
	 * 		= init() : 파일 읽기, 서버 연결
	 * 		= service() : 사용자가 요청시 처리하는 메소드
	 * 		  ----------- GET/POST => 동시에 처리가 가능한 메소드
	 * 				GET => doGet()
	 * 				POST => doPost()
	 * 		= destroy() : 할당된 메모리를 회수
	 * 		= 새로고침, 화면 이동 ==> destroy() 호출 ==> 메모리 회수(다시 원상복귀)
	 */
	// XML의 데이터를 읽어서 map에 저장(Controller가 기억하고 있다가 => 오청 => 바로 모델 클래스를 찾을 수 있게 한다)
	// Callback함수다! ==> 프로그래머가 호출하는 메소드가 아니라 시스템에 의해 자동 호출되는 메소드!
	public Map clsMap=new HashMap();	// 모델 클래스 저장
	public void init(ServletConfig config) throws ServletException {
		// web.xml에 등록된 applicationContext.xml 파일 읽기
		// web.xml에 설정된 데이터를 읽어오는 클래스 => ServletConfig
		String path=config.getInitParameter("contextConfigLocation");
		System.out.println(path);
		try
		{
			// XML 읽기
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			// XML을 파싱할 수 있게 클래스 생성
			DocumentBuilder db=dbf.newDocumentBuilder();	// 파싱기
			// XML 읽어서 메모리에 저장(저장공간 : Document)
			Document doc=db.parse(new File(path));
			// 최상위 태그 ==> 트리형태로 저장
			Element root=doc.getDocumentElement();
			System.out.println(root.getTagName());	// <beans>
			
			// beans 밑에 있는 bean 태그들 읽기
			// bean 태그를 묶어서 사용 => 같은 태그 묶을 때 NodeList
			NodeList list=root.getElementsByTagName("bean");
			/*
			 * <bean id="list.do" class="com.sist.model.ListModel"/>
			 	<bean id="detail.do" class="com.sist.model.DetailModel"/>
			 	<bean id="insert.do" class="com.sist.model.InsertModel"/>
			 	얘네들 묶은거임! (applicationContext.xml에 있는거)
			 */
			for(int i=0; i<list.getLength(); i++)
			{
				// bean 읽기
				Element bean=(Element)list.item(i);
				String cmd=bean.getAttribute("id");
				String cls=bean.getAttribute("class");
				System.out.println("cmd="+cmd+", class="+cls);
				// 클래스를 메모리 할당 한 다음에 키, 주소 저장
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();	// 클래스 이름을 읽어서 메모리 할당
				System.out.println("할당된 주소 : "+obj);
				
				// 저장(Map)
				clsMap.put(cmd, obj);
			}
		}catch(Exception ex) {}
	}
	// 사용자 요청 처리하는 메소드
	// Callback 함수다!
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자 요청시에 처리가 되는 영역
		// 1. 사용자 요청을 받는다	
		String cmd=request.getRequestURI();	// http://localhost:8080/OnLineStudy16_MVC/*.do 에서 /OnLineStudy16_MVC/*.do를 가져오는 역할
		// 2. Model클래스 찾기
		cmd=cmd.substring(request.getContextPath().length()+1);	// list.do, detail.do 로 짤림(+1하는건 / 땜에)
		
		Model model=(Model)clsMap.get(cmd);
		// 1, 2를 처리하기 위해 관련된 데이터를 Map에 저장 ==> clsMap에 저장된 클래스를 찾는다
		// 3. Model을 통해서 요청처리 ==> 결과값을 request, session에 담는다
		String jsp=model.handelRequest(request);	// 처리 후에 request에 값을 담아준다
		// 4. JSP를 찾는다
		// 5. JSP로 request를 전송한다
		// request를 해당 JSP로 전송하는 클래스 => RequestDispatcher
		if(jsp.startsWith("redirect"))
		{
			response.sendRedirect(jsp.substring(jsp.indexOf(":"+1)));
			// 화면 이동 ==> sendRedirect() => request가 초기화
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher(jsp);
			rd.forward(request, response);
			// 화면 이동 ==> forward ==> request를 전송 => jsp에서 request에 담은 데이터를 받아서 출력
		}
		
	}

}














