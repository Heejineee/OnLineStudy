package com.sist.xml;

import javax.xml.bind.annotation.XmlRootElement;

/*
 * 	XML, JSON, CSV
 * ---------------
 * 		XML 파싱 : 태그나 속성 값을 읽어오는 과정
 * 			- JAXB : 외부에서 데이터를 XML로 보내는 경우에 주로 사용
 * 						JAVA와 XML을 연결 => 라이브러리
 * 			- JAXP : DOM (수정, 삭제, 추가, 검색) => XML을 메모리에 저장하고 제어
 * 						속도가 늦다(XML을 오라클 대신 사용)
 * 						SAX (검색 => 데이터 읽기만 가능)  : MyBatis, Spring
 * 						Spring => 기본 구조를 직접 제작 => XML(클래스 등록 => 메모리 할당 => 클래스는 주는 역할)
 * 		
 * 		XML 태그(사용자 정의) => 고정 태그가 아니다(업체에서 제공하는 XML태그만 사용해야 한다)
 * 		MyBatis : google에서 제공하는 XML만 사용(태그, 속성) => XML의 태그나 속성이 어떤게 있는지 알 수 없다
 * 																						=> 태그나 속성의 목록을 제공 ==> DTD
 * 		XML : 데이터를 문서로 저장하는 목적
 * 			- 태그명 + 속성
 * 			- 데이터가 저장
 * 				- <태그>데이터 저장</태그>
 * 				   <td>데이터 출력</td> ==> text()
 * 				- <태그 속성="데이터 저장"/>
 * 				   <img src="데이터 저장"/> ==> attr("src")
 * 			- 문법 : DTD안에 있는 태그나 속성만 사용
 * 
 * 		XML 데이터 읽기
 * 			1) JAXB
 * 				자바클래스, XML의 태그 매칭
 * 
 * 		태그 안에 태그 => 클래스로 제작
 * 		태그 안에 문자열이 있는 경우 => 변수로 제작
 * 
 * 		XML데이터 => 자바변수에 저장 (언마샬) ==> XML의 데이터를 추출
 * 		자바변수를 => XML데이터로 출력 (마샬)
 * 
 */
@XmlRootElement
public class Rss {
	private Channel channel=new Channel();

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	
}
