package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.MedicalTVVo;


//건강티비
public class MedicalTVManager {
	
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
	
	// 모든 영상목록을 가져온다
	public static List<MedicalTVVo> findAllMedicalTV(HashMap map) {
		List<MedicalTVVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("medicalTV.selectAll", map);
		session.close();
		return list;
	}
	
	// 영상번호에 맞는 영상 정보를 가져온다
	public static MedicalTVVo findByNo(int no) {
		MedicalTVVo n = null;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicalTV.selectByNo", no);
		session.close();
		return n;
	}
	
	// 모든 영상의 수
	public static int getTotalRecord(String search) {
		int n = 0;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicalTV.getTotalRecord",search);
		session.close();
		return n;
	}
	
	
// ==========  (관리자) 영상의 추가, 수정, 삭제   ===========================
	
	public static int getNextNo() {
		int n = 0;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicalTV.getNextNo");
		session.close();
		return n;
	}
	
	public static int insert(MedicalTVVo m) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("medicalTV.insert", m);
		session.close();
		return re;
	}
}
