package com.ming.main.Controller;

import java.lang.reflect.Member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ming.main.Service.MemberService;
import com.ming.main.VO.MemberVO;
import com.mysql.cj.Session;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
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
			
		return "home2";
	}
	
//	// 로그인 post
//		@RequestMapping(value = "login", method = RequestMethod.POST)
//		public String postLogin(MemberVO vo) throws Exception {
//			logger.info("post login");
//			
//			HttpSession = MemberVO(vo);
//			
//			if(login == null) {
//				session.setAttribute("member", null);
//			} else {
//				session.setAttribute("member", login);
//			}
//			
//		return "redirect:/";
//	}
//		
//    // 로그인 get
//		@RequestMapping(value = "member/login", method = RequestMethod.GET)
//		public void getLogin() throws Exception {
//			logger.info("get member/login");
//		}
//		
//	// 로그아웃
//		@RequestMapping(value = "/logout", method = RequestMethod.GET)
//		public String logout(HttpSession session) throws Exception{
//			
//			session.invalidate();
//			
//			return "redirect:/";
//		}
		
		@RequestMapping(value = "member/login", method = RequestMethod.POST)
		public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
			logger.info("post member/login");
			
			HttpSession session = req.getSession();
			MemberVO login = service.login(vo);
			
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
			}else {
				session.setAttribute("member", login);
			}
			
			return "redirect:/member/home_login";
		}
		
		@RequestMapping(value = "member/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception{
			
			session.invalidate();
			
			return "redirect:/member/home_login";
		}
	
		
		
		
}