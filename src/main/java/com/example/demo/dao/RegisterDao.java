package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
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
   
   //(진료접수 되지 않은)진료접수를 위한 예약목록
   public List<ReservationVo> listReservation(){
      return RegisterManager.listReservation();
   }
   
   //진료접수 되지 않은 모든 예약횟수를 조회
   public int countAllReservation() {
      return RegisterManager.countAllReservation();
   }
   //진료기록(clinic)에 등록되지 않은 모든 진료접수(register)의 수를 조회
   public int countAllRegister() {
      return RegisterManager.countAllRegister();
   }
   
   //진료기록 등록 - 진료기록(clinic)에 등록되지 않은 모든 진료접수(register)를 조회
   public List<RegisterVo> listRegister(){
      return RegisterManager.selectAllRegister();
   }
   
   //진료등록
   public int insertClinic(ClinicVo c) {
      return RegisterManager.insertClinic(c);
   }
   
   //진료번호 자동생성
   public int getNextCliNo() {
      return RegisterManager.getNextCliNo();
   }
}