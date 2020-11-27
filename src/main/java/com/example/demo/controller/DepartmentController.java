package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.DepartmentDao;
import com.example.demo.vo.DepartmentVo;
//import com.google.gson.Gson;

@Controller
public class DepartmentController {
	@Autowired
	private DepartmentDao dao;
	public void setDao(DepartmentDao dao) {
		this.dao = dao;
	}
	
//	@RequestMapping("/listDept")
//	public void list(Model model) {
//		model.addAttribute("gslist",dao.findAllGS());
//		model.addAttribute("imlist",dao.findAllIM());
//		model.addAttribute("list",dao.findAllDept());
//		model.addAttribute("sortlist",dao.findAllSort());
//		System.out.println("컨트롤러");
//	}
	
//	@RequestMapping("/listDept6")
//	public String listDept() { //Json String을 만들어서 응답할예정
//		Gson gson = new Gson();
//		return gson.toJson(dao.findAll());
//	}
	
	@RequestMapping("/listDept1")
	@ResponseBody
	public List<DepartmentVo> listDept() {
		System.out.println("진료과컨트롤러_기본 동작함");
		List<DepartmentVo> list  = dao.findAll();		
		return list;
	}
	@RequestMapping("/listDept2")
	@ResponseBody
	public List<DepartmentVo> listDeptSort(){
		System.out.println("진료과컨트롤러_정렬 동작함");
		List<DepartmentVo> list = dao.findAllSort();
		return list;
	}
	
//	@RequestMapping("/listDept8")
//	public void list22() {}
	
	@RequestMapping("/listDept8")
	public void list() {}
}