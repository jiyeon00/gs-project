package com.javaEdu.board.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.javaEdu.board.mapper.BoardMapper;
import com.javaEdu.board.vo.BoardVO;
import com.javaEdu.board.vo.CrawlingVO;
import com.webjjang.util.PageObject;

@Service
public class BoardService {
	
	@Inject
	private BoardMapper mapper;
	
	public List<BoardVO> list(PageObject pageObject) {
		pageObject.setTotalRow(mapper.getCount());
		System.out.println("BoardService.list().pageObject:" + pageObject);
		return mapper.list(pageObject);
	}
	
	public List<BoardVO> notice_before(PageObject pageObject) {
		pageObject.setTotalRow(mapper.getCount());
		System.out.println("BoardService.list().pageObject:" + pageObject);
		return mapper.list(pageObject);
	}
	
	public List<BoardVO> notice_after(PageObject pageObject) {
		pageObject.setTotalRow(mapper.getCount());
		System.out.println("BoardService.list().pageObject:" + pageObject);
		return mapper.list(pageObject);
	}
	

	public BoardVO view(int no, int inc) {
		if(inc == 1) mapper.increase(no);
		return mapper.view(no);
	}
	
	public BoardVO memberview(int no, int inc) {
		if(inc == 1) mapper.increase(no);
		return mapper.memberview(no);
	}

	public Integer write(BoardVO vo) {
		return mapper.write(vo);
	}
	
	// 게시판 글 수정
	public void update(BoardVO vo) throws Exception {
		if(mapper.update(vo) == 0)
			throw new Exception("입력한 정보를 확인해 주세요.");
	}
	
	public Integer delete(BoardVO vo) {
		return mapper.delete(vo);
	}

	
	public CrawlingVO search(@Param("brand") String brand) {
		System.out.println("search 서비스");
		return mapper.search(brand);
	}
	
}