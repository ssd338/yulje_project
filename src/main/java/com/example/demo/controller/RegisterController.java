package com.example.demo.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.RegisterDao;
import com.example.demo.vo.RegisterVo;
import com.example.demo.vo.ReservationVo;

@Controller
public class RegisterController {

	@Autowired
	private RegisterDao registerDao;
	
	// 예약관리자 페이지
	@RequestMapping("/reservationAdmin")
	public void reservationAdmin() {
		
	}
	
	//진료기록 등록 -clinic에 등록하는 페이지
	@RequestMapping("/clinicAdmin")
	public void clinicAdmin() {
		
	}

	//진료 접수 - 예약목록 보여주는 페이지
	@GetMapping("/insertRegister")
	public void insertRegister() {
	}	
	
	// 진료접수 - 예약 목록을 가져오는 ajax
	// 모든 예약번호를 가져온다. -> 예약번호의 정보를 가져와서 띄워준다.
	// 예약번호, 환자번호, 환자 이름, 환자 연락처, 진료과, 의료진, 예약일, 예약시간
	//
	@RequestMapping("/listReservation.ajax")
	@ResponseBody
	public ArrayList listReservation() {
		ArrayList list = new ArrayList();
		List<ReservationVo> ReservationList = registerDao.listReservation();	//모든 예약 목록 
		
		
		return list;
	}
	
	
	//진료 접수 -뷰페이지에서 등록버튼 눌렀을때 register에 등록해주는 기능
	@PostMapping("/insertRegister")
	public ModelAndView post_insertSubmit(RegisterVo r, HttpSession session, int reser_no) {
		ModelAndView mav = new ModelAndView("/listClinicForm"); //관리자 진료기록 페이지로 넘어가게 하기

		// 등록버튼 눌렀을때 동작 
		// 예약번호 가져오고 dao.getNextRegiNo()하고, sysdate로 날짜 만들어서
		// 맵을 담아서 insert로 보낸다 
		
		
		mav.addObject("reser_no", reser_no);
		int re = registerDao.insertRegister(r);
		int regi_no = registerDao.getNextRegiNo();
		mav.addObject("r", r);
		mav.addObject("re", re);
		mav.addObject("regi_no", regi_no);
		return mav;
	}
	
}
