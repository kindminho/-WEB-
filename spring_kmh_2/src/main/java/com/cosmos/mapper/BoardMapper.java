package com.cosmos.mapper;

import java.util.*;

import com.cosmos.domain.*;


public interface BoardMapper {
	
	//@Select("SELECT * FROM board WHERE ROWNUM = 1")
	public ArrayList<BoardVo> getList();
	
	public BoardVo getBoard(int bno);

	public BoardFileVo getBoard3(BoardFileVo boardFileVo);
}

