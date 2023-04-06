package hjm.portfolio.service;

import hjm.portfolio.model.CriteriaVO;
import hjm.portfolio.model.ReplyPageVO;
import hjm.portfolio.model.ReplyVO;

public interface ReplyService {
	// 댓글 쓰기를 위한 설계
	public int rewrite(ReplyVO reply);
	// 댓글 목록 리스트를 위한 설계
	//public ArrayList<ReplyVO> list(int bno);
	public ReplyPageVO list(CriteriaVO cri, int board_no);
	// 댓글 수정을 위한 설계
	public int modify(ReplyVO reply);
	// 댓글 삭제를 위한 설계
	public int remove(ReplyVO reply);
}
