
package org.hj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hj.model.LoginVO;
import org.hj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {

	@Autowired
	LoginService ls;
	
	// 회원가입
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member () {
		return "member/memberin";
	}
	
	// 회원가입서버
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberPost (LoginVO member) {
		System.out.println(member);
		ls.memreg(member);
		return "board/list";
	}
	
	
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login () {
		System.out.println("aaaa");
		return "member/login";
	}
	
	// 로그인 서버
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost (HttpSession session, LoginVO member) {
		
		session.setAttribute("login", ls.login(member));
		
		if (ls.login(member)==null) {
			return "member/login";
			} else {	
				return "redirect:/board/list"; // 로그인 및 게시글 등록 시 이전에서 넘어온 데이터를
			}							 // 남기지 않기 위해 redirect를 이용함.
										 // Post 방식 내부에서 자주 사용한다.
		
		}
	
	//로그아웃 기능
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout (HttpSession session) {
		session.invalidate();
		return "home";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout (HttpSession session, HttpServletRequest request) {
		// 세션 초기화
		System.out.println("logout");
		session.invalidate();
		// // 이전 페이지 주소 저장
		/*String referer = request.getHeader("Referer");*/
		
			return "home";
		}
	
	// 회원관리페이지
	@RequestMapping(value = "/list", method = RequestMethod.GET) // 렌더링 되기 전에 데이터베이스를 불러와야 하므로 GET 방식 하나로 충분하다.
	public String memberList(Model model) {
		model.addAttribute("memList", ls.memList() );
		return "member/list";
	}
	
	// 회원정보 자세히 보기
	@RequestMapping(value = "/list/detail", method = RequestMethod.GET)
	public String memDetail(LoginVO member , Model model) {
		model.addAttribute("memDetail", ls.memDetail(member) );
		return "member/detail";
	}
	
	// 회원정보 수정
	@RequestMapping(value = "/list/detail/modify", method = RequestMethod.POST)
	public String memModify(LoginVO member,RedirectAttributes rttr) { 
		ls.memModify(member);
		System.out.println(member);
		rttr.addAttribute("id", member.getId());
		return "redirect:/list/detail";
	}
	
	// 회원정보 삭제
	@RequestMapping(value = "/list/detail/delete", method = RequestMethod.POST)
	public String memDelete(LoginVO member) {
		ls.memDelete(member);
		return "redirect:/list";
	}
}



















