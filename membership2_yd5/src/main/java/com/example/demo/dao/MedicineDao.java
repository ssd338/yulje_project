package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.MedicineManager;
import com.example.demo.vo.MedicineVo;
//약품
@Repository
public class MedicineDao {

	// 모든 약품목록을 가져온다
	public List<MedicineVo> findAllMedicine(HashMap map) {
		return MedicineManager.findAllMedicine(map);
	}
	// 약품번호에 맞는 약품 정보를 가져온다
	public MedicineVo findByNo(int no) {
		return MedicineManager.findByNo(no);
	}
	
	// 약품 번호를 통한 약품 정보 조회
	public int getTotalRecord(String search) {
		return MedicineManager.getTotalRecord(search);
	}
	
	

	
// ==========  (관리자) 약품의 추가, 수정, 삭제   ===========================
	
	public int getNextNo() {
		return MedicineManager.getNextNo();
	}
	public int insert(MedicineVo m) {
		return MedicineManager.insert(m);
	}
}
