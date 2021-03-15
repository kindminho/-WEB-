package com.cosmos.service;


import java.util.*;

import javax.inject.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;


import com.cosmos.dao.*;
import com.cosmos.domain.*;
import com.cosmos.dto.*;
import com.cosmos.mapper.*;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private BoardMapper boardMapper;
	
	
	@Override
	public ArrayList<BoardVo> getBoardList() {
		
		//return boardDao.getBoardList();
		return boardMapper.getList();
	}
	
	private static final Logger log = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Override
	public int insertBoard(Board board) {				
		return boardDao.insertBoard(board);
	}	

	@Override
	public void updateBoard(Board board) {			
		boardDao.updateBoard(board);		
	}

	@Override
	public int deleteBoard(int bno) {						
		return boardDao.deletBoard(bno);
	}

	@Override
	public Board getBoard(int bno) {
		
		return boardDao.getBoard(bno);
	}
	
	@Override
	public BoardVo getBoard2(int bno) {
		
		return boardMapper.getBoard(bno);
	}
	
	
	@Override
	public BoardFileVo getBoard3(int bno) {	
		BoardFileVo boardFileVo = new BoardFileVo();
		boardFileVo.setBno(bno);
		return boardMapper.getBoard3(boardFileVo);
	}

	@Override
	public Board[] searchBoard(String criteria, String keyword) {
		
		return null;
	}

	

}
