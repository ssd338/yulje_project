package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.MedicineVo;
//약품
public class MedicineManager {
	
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
	
	// 모든 약품목록을 가져온다
	public static List<MedicineVo> findAllMedicine(HashMap map) {
		List<MedicineVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("medicine.selectAll", map);
		session.close();
		return list;
	}
	
	// 약품번호에 맞는 약품 정보를 가져온다
	public static MedicineVo findByNo(int no) {
		MedicineVo n = null;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicine.selectByNo", no);
		session.close();
		return n;
	}
	
	// 모든 약품의 수
	public static int getTotalRecord(String search) {
		int n = 0;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicine.getTotalRecord",search);
		session.close();
		return n;
	}
	
	
// ==========  (관리자) 약품의 추가, 수정, 삭제   ===========================
	
	public static int getNextNo() {
		int n = 0;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("medicine.getNextNo");
		session.close();
		return n;
	}
	
	public static int insert(MedicineVo m) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("medicine.insert", m);
		session.close();
		return re;
	}
}
