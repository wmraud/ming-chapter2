package com.ming.main.Controller;

import java.lang.reflect.Member;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ming.main.Service.MemberService;
import com.ming.main.VO.MemberVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// 회원가입 get
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		
		service.register(vo);
		
		return null;
	}
	
	// 회원가입 get
		@RequestMapping(value = "member/cuser", method = RequestMethod.GET)
		public void getCuser() throws Exception {
			logger.info("get member/cuser");
		}
		
	// 회원가입 post
		@RequestMapping(value = "cuser", method = RequestMethod.POST)
		public String postCuser(MemberVO vo) throws Exception {
			logger.info("post cuser");
			
			service.cuser(vo);
			
		return "member/cuser";
	}
}
