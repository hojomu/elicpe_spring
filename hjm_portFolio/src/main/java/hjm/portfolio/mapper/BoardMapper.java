package hjm.portfolio.mapper;

import java.util.ArrayList;

import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

public interface BoardMapper {
	public void write(BoardVO board);
	public ArrayList<BoardVO> list(CriteriaVO cri);
}
