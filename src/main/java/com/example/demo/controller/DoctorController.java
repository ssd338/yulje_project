package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.Doc_CareerDao;
import com.example.demo.dao.Doc_EducationDao;
import com.example.demo.dao.Doc_ScheduleDao;
import com.example.demo.dao.DoctorDao;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;

import lombok.Setter;

@Controller
@Setter
public class DoctorController {
	
	@Autowired
	private DoctorDao dao;
	@Autowired
	private Doc_ScheduleDao sdao;
	@Autowired
	private Doc_EducationDao edao;
	@Autowired
	private Doc_CareerDao cdao;
	
	
	
	
//	@RequestMapping("/listDoctor")
//	public void list(@RequestParam(defaultValue = "1")int dept_no, Model model) {
//		model.addAttribute("dept_no", dept_no);
//	}
//	
//	@RequestMapping("/listDoctor1")
//	@ResponseBody
//	public List<DoctorVo> listDoctor() {
//		System.out.println("의료진목록 컨트롤러 동작");
//		List<DoctorVo> list  = dao.findAll();
//		return list;
//	}
	
	
	
	
	
	@RequestMapping("/listDoctor")
	public void doctorList(@RequestParam(defaultValue = "1")int dept_no, Model model) {
		model.addAttribute("dlist", dao.findAllByDeptNo(dept_no));
		model.addAttribute("d", dao.findDocDept(dept_no));
	}
	
	
	@RequestMapping("/detailDoctor")
	public void detail(int doc_no, Model model) {
		model.addAttribute("d", dao.findByNo(doc_no));
		model.addAttribute("dsche", sdao.findAllSche(doc_no));
		model.addAttribute("dcar", cdao.findAllCar(doc_no));
		model.addAttribute("dedu", edao.findAllEdu(doc_no));
	}
	@RequestMapping("/join")
	public void join() {}
	
	@RequestMapping("/join-allow")
	public void allow() {}
	
	@RequestMapping("/reserconfirm")
	public void confirm() {}
	
	@RequestMapping("/res")
	public void confirms() {}
}
