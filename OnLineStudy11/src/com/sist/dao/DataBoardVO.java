package com.sist.dao;
import java.util.*;
// 한개의 게시물에 대한 정보
/*
 * 		오라클				자바
 * 	문자 =========> String
 * 		CHAR			
 * 		VARCHAR2		   
 * 		CLOB
 *  숫자 =========> int, double
 *  	NUMBER
 *  	NUMBER(7,2)
 *  날짜 =========> java.util.Date
 *  	DATE
 *  기타 =========> InputStream(IO)
 *  	BFILE 그림파일 ==> 권장(경로명만 주고 읽을 수 있게)
 *  	BLOB
 */
// 캡슐화 => 데이터를 은닉 => 외부 연결시에 메소드(getter(읽기)/setter(쓰기) 이용하는 방ㅅㄱ)
// 데이터 보호 목적

public class DataBoardVO {
	private int no;
	private String name;
	private String subject;
	private String content;
	private String pwd;
	private Date regdate;
	private int hit;
	private String filename;
	private int filesize;
	private String dbday;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	public String getDbday() {
		return dbday;
	}
	public void setDbday(String dbday) {
		this.dbday = dbday;
	}
	
}
