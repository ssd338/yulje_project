package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.DepartmentVo;
import com.example.demo.vo.DoctorVo;


public class DepartmentManager {
	
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
	
//	//의료과-내과 목록.
//	public static List<DepartmentVo> findAllGS(){
//		List<DepartmentVo> list = null;
//		SqlSession session = sqlSessionFactory.openSession();
//		list = session.selectList("department.selectAllGS");
//		session.close();
//		return list;
//	}
//
//	//의료과-외과 목록.
//	public static List<DepartmentVo> findAllIM(){
//		List<DepartmentVo> list = null;
//		SqlSession session = sqlSessionFactory.openSession();
//		list = session.selectList("department.selectAllIM");
//		session.close();
//		return list;
//	}
//	
//	//의료과-일반과 목록.
//	public static List<DepartmentVo> findAllDept(){
//		List<DepartmentVo> list = null;
//		SqlSession session = sqlSessionFactory.openSession();
//		list = session.selectList("department.selectAllDept");
//		session.close();
//		return list;
//	}
	//위에꺼 필요없어짐. 근데그냥냅둠.
	
	//모든목록 출력
	public static List<DepartmentVo> findAll(){
		List<DepartmentVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectAll");
		session.close();
		return list;
	}
	//모든목록 출력
	public static List<DepartmentVo> findAll2(String search){
		List<DepartmentVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectAll2", search);
		session.close();
		return list;
	}
	
	//가나다순 정렬.
	public static List<DepartmentVo> findAllSort(){
		List<DepartmentVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectAllSort");
		session.close();
		return list;
	}
	
	//의료과 상세.
	public static DepartmentVo findByNoDept(int dept_no) {
		DepartmentVo d = null;
		SqlSession session = sqlSessionFactory.openSession();
		d = session.selectOne("department.selectByNo",dept_no);
		session.close();
		return d;
	}
	
	//dept번호 가져와서 의사 정보 호출
	public static List<DoctorVo> findByDept(HashMap map) {
		List<DoctorVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("department.selectByNo", map);
		session.close();
		return list;
	}
	//목록조회만 구현하는중
}