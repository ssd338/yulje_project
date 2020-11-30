package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ClinicDao;
import com.example.demo.dao.MemberDao;
import com.example.demo.vo.ClinicVo;
import com.example.demo.vo.MemberVo;

import lombok.Setter;

@Controller
@Setter
public class ClinicController {

   @Autowired
   private ClinicDao clinicDao;
   
   @Autowired
   private MemberDao memberDao;
   
   


   //환자번호로 진료이력조회
   @RequestMapping("/listClinic")
   public ModelAndView list(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      MemberVo m = new MemberVo();
	  if(session.getAttribute("m") != null) {
	     m = (MemberVo)session.getAttribute("m");
	  }
      mav.addObject("name", m.getName());
     int cnt = clinicDao.cntByClinic(m.getMember_no());   // 총 진료횟수
     mav.addObject("cnt", cnt);   
      return mav;
      
   }
   

   
   
 //ajax으로 진료이력 불러오기   -> listClinic, myPage_1에서 사용
   @RequestMapping("/allListClinic.ajax")
   @ResponseBody
   public ArrayList allListAjax(HttpSession session,@RequestParam HashMap map) {
	   int member_no = -1;
		if(session.getAttribute("m") != null) {
			member_no = ((MemberVo)session.getAttribute("m")).getMember_no();
		}
      //(totalData,dataPerPage,currentPage)   //매개변수로 총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
      // 회원번호를 통해서 진료기록을 가져온다
      List<ClinicVo> list = clinicDao.findByNoMem(member_no);
      ArrayList list2 = new ArrayList();
      int currentPage =Integer.parseInt((String)map.get("currentPage"));   // 현재 페이지               7
      int dataPerPage = Integer.parseInt((String)map.get("dataPerPage"));   // 한페이지에 보여질 데이터의 수      5
      int totalData = Integer.parseInt((String)map.get("totalData"));      // 총 데이터의 수            31
       
        int end =currentPage * dataPerPage;      //현재 페이지의 끝레코드      현재페이지 * 한페이지에서 보여줄 레코드의 수      35
        
        int start = end - (dataPerPage);   //현재 페이지의 시작시코드      35-5 30
        if(start<0) {
           start=0;
        }
        if(end >totalData) {                  //35>31   => 31   //5   //10
             end = totalData;
          }

      //리스트 돌면서 맵에 진료 기록(의사이름등)을 담음
      for(int i=start; i<end; i++) {   
         HashMap map2 = new HashMap();
         int cli_no = list.get(i).getCli_no();
         map2.put("cli_no", cli_no);                        //진료번호
         map2.put("cli_date", list.get(i).getCli_date());         //진료일
         map2.put("cli_content", list.get(i).getCli_content());   //진단내역
         map2.put("dept_name", clinicDao.selectDeptName(cli_no));      //진료과
         map2.put("doc_name", clinicDao.selectDocName(cli_no));         //담당의
         list2.add(map2);
      }
        return list2;
  }
   
   //진료번호로 진료이력 상세조회
   @RequestMapping("/detailClinic")
   public ModelAndView detail(int cli_no) {
      ModelAndView mav = new ModelAndView();
      ClinicVo c = clinicDao.findByNoCli(cli_no);
      String Dept_name = clinicDao.selectDeptName(cli_no);      //진료과
      String Doc_name = clinicDao.selectDocName(cli_no);    //주치의
      String Medi_name = clinicDao.selectMediName(cli_no);    //약품이름
      
      mav.addObject("c", c);
      mav.addObject("dept_name", Dept_name);
      mav.addObject("doc_name", Doc_name);
      mav.addObject("medi_name", Medi_name);
      return mav;
   }   
   
}