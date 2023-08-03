package com.kh.zoody.work.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.zoody.user.vo.UserVo;
import com.kh.zoody.work.service.WorkService;
import com.kh.zoody.work.vo.WorkVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("work")
@RequiredArgsConstructor
@Slf4j
public class WorkController {

	private final WorkService ws;
	
	//업무할당 화면  
	@GetMapping("work")
	public String work(Model m , HttpServletRequest req) {
		
//		HttpSession session = req.getSession();
//		UserVo loginMember = (UserVo) session.getAttribute("loginMember");
//		
//		List<WorkVo> vo = ws.workList(loginMember);
//		log.info("vo : {}",vo);
//		if(vo ==null) {
//			throw new RuntimeException();
//		}
//		m.addAttribute("loginMember" , loginMember);
//		m.addAttribute("vo",vo);
		
		return "work/work";
	}
	
//	업무 추가 버튼을 눌러서 업무명 , 업무내용 , 마감날짜 추가  AJAX 
	@PostMapping("insert")
	@ResponseBody
	public String workInsert(WorkVo vo ) {
		int result = ws.workInsert(vo);
		if (result != 2) {
			throw new RuntimeException();
		}
	    return "ok";
	}
	
//	업무명과 마감일시 가져오기 AJAX로
	@PostMapping(value =  "view" , produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String getWorkNameAndDate(Model m , String userNo , HttpServletResponse resp) {
		
		List<WorkVo> vo = ws.getWorkNameAndDate(userNo);
		log.info("WorkVo = {}",vo);
		
		if(vo ==null) {
			throw new RuntimeException();
		}
		Gson gson = new Gson();
		String data = gson.toJson(vo);
		return data;
	}	
	
}