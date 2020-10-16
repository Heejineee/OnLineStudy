package com.sist.controller;

import java.lang.reflect.Method;
import java.util.Scanner;

class A
{
	public void aaa()
	{
		System.out.println("A : aaa() call...");
	}
	public void bbb()
	{
		System.out.println("A : bbb() call...");
	}
	public void ccc()
	{
		System.out.println("A : ccc() call...");
	}
}

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scan=new Scanner(System.in);
		System.out.print("사이트 주소 입력 : ");
		String cmd=scan.next();
		
		A a=new A();
		if(cmd.equals("aaa.do"))
		{
			a.aaa();
		}
		else if(cmd.equals("bbb.do"))
		{
			a.bbb();
		}
		else if(cmd.equals("ccc.do"))
		{
			a.ccc();
		}
		try
		{
			// 클래스의 모든 정보를 읽어온다
			Class clsName=Class.forName("com.sist.controller.A");
			// 메모리 할당
			Object obj=clsName.newInstance();
			// A클래스가 가지고 있는 모든 메소드를 읽어온다
			Method[] methods=clsName.getDeclaredMethods();
			for(Method m:methods)
			{
				System.out.println(m.getName()); // A클래스에 선언되어 있는 메소드 이름을 가지고 온다
				// Method 위에 있는 Annotation을 읽는다
				RequestMapping rm=m.getAnnotation(RequestMapping.class);
				// 어노테이션을 읽어오는 방법
				if(cmd.equals(rm.value()))
				{
					m.invoke(obj, null);
					
				}
				
			}
		}catch(Exception ex) {}
	}

}











