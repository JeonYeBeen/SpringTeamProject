package com.mycom.mybooks.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "login/login", method = RequestMethod.GET)
	public String login() {
		return "loginform";
	}
	
	@RequestMapping(value = "login/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, MemberVO vo) {
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		MemberVO loginvo = service.getMember(vo);
		
		if (loginvo != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/book/list";
		} else {
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "login/register", method = RequestMethod.POST)
	public String register(HttpSession session, MemberVO vo, @RequestParam String psw_repeat) {
		
		System.out.println(vo.getUsername());
		System.out.println(vo.getPassword());
		System.out.println(psw_repeat);
		
		String returnURL = "";
		MemberVO regvo = null;
		int isRegistered = 0;
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		if (psw_repeat.equals(vo.getPassword())) {
			isRegistered = service.insertMember(vo);
			regvo = service.getMember(vo);
		}
		
		if (isRegistered != 0) {
			System.out.println("등록 성공!");
			session.setAttribute("login", regvo);
			returnURL = "redirect:/book/list";
		} else {
			System.out.println("등록 실패!");
			returnURL = "redirect:/login/login";
		}

		return returnURL;
	}
	
	@RequestMapping(value = "login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
 