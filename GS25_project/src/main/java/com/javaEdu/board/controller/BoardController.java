package com.javaEdu.board.controller;

import java.net.URLEncoder;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaEdu.board.service.BoardService;
import com.javaEdu.board.vo.BoardVO;
import com.javaEdu.board.vo.CrawlingVO;
import com.javaEdu.myapp.vo.MyappVO;
import com.webjjang.util.PageObject;

@Controller
@RequestMapping("/board")
public class BoardController {
	

	private final String MODULE_NAME = "board";
	private MyappVO myappvo;
	// 자동 DI 적용
	@Autowired
	private BoardService service;
	
	@GetMapping("/list.do")
	public String list (PageObject pageObject, Model model) {
		System.out.println("BoardController.list()");
		model.addAttribute("list", service.list(pageObject));
		model.addAttribute("pageObject", pageObject);
		// /WEB-INF/views/ + board/list + .jsp
		return MODULE_NAME + "/list";
	}
	
   @GetMapping("/notice_after.do")
   public String notice_after (PageObject pageObject, Model model) {
      System.out.println("BoardController.list()");
      model.addAttribute("list", service.list(pageObject));
      model.addAttribute("pageObject", pageObject);
      // /WEB-INF/views/ + board/list + .jsp
      return MODULE_NAME + "/notice_after";
   }
   

   @GetMapping("/notice_before.do")
   public String notice_before (PageObject pageObject, Model model) {
      System.out.println("BoardController.list()");
      model.addAttribute("list", service.list(pageObject));
      model.addAttribute("pageObject", pageObject);
      // /WEB-INF/views/ + board/list + .jsp
      return MODULE_NAME + "/notice_before";
   }
   
   // 회원 크롤링 페이지
	@RequestMapping(value="/search1.do", method = RequestMethod.GET)
	public String crawling2() {
		return "board/crawling2";
	}
	
	@RequestMapping(value="/search1.do", method = RequestMethod.POST)
	public String crawling3(Model model, @Param("brand") String brand) {
		CrawlingVO voo = service.search(brand);
		model.addAttribute("vo", voo);
		System.out.println(voo);
		return "board/crawling2";
	}
	
	// 관리자 크롤링 페이지 
	@RequestMapping(value="/search.do", method = RequestMethod.GET)
	public String crawling1() {
		return "board/crawling";
	}
	
	@RequestMapping(value="/search.do", method = RequestMethod.POST)
	public String crawling(Model model, @Param("brand") String brand) {
		CrawlingVO voo = service.search(brand);
		model.addAttribute("vo", voo);
		System.out.println(voo);
		return "board/crawling";
	}
	
	
	// 게시판 글보기
	@GetMapping("/view.do")
	public String view(PageObject pageObject, int no, int inc, Model model) {
		model.addAttribute("vo", service.view(no, inc));
		model.addAttribute("pageObject", pageObject);
		System.out.println("vo");
		// /WEB-INF/views/ + board/view + .jsp
		return MODULE_NAME + "/view";
	}
	
   // 게시판 글보기
   @GetMapping("/memberview.do")
   public String memberview(PageObject pageObject, int no, int inc, Model model) {
      model.addAttribute("vo", service.memberview(no, inc));
      model.addAttribute("pageObject", pageObject);
      // /WEB-INF/views/ + board/view + .jsp
      return MODULE_NAME + "/memberview";
   }
	@GetMapping("memberview_before.do")
	public String memberview1(PageObject pageObject, int no, int inc, Model model) {
		model.addAttribute("vo", service.memberview(no, inc));
		model.addAttribute("pageObject", pageObject);
		// /WEB-INF/views/ + board/view + .jsp
		return MODULE_NAME + "/memberview_before";
	}
	
	// 게시판 글쓰기(get방식)
	@GetMapping("/write.do")
	public String writeForm() {
		return MODULE_NAME + "/write";
	}
	
	// 게시판 글쓰기(post방식)
	@PostMapping("/write.do")
	public String write(BoardVO vo) {
		service.write(vo);
		return "redirect:list.do";
	}
	
	// 게시판 글수정(get방식)
	@GetMapping("/update.do")
	public String updateForm(Model model, int no, int inc) {
		model.addAttribute("vo", service.view(no, 0));
		return MODULE_NAME + "/update";
	}
	
	// 게시판 글수정(post방식)
	@PostMapping("/update.do")
	public String update(BoardVO vo, PageObject pageObject) throws Exception {
		service.update(vo);
		
		// 한글처리 -> 검색어가 null이면 null이 아닌 " "로 만들어 준다.
		if (pageObject.getWord() == null) pageObject.setWord("");
		
		return "redirect:view.do?no=" + vo.getNo() + "&inc=0"
				+ "&page=" +pageObject.getPage()
				+ "&perPageNum=" +pageObject.getPerPageNum()
				+ "&key=" + pageObject.getKey()
				+ "&word=" + URLEncoder.encode(pageObject.getWord(), "UTF-8");
	}
	
	
	// 게시판 글삭제(get)
	@GetMapping("/delete.do")
	public String deleteForm() {
		return MODULE_NAME + "/delete";
		
	}
	// 게시판 글삭제(post)
	@PostMapping("/delete.do")
	public String delete(BoardVO vo) {
		service.delete(vo);
		return "redirect:list.do";
	}

	
	
	
	
	
	
	
	
}