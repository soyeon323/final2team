package com.kh.zoody.employee.service;

import java.util.List;

import com.kh.zoody.page.vo.PageVo;
import com.kh.zoody.user.vo.UserVo;

public interface EmployeeService {
	
	//직원등록
	int enroll(UserVo vo);
	
	//직원상세조회 및 수정
	int edit(UserVo vo);
	
	//직원목록 
	List<UserVo> list(PageVo pv);
	

}