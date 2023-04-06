package hjm.portfolio.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import hjm.portfolio.model.CriteriaVO;
import hjm.portfolio.model.ReplyVO;

public interface ReplyMapper {
	// 댓글 쓰기를 위한 구현
		// return타입이 int일때, 1이면 insert성공
		//                    0이면 insert실패
		public int rewrite(ReplyVO reply);
		
		// 댓글 목록리스트를 위한 구현
		//public ArrayList<ReplyVO> list(int bno);
		public ArrayList<ReplyVO> list(@Param("cri") CriteriaVO cri,@Param("board_no") int board_no);

		public int rpycnt(int board_no);
		// 댓글 수정을 위한 구현 
		public int modify(ReplyVO reply);
		// 댓글 삭제를 위한 구현
		public int remove(ReplyVO reply);
}
