package hjm.portfolio.mapper;

import java.util.ArrayList;

import hjm.portfolio.model.AttachFileVO;

public interface BoardAttachMapper {
	// 글쓰기 첨부파일 DB 작업 설계
	public void insert(AttachFileVO attach);
	
	// 해당게시물의 첨부파일 조회
	public ArrayList<AttachFileVO> attachlist(int board_no);

}
