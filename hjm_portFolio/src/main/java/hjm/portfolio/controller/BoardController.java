package hjm.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hjm.portfolio.model.BoardVO;
import hjm.portfolio.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	// 게시판 메인
	@RequestMapping(value="/board/list", method = RequestMethod.GET)
	public String list (Model model/*, CriteriaVO cri*/) {
		
		model.addAttribute("list", bs.list(cri));
		
		int total=bs.total(cri);
		
		//model.addAttribute("paging", new PageVO(cri, total));
		return "board/list";
	}
	
	// 게시판 글쓰기 페이지로 이동
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public String write () {
		return "board/write";
	}
	
	// 게시판 글쓰기 데이터 저장
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String writePost(BoardVO board) {
		System.out.println(board);
		bs.write(board);
		
		return "redirect:/board/list";
	}
}
