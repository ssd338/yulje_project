package com.example.demo.controller;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MemberDao;
import com.example.demo.db.MemberManager;
import com.example.demo.sms.BitSms;
import com.example.demo.util.CheckRR;
import com.example.demo.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberDao dao;

	// yd
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main() {
//	HttpSession session		
//		Authentication authentication 
//		= SecurityContextHolder.getContext().getAuthentication();
//
//		User user = (User) authentication.getPrincipal();
//		String id = user.getUsername();
//		MemberVo m = MemberManager.selectMember(id);
//		session.setAttribute("m", m);
	}
	 // 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {	
		System.out.println("로그인 컨트롤러 동작함!");
	}
	


	// 로그인 결과 페이지
	@GetMapping("/loginSuccess")
	public String dispLoginResult(HttpSession session) {		
		  Authentication authentication =
		  SecurityContextHolder.getContext().getAuthentication();
		  
		  User user = (User) authentication.getPrincipal(); 
		  String id = user.getUsername(); 
		  MemberVo m = MemberManager.selectMember(id);
		  session.setAttribute("m", m); 
		  return "/main";
	}
	
	//전체 페이지로 세션 유지해서 뿌려줌
	@RequestMapping("/")
	public void memberStart(HttpSession session) {
		Authentication authentication 
		= SecurityContextHolder.getContext().getAuthentication();

		User user = (User) authentication.getPrincipal();
		String id = user.getUsername();
		MemberVo m = MemberManager.selectMember(id);
		session.setAttribute("m", m);
	}

	// 접근 거부 페이지
	@GetMapping("/user/denied")
	public String dispDenied() {
		return "/denied";
	}


	// 아이디찾기
	@GetMapping("/findId")
	public void findId() {

	}

	@PostMapping("/findId")
	@ResponseBody
	public HashMap findId(@RequestParam HashMap map) {
		System.out.println(map);
		MemberVo id = dao.findId(map);
		System.out.println(id.getId());
		HashMap data = new HashMap<>();
		data.put("id", id.getId());
		return data;
	}

	// 비밀번호 찾기
	@RequestMapping("/findPwd")
	public void findPwd() {

	}

	@PostMapping("/findPwd")
	public ModelAndView findPwd(MemberVo m) {
		ModelAndView mav = new ModelAndView("/changePwd");
		mav.addObject("m", m);
		return mav;

//		HashMap data = new HashMap<>();
//		data.put("m", m);
//		return data;
	}

	// 비밀번호 변경 페이지로 보내기
	@GetMapping("/changePwd")
	public ModelAndView changePwd() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	// 비밀번호 변경을 위한 메소드
	@PostMapping("/changePwd")
	public ModelAndView changePwd(MemberVo m) {
		ModelAndView mav = new ModelAndView("/login");
		dao.changePwd(m);
		return mav;
	}
	// yd end

	// 회원가입 페이지로 보내기
	@GetMapping("/insertMember")
	public ModelAndView insertForm() {
		ModelAndView mav = new ModelAndView();

		return mav;
	}

	// 회원등록을 위한 메소드
	@PostMapping("/insertMember")
	public ModelAndView insertSubmit(MemberVo m) {
		ModelAndView mav = new ModelAndView("/joinOk");
		int re = dao.insert(m);
		mav.addObject("m", m);
		mav.addObject("re", re);
		mav.addObject("msg", "회원가입");
		return mav;
	}
//	
//	//비회원등록을 위한 메소드
//	@PostMapping("/insertGuest")
//	public ModelAndView insertGuest(MemberVo m) {
//		ModelAndView mav = new ModelAndView("/joinOk");
//		int re = dao.insert(m);
//		mav.addObject("m", m);
//		mav.addObject("re", re);
//		mav.addObject("msg", "비회원");
//		return mav;
//	}

	// 회원 아이디 중복확인
	@PostMapping("/checkId")
	@ResponseBody
	public String checkId(@RequestParam HashMap map) {
		int n = dao.checkId(map);
		return n + "";
	}

	// 본인인증폼
	@GetMapping("/checkMember")
	public void checkForm() {

	}

	@PostMapping("/checkMember")
	public ModelAndView checkMember(MemberVo m) {
		ModelAndView mav = new ModelAndView("/insertMember");
		mav.addObject("m", m);
		return mav;
	}

	@PostMapping("/checkRR")
	@ResponseBody
	public HashMap checkRR(@RequestParam HashMap map) {
//		System.out.println(map);
		map.put("roles", "USER");
		String rr_check = (String) map.get("rr_check");
		int already = dao.checkRR(map);

		String re = CheckRR.check(rr_check);
		HashMap data = new HashMap<>();
		data.put("already", already);
		data.put("re", re);
		return data;
	}

	@PostMapping("/checkTel")
	@ResponseBody
	public HashMap checkTel(@RequestParam HashMap map) {
		String to = (String) map.get("tel");
		Random r = new Random();
		String msg = r.nextInt(10) + "" + r.nextInt(10) + "" + r.nextInt(10) + "" + r.nextInt(10) + "" + r.nextInt(10)
				+ "" + r.nextInt(10);
		System.out.println(msg);
		String send = BitSms.sendMsg(to, msg);
		HashMap data = new HashMap<>();
		data.put("send", send);
		data.put("msg", msg);
		return data;
	}

	@GetMapping("/checkGuest")
	public void guestForm() {
	}

	@PostMapping("/checkGuest")
	public ModelAndView guestSubmit() {
		ModelAndView mav = new ModelAndView("/joinOk");

		mav.addObject("msg", "비회원인증");
		return mav;
	}

	@PostMapping("/guestRR")
	@ResponseBody
	public HashMap guestRR(@RequestParam HashMap map, HttpSession session) {
		map.put("roles", "GUEST");
		System.out.println(map);
		int already = dao.checkRR(map);

		// 비회원에 없는 주민번호라면 비회원등록
		if (already <= 0) {
			int ig = dao.insertGuest(map);
		}

		// 등록된 비회원 정보를 가져와 session에 담아 로그인처리
		MemberVo guest = dao.getGuest(map);
		if (guest != null) {
			session.setAttribute("m", guest);
		}
		System.out.println(guest);
		HashMap data = new HashMap<>();
		data.put("guest", guest);
		return data;
	}

	@PostMapping("/guestRRtoMem")
	@ResponseBody
	public HashMap guestRRtoMem(@RequestParam HashMap map, HttpSession session) {
		map.put("roles", "GUEST");
//		System.out.println(map);

		// 비회원 등록되어있는 주민번호인지 확인
		int already = dao.checkRR(map);

		// 등록된 비회원 정보를 가져와 request에 담아 로그인처리
		MemberVo guest = dao.getGuest(map);
		String tel = (String) map.get("tel");
		guest.setTel(tel);
		if (guest != null) {
			session.setAttribute("m", guest);
		}
//		System.out.println(guest);
		HashMap data = new HashMap<>();
		data.put("already", already);

		data.put("guest", guest);
		return data;
	}

	@GetMapping("/updateGuest")
//	@ResponseBody
	public ModelAndView updateGuest() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@PostMapping("/updateGuest")
//	@ResponseBody
	public ModelAndView updateGuestSubmit(MemberVo m) {
		ModelAndView mav = new ModelAndView("joinOk");
		int re = dao.updateGuest(m);
		mav.addObject("m", m);
		mav.addObject("re", re);
		mav.addObject("msg", "회원가입");
		return mav;
	}

	@GetMapping("/join-allow")
	public void join() {
	}

	@GetMapping("/joinOk")
	public void joinOk() {
	}
}
