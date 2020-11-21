package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.MedicalTVManager;
import com.example.demo.vo.MedicalTVVo;

//의약영상
@Repository
public class MedicalTVDao {

	// 모든 영상목록을 가져온다
	public List<MedicalTVVo> findAllMedicalTV(HashMap map) {
		return MedicalTVManager.findAllMedicalTV(map);
	}
	// 영상번호에 맞는 영상 정보를 가져온다
	public MedicalTVVo findByNo(int no) {
		return MedicalTVManager.findByNo(no);
	}
	
	// 모든 영상의 수
	public int getTotalRecord(String search) {
		return MedicalTVManager.getTotalRecord(search);
	}
	
	

	
// ==========  (관리자) 영상의 추가, 수정, 삭제   ===========================
	
	public int getNextNo() {
		return MedicalTVManager.getNextNo();
	}
	public int insert(MedicalTVVo m) {
		return MedicalTVManager.insert(m);
	}
}
