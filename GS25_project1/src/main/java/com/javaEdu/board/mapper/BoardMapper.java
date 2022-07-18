package com.javaEdu.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.javaEdu.board.vo.BoardVO;
import com.javaEdu.board.vo.CrawlingVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {
	
	// 게시판 리스트
	public List<BoardVO> list (PageObject pageObject);
	
	// 게시판 리스트
	public List<BoardVO> notice_before (PageObject pageObject);
	
	// 게시판 리스트
	public List<BoardVO> notice_after (PageObject pageObject);
	
	// 전체 데이터를 가져오는 메소드
	public Integer getCount();

	// 게시판 글보기
	public BoardVO view(int no);
	
	// 게시판 글보기
	public BoardVO memberview(int no);
	
	// 조회수 1 증가
	public void increase(int inc);
	
	// 게시판 글쓰기
	public Integer write(BoardVO vo);
	
	//게시판 글수정
	public Integer update(BoardVO vo);
	
	// 게시판 글삭제
	public Integer delete(BoardVO vo);

	public CrawlingVO search(@Param("brand") String brand);
	
}
