package hjm.portfolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hjm.portfolio.mapper.BoardMapper;
import hjm.portfolio.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;
	
	public void write(BoardVO board) {
		bm.write(board);
	}
}
