package com.example.demo.db;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.Advice_BoardVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.RegisterVo;
import com.example.demo.vo.ReservationVo;

public class RegisterManager {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("manager:"+e.getMessage());
		}
	}
	
	//접수등록
	public static int insertRegister(RegisterVo r) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("register.insertRegister", r);
		session.close();
		return re;
	}

	//접수번호 자동생성
	public static int getNextRegiNo() {
		int n = -1;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("register.getNextRegiNo");
		session.close();
		return n;
	}
	
	//진료접수를 위한 예약목록 
	public static List<ReservationVo> listReservation(){
		List<ReservationVo> list = new ArrayList<ReservationVo>();
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("register.selectAllReservation");
		session.close();
		return list;
	}
	
	//회원들의 예약 총 횟수
	public static int cntAllReser() {
		int no = 0;
		SqlSession session = sqlSessionFactory.openSession();
		no = session.selectOne("register.cntAllReser");
		session.close();
		return no;
	}
}
