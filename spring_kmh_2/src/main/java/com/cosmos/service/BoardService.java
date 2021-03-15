package com.cosmos.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.stereotype.*;
import org.springframework.web.multipart.*;

import com.cosmos.domain.*;
import com.cosmos.dto.*;


@Component
public interface BoardService {
	
	//게시판리스트
	public ArrayList<BoardVo> getBoardList();
	
	//게시물 등록
	int insertBoard(Board board);
	
	//게시물 수정
	void updateBoard(Board board);
		
	//게시물 삭제
	int deleteBoard(int bno);
	
	//게시물 내용 확인
	Board getBoard(int bno);
	
	public BoardVo getBoard2(int bno);
	
	//게시물 검색
	Board[] searchBoard(String criteria, String keyword);

	public BoardFileVo getBoard3(int bno);
}
