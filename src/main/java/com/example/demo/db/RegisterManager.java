package com.example.demo.db;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.ClinicVo;
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
   
   //모든 예약횟수를 조회
   public static int countAllReservation() {
      int n = -1;
      SqlSession session = sqlSessionFactory.openSession();
      n = session.selectOne("register.countAllReservation");
      session.close();
      return n;
   }
   
//진료기록(clinc)에 등록되지 않은 모든 진료접수(register)의 수를 조회
   public static int countAllRegister() {
      int n = -1;
      SqlSession session = sqlSessionFactory.openSession();
      n = session.selectOne("register.countAllRegister");
      session.close();
      return n;
   }
   
//진료기록 등록 - 진료기록(clinc)에 등록되지 않은 모든 진료접수(register)를 조회
   public static List<RegisterVo> selectAllRegister(){
      List<RegisterVo> list = new ArrayList<RegisterVo>();
      SqlSession session = sqlSessionFactory.openSession();
      list = session.selectList("register.selectAllRegister");
      session.close();
      return list;
   }
   
   //진료등록
   public static int insertClinic(ClinicVo c) {
      int re = -1;
      SqlSession session = sqlSessionFactory.openSession(true);
      re = session.insert("register.insertClinic", c);
      session.close();
      return re;
   }

   //진료번호 자동생성
   public static int getNextCliNo() {
      int n = -1;
      SqlSession session = sqlSessionFactory.openSession();
      n = session.selectOne("register.getNextCliNo");
      session.close();
      return n;
   }
}