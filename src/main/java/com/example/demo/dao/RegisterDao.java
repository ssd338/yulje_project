package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ClinicManager;
import com.example.demo.db.MemberManager;
import com.example.demo.db.RegisterManager;
import com.example.demo.vo.ClinicVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.RegisterVo;
import com.example.demo.vo.ReservationVo;


@Repository
public class RegisterDao {
	//접수등록
	public int insertRegister(RegisterVo r) {
		return RegisterManager.insertRegister(r);
	}
	
	//접수번호 자동생성
	public int getNextRegiNo() {
		return RegisterManager.getNextRegiNo();
	}
	
	//진료접수를 위한 예약목록
	public List<ReservationVo> listReservation(){
		return RegisterManager.listReservation();
	}
	
	//모든예약횟수
	public int countAllReservation() {
		return RegisterManager.cntAllReser();
	}
}