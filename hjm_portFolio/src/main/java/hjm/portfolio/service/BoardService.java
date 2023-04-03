package hjm.portfolio.service;

import java.util.ArrayList;

import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

public interface BoardService {
	public void write(BoardVO board);
	public ArrayList<BoardVO> list(CriteriaVO cri);
}
