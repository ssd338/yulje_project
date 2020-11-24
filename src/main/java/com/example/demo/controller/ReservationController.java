package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MemberDao;
import com.example.demo.dao.ReservationDao;
import com.example.demo.vo.DepartmentVo;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReservationVo;

@Controller
public class ReservationController {

	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private MemberDao memberDao;
	
	@GetMapping("/reservation")
	public void resForm() {
		
	}
	
	@GetMapping("/resDept")
	@ResponseBody
	public List<DepartmentVo> resDept(){
		List<DepartmentVo> list = reservationDao.findAllDept();
		return list;
	}
	
	@PostMapping("/resDoc")
	@ResponseBody
	public List<DoctorVo> resDoc(@RequestParam HashMap map) {
//		System.out.println(map);
		List<DoctorVo> list = reservationDao.findByNoDoc(map);
//		System.out.println(list);
		return list;
	}
	
	@PostMapping("/resSche")
	@ResponseBody
	public List<Doc_ScheduleVo> resSche(@RequestParam HashMap map) {
		List<Doc_ScheduleVo> list = reservationDao.findByNoSche(map);
		return list;
	}
	
	//해당예약번호의 예약상세내역 보여주기
		@GetMapping("/reserconfirm")
		public ModelAndView reserconfirm(HttpSession session, int reser_no) {
			ModelAndView mav = new ModelAndView();
			int member_no = -1;
			if(session.getAttribute("member_no") != null) {
				member_no = (int)session.getAttribute("member_no");
			}
			
		    String doc_name = reservationDao.findByDoc_name(reser_no);	//예약번호로 의사이름 찾아오기
		    String dept_name = reservationDao.findByDept_name(reser_no);	//예약번호로 진료과 찾아오기
		    MemberVo m = memberDao.getMember(member_no);
		    ReservationVo r = reservationDao.findByNo_Date_time(reser_no);	//예약번호로 예약관련내용 찾아오기
		    String roles = m.getRoles();
		    if(m.getRoles().equals("USER")) {	//회원일 시에 회원 뜨게 하기
		    	roles="회원";	
		    }
		    mav.addObject("name", m.getName());
		    mav.addObject("roles", roles);
		    mav.addObject("tel", m.getTel());
		    mav.addObject("doc_name", doc_name);
		    mav.addObject("dept_name", dept_name);
		    mav.addObject("reser_no", r.getReser_no());
			mav.addObject("reser_date", r.getReser_date());
			mav.addObject("reser_time", r.getReser_time());
			return mav;
		}
		
}
