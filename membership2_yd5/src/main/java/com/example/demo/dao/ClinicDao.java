package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ClinicManager;
import com.example.demo.vo.ClinicVo;

@Repository
public class ClinicDao {
   
   //<!-- 회원번호를 통해 진료기록 가져오기 -->
   public List<ClinicVo> findByNoMem(int member_no) {
      return ClinicManager.findByNoMem(member_no);
   }
   //<!-- 진료번호를 통해 진료기록 가져오기 -->
   public ClinicVo findByNoCli(int cli_no) {
      return ClinicManager.findByNoCli(cli_no);
   }
   //<!-- 진료번호로 진료받은 진료과이름 조회 -->
   public String selectDeptName(int cli_no) {
       return ClinicManager.selectByNoMem2(cli_no);
   }
   //<!-- 진료번호로 진료받은 의사이름 조회 -->   
   public String selectDocName(int cli_no) {
      return ClinicManager.selectByNoMem3(cli_no);
   }
   
   //<!-- 회원번호를 통해 진료횟수 조회 
   public int cntByClinic(int member_no) {
      return ClinicManager.cntByClinic(member_no);
   }
   //<!-- 진료번호로 진료받은 약품이름 조회 -->   
   public String selectMediName(int cli_no) {
      return ClinicManager.selectByNoMem4(cli_no);
   }
}