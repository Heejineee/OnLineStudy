package com.sist.xml2;
import java.io.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
/*
 * 	DOM(Document Object Model)
 * 	메모리에 저장되는 방식
 * 		- list 방식 => 일반 변수, 클래스 
 * 		- tree 방식(DOM) => ML(HTML, XML)
 * 
 * 	SAX(Simple API for XML)
 */
/*
 * 	XML 왜 사용하는가
 * 		- 일반 txt파일 => 구분을 할 수 없다
 * 		- 구분되는 파일 이용 : XML, JSON
 * 		- XML => 포맷 (운영체제마다 동일하다)
 */
public class DOMManager {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
		{
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			// 한번만 생성 ==> 싱글턴 ==> newInstance() ==> DOM 파서기를 생성해주는 역할
			DocumentBuilder db=dbf.newDocumentBuilder();
			// DocumentBuilder가 파서기 ==> XML을 읽어서 트리형태로 저장해주는 역할
			// 1. XML을 번역 => 메모리에 저장 (저장하는 공간 이름 => Document)
			Document doc=db.parse(new File("C:\\webDev\\webStudy\\OnLineStudy5\\src\\com\\sist\\xml2\\sawon.xml"));
			// 2. 최상위 태그 기억
			Element root=doc.getDocumentElement();
			System.out.println(root.getTagName()); // sawon
			// 같은 태그를 묶어서 반복문으로 처리
			NodeList list=root.getElementsByTagName("list");
			// 묶인 <list> 태그 갯수 확인
			System.out.println(list.getLength());
			for(int i=0; i<list.getLength(); i++)
			{
				list=root.getElementsByTagName("sabun");
				String sabun=list.item(i).getFirstChild().getNodeValue();
				list=root.getElementsByTagName("name");
				String name=list.item(i).getFirstChild().getNodeValue();
				list=root.getElementsByTagName("dept");
				String dept=list.item(i).getFirstChild().getNodeValue();
				list=root.getElementsByTagName("job");
				String job=list.item(i).getFirstChild().getNodeValue();
				list=root.getElementsByTagName("sal");
				String sal=list.item(i).getFirstChild().getNodeValue();
				
				System.out.println(sabun+" "+name+" "+dept+" "+job+" "+sal);
			}
		}catch(Exception ex) {}
	}

}










