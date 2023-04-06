package hjm.portfolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hjm.portfolio.mapper.ReplyMapper;
import hjm.portfolio.model.CriteriaVO;
import hjm.portfolio.model.ReplyPageVO;
import hjm.portfolio.model.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyMapper rm;

	// 댓글 쓰기를 위한 구현
	public int rewrite(ReplyVO reply) {
		return rm.rewrite(reply);
	}
	// 댓글 목록 리스트를 위한 구현
	public ReplyPageVO list(CriteriaVO cri,int board_no){
		return new ReplyPageVO(rm.rpycnt(board_no),rm.list(cri,board_no));
	}
	// 댓글 수정을 위한 구현
	public int modify(ReplyVO reply) {
		return rm.modify(reply);
	}
	// 댓글 삭제를 위한 구현
	public int remove(ReplyVO reply) {
		return rm.remove(reply);
	}
}
