package com.kh.zoody.animal.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.zoody.animal.health.vo.HealthVo;
import com.kh.zoody.animal.training.vo.TrainingVo;
import com.kh.zoody.animal.vo.AnimalVo;
import com.kh.zoody.page.vo.PageVo;

@Repository
public class AnimalDao {

	//동물 등록
	public int animalEnroll(SqlSessionTemplate sst, AnimalVo vo) {
		return sst.insert("animal.enroll",vo);
	}

	//동물 목록 조회
	public List AnimalList(SqlSessionTemplate sst, PageVo pv) {
		RowBounds rb = new RowBounds(pv.getOffset(),pv.getBoardLimit());
		return sst.selectList("animal.AnimalList",pv);
	}
	
	//동물 리스트 조회(총 갯수)
	public int getAnimalListCnt(SqlSessionTemplate sst) {
		
		return sst.selectOne("animal.getAnimalListCnt");
	}

	//동물 훈련 일지 작성
	public int trainingWrite(SqlSessionTemplate sst, TrainingVo vo) {
		return sst.insert("animal.trainingWrite",vo);
	}

	//동물 건강 상태 작성
	public int healthWrite(SqlSessionTemplate sst, HealthVo vo) {
		return sst.insert("animal.healthWrite",vo);
	}

}