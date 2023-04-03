package hjm.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hjm.portfolio.mapper.BoardMapper;
import hjm.portfolio.model.BoardVO;
import hjm.portfolio.model.CriteriaVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardMapper bm;
	
	public void write(BoardVO board) {
		bm.write(board);
	}
	
	public ArrayList<BoardVO> list(CriteriaVO cri){
		return bm.list(cri);
	}
	
}
