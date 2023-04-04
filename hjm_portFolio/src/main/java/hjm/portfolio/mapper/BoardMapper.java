package hjm.portfolio.mapper;

import java.util.ArrayList;

import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

public interface BoardMapper {
	// 글쓰기
	public void write(BoardVO board);
	
	// 게시글 정보, 전체 개시글의 갯수 불러오기
	public ArrayList<BoardVO> list(CriteriaVO cri);
	public int total(CriteriaVO cri);
	
	// 글의 상세 내용 조회
	public BoardVO detail(BoardVO board);
	// 글의 제목을 클릭한 후 상세내용 조회
	public void cntup(BoardVO board);
	
	// 글의 내용 수정하는 DB 설계 작업
	public void modify(BoardVO board);
	
	// 글을 삭제하는 DB 설계작업
	public void remove(BoardVO board);
}
