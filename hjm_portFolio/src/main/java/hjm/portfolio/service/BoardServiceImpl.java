package hjm.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hjm.portfolio.mapper.BoardMapper;
import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;
	
	// 글쓰기
	public void write(BoardVO board) {
		bm.write(board);
	}
	
	// 글 전체 내용 (테이블 전체) 불러오기
	public ArrayList<BoardVO> list(CriteriaVO cri){
		return bm.list(cri);
	}
	// 전체 글 건수 불러오기
	public int total(CriteriaVO cri) {
		return bm.total(cri);
	}
	
	// 글 디테일 보기
	@Transactional
	public BoardVO detail(BoardVO board) {
		// 상세 페이지 조회 시 조회수 +1 함수를 넣어주자.
		bm.cntup(board);
		return bm.detail(board);
	}
	
	// 글 수정  페이지로 이동
	public BoardVO goModify(BoardVO board) {
		return bm.detail(board);
	}
	// BoardService에서 설계된 modify 추상 메서드 구현
	public void modify(BoardVO board) {
		bm.modify(board);
	}
	
	// BoardService에서 설계되어진 remove 추상 메서드 구현
	public void remove(BoardVO board) {
		bm.remove(board);
	}
	
}
