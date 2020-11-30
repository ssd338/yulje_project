package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ClinicDao;
import com.example.demo.dao.MemberDao;
import com.example.demo.dao.ReservationDao;
import com.example.demo.vo.Advice_BoardVo;
import com.example.demo.vo.MemberVo;

import lombok.Setter;

@Controller
@Setter
public class MyPageController {
	//메인 페이지로 이동
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private ClinicDao clinicDao;
	
	
	@RequestMapping("/main")
	public void main() {
		
	}
	
/*  member_no 줘서 memberVo가져오는 코드 있는 부분은 다 findMyIf.ajax통신으로 처리하도록 수정할 예정  */
	
	@RequestMapping("/myPage_1")					//나의 차트 페이지/ 최근 예약건수와 진료내역을 보여줌
	public ModelAndView myPage_1(HttpSession session) {
		int member_no = -1;
		if(session.getAttribute("m") != null) {
			member_no = ((MemberVo)session.getAttribute("m")).getMember_no();
		}
		int cnt = reservationDao.cntByNo(member_no);	//나의 예약현황횟수
		ModelAndView mav = new ModelAndView();		
		mav.addObject("cnt", cnt);						//뷰페이지에서 몇건 예약됐는지 보여주기 위함
		return mav;
	}
	
//	<<   회원정보 수정 -  비밀번호 확인    >>
	@RequestMapping(value="/myPage_2",method = RequestMethod.GET )
	public ModelAndView get_myPage_2(HttpSession session) {		//로그인한 회원의 회원정보를 가져옴
		MemberVo m = new MemberVo();
		if(session.getAttribute("m") != null) {
			m = (MemberVo)session.getAttribute("m");
		}
	
		//비밀번호 확인 페이지로 memberVo를 보내준다.
		ModelAndView mav = new ModelAndView();	
		mav.addObject("m", m);
		return mav;
	}
	
	//개인정보수정 전 비밀번호 확인   
	@RequestMapping(value="/checkPwd.ajax",method = RequestMethod.POST )
	@ResponseBody
	public String checkPwd(@RequestParam HashMap map) {	//회원번호, 아이디, 비밀번호
		String a = memberDao.checkPwd(map)+"";			//아이디와 비밀번호 맞는 지 체크해서 보내줌
		return a;
	}
	
	
	//개인정보수정페이지Get - 회원의 기존 정보를 가져와서 수정창에 보여준다.
	@RequestMapping(value = "/myPage_7", method = RequestMethod.GET)
	public ModelAndView get_myPage_7(HttpSession session) {
	   MemberVo m = new MemberVo();
	   if(session.getAttribute("m") != null) {
	         m = (MemberVo)session.getAttribute("m");
	      }
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("m",m);		//memberVo를 보내준다.
	      return mav;
	   }
	   
	   //개인정보수정페이지Post
	      @RequestMapping(value = "/myPage_7", method = RequestMethod.POST)
	      public ModelAndView post_myPage_7(MemberVo m) {
	        //m에는 회원번호, 이메일, 주소, 전화번호가 들어있음.
	         int re = memberDao.updateMember(m);      //회원정보 수정
	         ModelAndView mav = new ModelAndView();    
	         if(re <= 0) {                        //회원정보 수정결과에 따른 동작
	            mav.addObject("msg", "회원 수정에 실패하였습니다."); // -> 오류시 어떻게 처리해줄지 구상중
	        }else {
	        	mav.setViewName("redirect:/myPage_7");			// 수정 성공하면 다시 해당 페이지로 보냄
	        }
	         return mav;
	      }
	
//	      비밀번호 변경 하는 페이지
	      @RequestMapping(value = "/myPage_3", method = RequestMethod.GET)
	      public ModelAndView get_myPage_3(HttpSession session) {
	         ModelAndView mav = new ModelAndView();
	         MemberVo m = new MemberVo();
	  	   	 if(session.getAttribute("m") != null) {
	  	         m = (MemberVo)session.getAttribute("m");
	  	      }
	         mav.addObject("m",m);		//memberVo를 보내준다.
	         return mav;
	         
	      }
	      
//	      비밀번호 변경 하는 페이지
	      @RequestMapping(value = "/myPage_3", method = RequestMethod.POST)
	      public ModelAndView post_myPage_3(int member_no, String newpwd1) {
	         ModelAndView mav = new ModelAndView();
	     
	         
	         // 새비밀번호로 수정 - 입력받은 새 비밀번호와 뷰페이지에 있던 member_no를 받아와서 업데이트함
	            HashMap map = new HashMap<>();
	            map.put("pwd",newpwd1);
	            map.put("member_no", member_no);
	            int b = memberDao.newPwd(map);      // 새로운 비밀번호로 수정
	            if(b == 1) {                  // 수정 성공   
	               mav.setViewName("redirect:/myPage_1");
	               
	            }
	      // ======== 실패시  이부분 메세지로 어떻게 처리해줄지 구상해서 수정 =============
	            else {   
	               mav.addObject("msg","비밀번호 수정에 실패하였습니다.");   
	            }
	            
	         return mav;
	      }
	      
  
	

		@RequestMapping(value = "/myPage_4", method = RequestMethod.GET)
		public void get_myPage_4() {
			
		}
		
		//이름과 예약번호 맞는 지 확인
		@RequestMapping(value="/myPage_4", method = RequestMethod.POST)
		public ModelAndView post_myPage_4(HttpSession session, String name, int reser_no) {
			int member_no = -1;
			if(session.getAttribute("m") != null) {
				member_no = ((MemberVo)session.getAttribute("m")).getMember_no();
			}
			ModelAndView mav = new ModelAndView();	
			HashMap map = new HashMap<>();		//멤버번호의 해당하는 이름과 예약번호가 맞았는 지 확인
			map.put("member_no", member_no);
			map.put("name", name);
			map.put("reser_no", reser_no);
			int a = reservationDao.checkReser_no(map);	//이름=예약번호가 맞는지 확인
			
			if (a == 1) {	//예약번호가 맞았을 때 
				mav.addObject("reser_no", reser_no);	//예약페이지로 예약번호 보내주기
				mav.setViewName("redirect:/reserconfirm");
			}
			
			return mav;
			
		}
	
	//나의 상담 => myPage_5에서 ajax으로 처리
	@RequestMapping(value = "/myAdivice.ajax", 
			produces = "application/json;charset=utf8",
			method = RequestMethod.GET
			)
	@ResponseBody
	public List<Advice_BoardVo> myPage_5_1(HttpSession session) {
		int member_no = -1;
		if(session.getAttribute("m") != null) {
			member_no = ((MemberVo)session.getAttribute("m")).getMember_no();
		}
		List<Advice_BoardVo> list = memberDao.myAdvice(member_no);	//나의 상담 내역을 리스트로 반환
		int endlist = 6;	//최근 6개의 상담내역을 보여주기 위해서
		if(endlist>list.size()) {
			endlist = list.size();
		}
		List<Advice_BoardVo> list2 = new ArrayList<Advice_BoardVo>();
		for(int i=0; i<endlist; i++) {
			list2.add(list.get(i));
		}
		return list2;	
	}
	@RequestMapping(value = "/myPage_5")
	public void myPage_5(HttpSession session) {
		
	}
	
		
	//강좌 페이지 Get
	@RequestMapping(value = "/myPage_6", method = RequestMethod.GET)
	public ModelAndView get_myPage_6(HttpSession session) {
		MemberVo m = new MemberVo();
 	   	 if(session.getAttribute("m") != null) {
 	         m = (MemberVo)session.getAttribute("m");
 	      }
		ModelAndView mav = new ModelAndView();		
		mav.addObject("name", m.getName());
		return mav;
	}
	
	//나의 서류 발급
	@RequestMapping(value="/findMyInfo.ajax",method = RequestMethod.GET )
	@ResponseBody
	public MemberVo documentOnline(HttpSession session) {	
		MemberVo m = new MemberVo();
 	   	 if(session.getAttribute("m") != null) {
 	         m = (MemberVo)session.getAttribute("m");
 	      }
		return m;
	}
	
	//증명서발급
	@RequestMapping(value="/document", method = RequestMethod.GET)
	public void document() {
	}
	//증명서발급
	@RequestMapping(value="/documentOnline", method = RequestMethod.GET)
	public void documentOnline() {
	}
}
