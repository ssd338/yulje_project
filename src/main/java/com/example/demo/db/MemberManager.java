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

public class MemberManager {
	
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

	//yd
	//로그인
	public static MemberVo selectMember(String username) {
		MemberVo m = null;
		SqlSession session = sqlSessionFactory.openSession();
		m = session.selectOne("member.selectMember",username);
		session.close();
		System.out.println(m);
		return m;
	}
	

	//아이디 찾기
	public static MemberVo findId(HashMap map) {
		MemberVo findId = null;
		SqlSession session = sqlSessionFactory.openSession();
		findId = session.selectOne("member.findId", map);
		session.close();
		return findId;
	}
	
	//비밀번호 찾기
	public static MemberVo findPwd(HashMap map) {
		MemberVo findPwd = null;
		SqlSession session = sqlSessionFactory.openSession();
		findPwd = session.selectOne("member.findPwd", map);
		session.close();
		return findPwd;
	}
	
	//비밀번호 변경
	public static int changePwd(MemberVo m) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.update("member.changePwd", m);
		session.close();
		return re;
	}
	//yd end
	
	
//	kkk
	//회원가입
	public static int insert(MemberVo m) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("member.insert", m);
		session.close();
		return re;
	}
	
	//비회원가입
	public static int insertGuest(HashMap map) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("member.insertGuest", map);
		session.close();
		return re;
	}
	
	//아이디 중복확인
	public static int checkId(HashMap map) {
		System.out.println(map);
		int n = -1;
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("member.checkId", map);
		session.close();
		return n;
	}
	
	//주민번호 중복확인
	public static int checkRR(HashMap map) {
		int n = -1;
		System.out.println(map);
		SqlSession session = sqlSessionFactory.openSession();
		n = session.selectOne("member.checkRR", map);
		System.out.println(n);
		session.close();
		return n;
	}
	
	//이름을 가져오기
	public static MemberVo getName(HashMap map) {
		MemberVo m = null;
		SqlSession session = sqlSessionFactory.openSession();
		m = session.selectOne("member.selectByRR", map);
		session.close();
		return m;
	}
	
	//비회원 정보를 가져오기
	public static MemberVo getGuest(HashMap map) {
		MemberVo m = null;
		SqlSession session = sqlSessionFactory.openSession();
		m = session.selectOne("member.selectByRRGuest", map);
		session.close();
		return m;
	}
	
	//비회원 회원전환
	public static int updateGuest(MemberVo m) {
		// TODO Auto-generated method stub
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.insert("member.updateGuest", m);
		session.close();
		return re;
	}
	
	
//	kkk end
	
	//회원번호를 통해 아이디 찾기
    public static MemberVo findById(int member_no) {
       MemberVo m = null;
       SqlSession session = sqlSessionFactory.openSession();
       m = session.selectOne("member.findById", member_no);
       session.close();
       return m;
    }
    
    //회원 비밀번호 확인
    public static int checkPwd(HashMap map) {
       int n = 0;
       SqlSession session = sqlSessionFactory.openSession();
       n = session.selectOne("member.checkPwd",map);
       session.close();
       return n;
       
    }

    //회원번호로 브이오 가져오기
    public static MemberVo getMember(int member_no) {
       MemberVo m = new MemberVo();
       SqlSession session = sqlSessionFactory.openSession();
       m = session.selectOne("member.getMember",member_no);
       session.close();
       return m;
    }
    
    //회원정보 수정
    public static int updateMember(MemberVo m) {
       int re = -1;
       SqlSession session = sqlSessionFactory.openSession(true);
       re = session.update("member.updateMember", m);
       session.close();
       return re;
    }  

  	
   // 비밀번호 수정
	public static int updatePwd(HashMap map) {
		int n = 0;
      SqlSession session = sqlSessionFactory.openSession(true);
      n = session.update("member.updatePwd", map);
      session.close();
      return n;
	}
	
  

	
//나의 상담내역
	public static List<Advice_BoardVo> getAdvice_board(int member_no) {	
		List<Advice_BoardVo> list = new ArrayList<Advice_BoardVo>();
		SqlSession session = sqlSessionFactory.openSession(true);
		list = session.selectList("member.getAdvice", member_no);
		System.out.println(list.size());
		session.close();
		return list;
	}

}
