package hjm.portfolio.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import hjm.portfolio.model.AttachFileVO;
import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;
import hjm.portfolio.model.PageVO;
import hjm.portfolio.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
	// 게시판 메인
	@RequestMapping(value="/board/list", method = RequestMethod.GET)
	public String list (Model model, CriteriaVO cri) {
		
		model.addAttribute("list", bs.list(cri));
		
		int total=bs.total(cri);
		
		model.addAttribute("paging", new PageVO(cri, total));
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
		System.out.println("여기야"+board.getAttach());
		bs.write(board);
		
		return "redirect:/board/list";
	}
	
	// 게시글 Detail
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public String detail (BoardVO board, Model model) {
		model.addAttribute("detail", bs.detail(board));
		return "board/detail";
	}
	
	// 게시글 수정 페이지로 이동
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public String goModify (BoardVO board, Model model) {
		model.addAttribute("detail", bs.goModify(board));
		return "board/modify";
	}
	
	// 게시글 수정 기능
	@RequestMapping(value = "/board/modify.do", method = RequestMethod.POST)
	public String modify(BoardVO board, RedirectAttributes rttr) {
		System.out.println(board);
		bs.modify(board);
		System.out.println(board);
		rttr.addAttribute("board_no", board.getBoard_no());
		return "redirect:/board/detail";
	}
	
	// 게시글 삭제
	@RequestMapping(value = "/board/remove", method = RequestMethod.POST)
	public String remove(BoardVO board) {
		bs.remove(board);
		return "redirect:/board/list";
	}
	
	// 해당 게시물의 첨부파일의 데이터를 ajax로 전송
	@RequestMapping(value="/attachlist", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<AttachFileVO>> uploadAjaxPost(int board_no){
		
		return new ResponseEntity<>(bs.attachlist(board_no),HttpStatus.OK);
	}
	
	
	
}
