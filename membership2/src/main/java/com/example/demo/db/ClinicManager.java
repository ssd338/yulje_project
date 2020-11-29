package com.example.demo.db;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.ClinicVo;

public class ClinicManager {
   
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
   
   //회원번호로 환자의 진료이력불러오기
   public static List<ClinicVo> findByNoMem(int member_no) {
      List<ClinicVo> list = null;
      SqlSession session = sqlSessionFactory.openSession();
      list = session.selectList("clinic.selectByNoMem", member_no);
      session.close();
      return list;
   }
   
   //진료번호로 진료내역 상세보기
   public static ClinicVo findByNoCli(int cli_no) {
      ClinicVo c = null;
      SqlSession session = sqlSessionFactory.openSession();
      c = session.selectOne("clinic.selectByNoCli", cli_no);
      session.close();
      return c;
   }
   
   //진료번호로 환자의 진료과 불러오기
   public static String selectByNoMem2(int cli_no) {
       SqlSession session = sqlSessionFactory.openSession();
       String a = session.selectOne("clinic.selectByNoMem2",cli_no);
       session.close();
       return a;   
   }
            
   //진료번호로 환자의 진료의사 불러오기
   public static String selectByNoMem3(int cli_no) {
      SqlSession session = sqlSessionFactory.openSession();
      String a = session.selectOne("clinic.selectByNoMem3",cli_no);
      session.close();
      return a;   
   }
 //진료번호로 환자의 약품이름 불러오기
   public static String selectByNoMem4(int cli_no) {
      SqlSession session = sqlSessionFactory.openSession();
      String a = session.selectOne("clinic.selectByNoMem4",cli_no);
      session.close();
      return a;   
   }
   
   //회원번호로 진료횟수 조회
   public static int cntByClinic(int member_no) {
      int n = 0;
      SqlSession session = sqlSessionFactory.openSession();
      n = session.selectOne("clinic.cntByClinic",member_no);
      session.close();
      return n;   
   }
}