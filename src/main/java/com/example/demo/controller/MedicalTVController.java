package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MedicalTVDao;
import com.example.demo.vo.MedicalTVVo;

import lombok.Setter;

@Controller
@Setter
public class MedicalTVController {

	@Autowired
	private MedicalTVDao dao;
	
	private int totalRecord = 0;	// 모든 티비
	
	@RequestMapping("/listMedicalTV")				
	public ModelAndView listNotice() {
		ModelAndView mav = new ModelAndView();
		totalRecord = dao.getTotalRecord("%%");
		mav.addObject("cnt",totalRecord);
		return mav;
	}
	
	@RequestMapping("/listMedicalTV.ajax")			
	@ResponseBody
	public HashMap listNotice(@RequestParam HashMap map) {

		int currentPage =Integer.parseInt((String)map.get("currentPage"));    // 현재 페이지            		2  
	    int dataPerPage = Integer.parseInt((String)map.get("dataPerPage"));   // 한페이지에 보여질 데이터의 수     5 
	    String search = (String)map.get("search");							  // 검색어   
	    search = search.trim();					 							  //검색어의 공백을 제거
		String search2 = "%";												  //검색어가 없으면 모두,있으면 검색어를 포함한 모든 글자가 나오도록 설정하기 위함
		search2 +=search + "%";
		
	    int totalData = dao.getTotalRecord(search2);      					  // 검색어에 따른 총 데이터의 수      7      
	    int end =currentPage * dataPerPage;      //현재 페이지의 끝레코드      현재페이지 * 한페이지에서 보여줄 레코드의 수       
	    // 2 * 5 => end = 10, start 5, end => 7  
	    int start = end - (dataPerPage-1);   		 //현재 페이지의 시작시코드      35-5 30
	    if(start<1) {
	       start=1;
	    }
	    if(end >totalData) {                  	 //35>31   => 31   //5   //10
	      end = totalData;
	    }
	    
	    List<MedicalTVVo> list = new ArrayList();
		HashMap map2 = new HashMap<>();			 //맵을 통해 약품의 리스트를 가져와서 mav에 넣음
		map2.put("search", search2);
		map2.put("start", start);
		map2.put("end", end);
		
		list = dao.findAllMedicalTV(map2);
		
		map2.clear();
		map2.put("list", list);
		map2.put("cnt", totalData);
		
		return map2;
	}
	
	@RequestMapping("/detailMedicalTV")
	public ModelAndView detailMedicine(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("m", dao.findByNo(no));	//선택된 MedicalTVVo를 저장
		mav.addObject("next", dao.findByNo(no+1)); //다음영상
		mav.addObject("before", dao.findByNo(no-1)); //이전영상
		
		
		return mav;
	}
	
	
// =========================  관리자의 입력, 수정, 삭제  ================================================
	@RequestMapping(value = "/insertMedicalTV", method = RequestMethod.GET)
	public ModelAndView insertMedicalTVForm(@RequestParam(defaultValue = "0")int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("no", no);	
		return mav;
	}

	@RequestMapping(value = "/insertMedicalTV", method = RequestMethod.POST)
	public ModelAndView insertMedicalTVSubmit(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String path = request.getServletContext().getRealPath("/WEB-INF/upload");
		//MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
		
		MedicalTVVo n = new MedicalTVVo();		
		int no = dao.getNextNo();
		
		
		int re = dao.insert(n);
		request.setAttribute("re", re);
		
		return mav;
	}
}
