package hjm.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hjm.portfolio.mapper.BoardAttachMapper;
import hjm.portfolio.mapper.BoardMapper;
import hjm.portfolio.model.AttachFileVO;
import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;
	@Autowired
	BoardAttachMapper bam; 
	
	// 글쓰기
	public void write(BoardVO board) {
		bm.write(board);
		
		System.out.println(board);
		
		if(board.getAttach()!=null) {
		board.getAttach().forEach(attach->{
			System.out.println("service="+attach);
			// AttachFileVO의 board_no에 BoardVO의 board_no를 저장
			attach.setBoard_no(board.getBoard_no());
			bam.insert(attach);
		});
	}}
	
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
	
	// 첨부파일 조회 구현
	public ArrayList<AttachFileVO> attachlist (int board_no){
		return bam.attachlist(board_no);
	}
	
}
