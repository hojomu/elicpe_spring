package hjm.portfolio.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hjm.portfolio.model.LoginVO;
import hjm.portfolio.service.LoginService;

@Controller
public class MemberController {
	
	@Autowired
	LoginService ls;

	// 로그인 화면으로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "member/login";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(LoginVO member, HttpSession session) {
		
		if (ls.login(member)==null) {
			System.out.println("bad");
			return "member/login";
		} else {
			session.setAttribute("login", ls.login(member).getId());
			System.out.println(session.getAttribute("login"));
			return "redirect:/";
		}
	}
	
	
	// 회원가입 화면으로 이동
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String memberPage() {
		return "member/memberin";
	}
	
	// 회원가입 요청
		@RequestMapping(value = "/memberin", method = RequestMethod.POST)
		public String memberIn(LoginVO member) {
			System.out.println(member);
			ls.memIn(member);
			return "member/login";
		}
}

