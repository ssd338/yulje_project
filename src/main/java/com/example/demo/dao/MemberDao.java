package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.MemberManager;
import com.example.demo.vo.Advice_BoardVo;
import com.example.demo.vo.MemberVo;

@Repository
public class MemberDao {

	//yd
	public MemberVo findId(HashMap map) {
		return MemberManager.findId(map);
	}
	
	public MemberVo findPwd(HashMap map) {
		return MemberManager.findPwd(map);
	}

	//비밀번호 변경
	public int changePwd(MemberVo m) {
		return MemberManager.changePwd(m);
	}
	
	//yd end

//	kkk
	//회원가입
	public int insert(MemberVo m) {
		return MemberManager.insert(m);
	}
	//비회원가입
	public int insertGuest(HashMap map) {
		return MemberManager.insertGuest(map);
	}
	//아이디중복확인
	public int checkId(HashMap map) {
		return MemberManager.checkId(map);
	}
	//주민번호 등록되어있는지 확인
	public int checkRR(HashMap map) {
		return MemberManager.checkRR(map);
	}
	
	public MemberVo getName(HashMap map) {
		return MemberManager.getName(map);
	}
	//비회원로그인
	public MemberVo getGuest(HashMap map) {
		return MemberManager.getGuest(map);
	}
	

	//비회원 회원전환
	public int updateGuest(MemberVo m) {
		// TODO Auto-generated method stub
		return MemberManager.updateGuest(m);
	}
	

//	kkk end
	
	// 비밀번호확인
		public int checkPwd(HashMap map) {
			return MemberManager.checkPwd(map);
		}
		
		// 멤버가져오기
		public MemberVo getMember(int member_no) {
			return MemberManager.getMember(member_no);
		}
		
		//비밀번호 변경
		public int newPwd(HashMap map) {
			return MemberManager.updatePwd(map);
		}
		
		//회원정보 수정
		 public int updateMember(MemberVo m) {
		      return MemberManager.updateMember(m);
		   }
		 
		 //나의 상담내역
		 public List<Advice_BoardVo> myAdvice(int member_no) {
			 return MemberManager.getAdvice_board(member_no);

		 }
	
}
