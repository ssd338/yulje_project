package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ReservationManager;
import com.example.demo.vo.DepartmentVo;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;
import com.example.demo.vo.ReservationVo;

@Repository
public class ReservationDao {
//kkk
	public List<DepartmentVo> findAllDept(){
		return ReservationManager.findAllDept();
	}
	
	public List<DoctorVo> findByNoDoc(HashMap map){
		return ReservationManager.findByNoDoc(map);
	}
	
	public List<Doc_ScheduleVo> findByNoSche(HashMap map){
		return ReservationManager.findByNoSche(map);
	}
	
	public int insertRes(HashMap map) {
		// TODO Auto-generated method stub
		return ReservationManager.insertRes(map);
	}

	public int cntRes(HashMap map) {
		// TODO Auto-generated method stub
		return ReservationManager.cntRes(map);
	}
	
	public List<ReservationVo> findRes(int member_no){
		return ReservationManager.findRes(member_no);
	}
	
	
//	kkk end
	
	//회원번호로 예약현황횟수 조회
	public int cntByNo(int member_no) {
		return ReservationManager.cntByNo(member_no);
	}
	//이름, 예약번호 일치하는 지 확인
	public int checkReser_no(HashMap map) {
		return ReservationManager.checkReser_no(map);
	}
	//예약번호로 예약번호, 예약날짜, 예약시간 찾아오기
	public ReservationVo findByNo_Date_time(int reser_no) {
		return ReservationManager.findByNo_Date_time(reser_no);
	}
	//예약번호로 의사이름 조회
	public String findByDoc_name(int reser_no) {
		return ReservationManager.findByDoc_name(reser_no);
	}
	//예약번호로 진료과 이름 조회
	public String findByDept_name(int reser_no) {
		return ReservationManager.findByDept_name(reser_no);
	}

}
