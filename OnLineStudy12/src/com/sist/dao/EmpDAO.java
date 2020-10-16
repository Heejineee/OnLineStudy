package com.sist.dao;
import java.sql.*;
import java.util.*;
public class EmpDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@211.238.142.199:1521:XE";
	// 드라이버 등록
	public EmpDAO()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	// dhfkzmf dusruf
	public void getConnection()
	{
		try
		{
			conn=DriverManager.getConnection(URL, "hr", "happy");
		}catch(Exception ex) {}
	}
	// 오라클 연결 해제
	public void disConnection()
	{
		try
		{
			if(ps!=null)
				ps.close();
			if(conn!=null)
				conn.close();
		}catch(Exception ex) {}
	}
	public List<EmpVO> empListData()
	{
		List<EmpVO> list=new ArrayList<EmpVO>();
		try
		{
			// 연결
			getConnection();
			// SQL 문장 전송
			String sql="SELECT empno, ename, job, TO_CHAR(hiredate, 'YYYY-MM-DD'), sal, dname, loc "
							+"FROM emp, dept "
							+"WHERE emp.deptno=dept.deptno";
			ps=conn.prepareStatement(sql);
			// 실행 후에 결과값 읽기
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				EmpVO vo=new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setDbday(rs.getString(4));
				vo.setSal(rs.getInt(5));
				vo.setDname(rs.getString(6));
				vo.setLoc(rs.getString(7));
				
				// 전체 => list에 첨부
				list.add(vo);
			}
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			// 서버, 데이터베이스 닫는 경우에 사용(무조건 수행)
			disConnection();
		}
		return list;
	}
}















