package hjm.portfolio.service;

import java.util.ArrayList;

import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

public interface BoardService {
	
	// 게시판 전체 불러오기
	public ArrayList<BoardVO> list(CriteriaVO cri);
	// 테이블의 전체 건수 불러오기
	public int total(CriteriaVO cri);
	
	// 게시판 글쓰기
	public void write(BoardVO board);
	
	//글 내용 상세 보기
	public BoardVO detail(BoardVO board);
	
	// 글 수정 설계
	public void modify(BoardVO board);
	
	// 글 삭제 설계
	public void remove(BoardVO board);
}
