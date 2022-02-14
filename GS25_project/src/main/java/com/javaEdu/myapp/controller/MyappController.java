package com.javaEdu.myapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javaEdu.myapp.dto.MyappDTO;
import com.javaEdu.myapp.service.MyappService;
import com.javaEdu.myapp.vo.MyappVO;

@Controller
@RequestMapping("/myapp")
public class MyappController {
	
	@Autowired
	private MyappService myappservice;
	private String loginid;
	private String resultid;
	private MyappVO loginuser;
	
	//home화면 - before
	@RequestMapping(value="home_before.do", method=RequestMethod.GET)
	public String homeBefore(Model model) {
		model.addAttribute("img1", "image/service-11111.png");
		return "myapp/home_before";
	}
	
	//home화면 - after
	@RequestMapping(value="home_after.do", method=RequestMethod.GET)
	public String homeAfter(Model model) {
		model.addAttribute("img1", "image/service-11111.png");
		System.out.println("loginid: "+loginid);
		model.addAttribute("vo", loginuser);
		System.out.println(loginuser);
		return "myapp/home_after";
	}
	//리스트 
	@RequestMapping(value="list.do", method=RequestMethod.GET)
	public String list() {
		return "board/list";
	}
	
	//로그인 화면
    @RequestMapping(value="login.do", method=RequestMethod.GET)
    public String login() {
      return "myapp/login";
    }
   
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String postlogin(HttpSession session, MyappDTO.LoginInfo myappDto, Model model) {
			
		   loginuser = myappservice.loginCheck(myappDto);
	      String adminid = myappDto.getId();
	      //session에 login이라는 attribute를 만들어서 로그인 체크 
	         System.out.println(loginuser);
	         System.out.println(adminid);
	         if(loginuser != null){            
		            if(adminid.equals("admin")) {
		               session.setAttribute("login", loginuser);
		               loginid = myappDto.getId();
		               model.addAttribute("vo", loginuser);
		               return "redirect:/admin/adminhome_after.do";
		            }else {
		               session.setAttribute("login", loginuser);
		               loginid = myappDto.getId();
		               System.out.println(loginid);
		               model.addAttribute("vo", loginuser);
		               return "myapp/home_after";
		            } 
	         }
	         System.out.println("로그인 실패");
			return "myapp/login_fail"; 
	         
	}

	@RequestMapping(value="adminhome.do", method = RequestMethod.GET)
	public String adminhome() {
		return "myapp/adminhome";
	}
	//로그인 실패 페이지
	@RequestMapping(value="login_fail.do", method = RequestMethod.GET)
	public String login_fail() {
		return "myapp/login_fail";
	}
	
	//가입하기-동의
	@RequestMapping(value="join_agree", method = RequestMethod.GET)
	public String join_agree() {
		return "myapp/join_agree";
	}
	
	// 가입하기	
	@RequestMapping(value="join.do", method=RequestMethod.GET)
	public String memberInsert() {
		return "myapp/join";
	}
	
	
	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public String memberInsert(HttpServletResponse response,MyappVO myappvo,@Param("pw2") String pw2,Model model) throws IOException {		
			System.out.println("myappcontroller 시작");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			if(myappvo.getPw().equals(pw2)) {				
				if(myappservice.checkId(myappvo.getId())==0) {
					if(myappservice.checkEmail(myappvo.getEmail())==0) {
						if(myappservice.checkHomenumber(myappvo.getHomenumber())==0) {
							model.addAttribute("insert", myappservice.memberInsert(myappvo));						
							return "myapp/join_complete";
						}else {
							out.println("<script>alert('중복된 사업자등록번호 입니다.'); </script>");
							out.flush();
						}
					}else {
						out.println("<script>alert('중복된 이메일 입니다.'); </script>");
						out.flush();
					}
				}else {
					out.println("<script>alert('중복된 아이디 입니다.'); </script>");
					out.flush();
				}
				return "myapp/join";
			}
			out.println("<script>alert('비밀번호가 일치하지 않습니다.'); </script>");
			out.flush();
			return "myapp/join";
	}
	
	// 가입하기 - 완료
	@RequestMapping(value="join_complete.do", method=RequestMethod.GET)
	public String join_complete() {
		return "myapp/join_complete";
	}
	
	// 가입하기 - id 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserById.do", method=RequestMethod.GET)
	   public int getUserById(@Param("id") String id) {
		if(!id.equals(null)) {			
			System.out.println("myappcontroller-getuserbyid");
			return myappservice.checkId(id);   
		}else {
			return 3;
		}
	   }
	// 가입하기 - email 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserEmail.do", method=RequestMethod.GET)
	   public int getUserByEmail(@Param("email") String email) {
		if(!email.equals(null)) {			
			System.out.println("myappcontroller-getuserbyemail");
			return myappservice.checkEmail(email);
		}else {
			return 3;
		}
	   }
	// 가입하기 - 사업자번호 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserByHomenumber.do", method=RequestMethod.GET)
	   public int getUserByHomenumber(@Param("homenumber") String homenumber) {
		if(!homenumber.equals(null)) {			
			System.out.println("myappcontroller-getuserbyhomenumber");
			return myappservice.checkHomenumber(homenumber);
		}else {
			return 3;
		}
	   }
	
	// 공지사항 
	@RequestMapping(value="notice_after.do", method = RequestMethod.GET)
	public String notice_after(RedirectAttributes rttr, Model model) {
		rttr.addFlashAttribute("loginid", loginid);
		 
		return "redirect:/board/notice_after.do";
	}
	@RequestMapping(value="notice_before.do", method = RequestMethod.GET)
	public String notice_before(Model model) {
		return "redirect:/board/notice_before.do";
	}
	
	// 사이트 소개 페이지
	@RequestMapping(value="introduce_before.do", method = RequestMethod.GET)
	public String introduce_before() {
		return "myapp/introduce_before";
	}
	@RequestMapping(value="introduce.do", method = RequestMethod.GET)
	public String introduce_after(Model model) {
		model.addAttribute("vo", loginuser);
		return "myapp/introduce";
	}
	
	// 회원정보 수정하기
	@RequestMapping(value="mypage.do", method=RequestMethod.GET)
	public String memberEdit(Model model) {
		System.out.println("myappController - edit1 시작");
//		model.addAttribute("vo", loginuser);
		model.addAttribute("memberlist",myappservice.memberList(loginid));
		return "myapp/mypage";
	}
	@RequestMapping(value="mypage.do", method=RequestMethod.POST)
	public String memberEdit(HttpServletResponse response,@Param("name") String name,@Param("phone") String phone,@Param("email") String email, @Param("home") String home,@Param("homenumber") String homenumber, Model model) throws IOException {
		System.out.println("myappController - edit 시작");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(myappservice.checkEmail(email)==0 || email.equals(loginuser.getEmail())) {
			if(myappservice.checkHomenumber(homenumber)==0 || homenumber.equals(loginuser.getHomenumber())) {
				model.addAttribute("memberlist", myappservice.memberEdit(loginid, name,phone,email,home,homenumber));
				return "myapp/mypage-complete";
			}else {
				out.println("<script>alert('중복된 사업자등록번호 입니다.'); </script>");
				out.flush();
			}
		} else {
			out.println("<script>alert('중복된 이메일 입니다.'); </script>");
			out.flush();
		} return "myapp/mypage";
	}
	
	
	// 회원 탈퇴하기
	@RequestMapping(value="delete.do", method=RequestMethod.GET)
	public String memberDelete(Model model) {
		model.addAttribute("vo", loginuser);
		return "myapp/delete";
	}

	@RequestMapping(value="delete.do", method=RequestMethod.POST)
	public String memberDelete(@Param("id") String id, @Param("pw") String pw, Model model) {
		if(!id.equals(null) || !pw.equals(null)) {	
			int result = myappservice.memberfind(id,pw);
			System.out.println(result);
			if(loginid.equals(id)) {
				if(result == 1) {
					System.out.println("myappcontroller - delete 시작");
					model.addAttribute("memberdelete", myappservice.memberDelete(id,pw));
					model.addAttribute("vo", loginuser);
					System.out.println(result);
					return "myapp/login";
				}
				else {
					System.out.println("실패");
					return"myapp/delete_fail";		
				}
			}
		}
		return"myapp/delete_fail";
	}
	
	@RequestMapping(value="delete_fail.do", method=RequestMethod.GET)
	public String delete_fail(Model model) {
		model.addAttribute("vo", loginuser);
		return "myapp/delete_fail";
	}
	
	// ID찾기 
	@RequestMapping(value="findid.do", method=RequestMethod.GET)
	public String memberFindId() {
		System.out.println("resultid로 들어옴");
		return "myapp/findid_form";
	}
	
	@RequestMapping(value="findid.do",method=RequestMethod.POST)
	public String memberFindId(@Param("name") String name, @Param("email") String email, Model model) {
		if(!name.equals(null) && !email.equals(null)) {			
			System.out.println("myappcontroller - findid 시작 ");
			model.addAttribute("memberfindid", myappservice.memberFindId(name, email));
			String id = myappservice.memberFindId(name, email);
			if(!id.equals(null)) {				
				return "myapp/findid";
			}else {
				return "myapp/findid_fail";
			}
		}
			return "myapp/findid_fail";
	}
	
	// id 찾기 실패 창
	@RequestMapping(value="findid_fail.do", method=RequestMethod.GET)
	public String findid_fail() {
		return "myapp/findid_fail";
	}
	
	// PW 찾기
	// 1. 입력 정보와 DB 정보 일치한지 확인하기
	@RequestMapping(value="findpw.do", method=RequestMethod.GET)
	public String memberFindPw() {
		return "myapp/findpw_form";
	}
	@RequestMapping(value="findpw.do",method=RequestMethod.POST)
	public String memberFindPw(@Param("id") String id, @Param("email") String email, @Param("homenumber")String homenumber, Model model) {
		System.out.println("controller_memberfindpw - findpw 시작");
		String pw = myappservice.memberFindPw(id,email,homenumber);
		if(pw != null) {
			System.out.println("일치하는 정보가 있습니다.");
			resultid = id;
			System.out.println("resultid : "+resultid);
			return "myapp/findpw_change";
		}else {
			System.out.println("일치하는 정보가 없습니다.");
			return "myapp/findpw_fail";
		}
	}
	
	// 2. pw 변경
	@RequestMapping(value="findpw_change.do", method=RequestMethod.GET)
	public String memberUpdatePw() {
		return "myapp/findpw_change";
	}
	
	@RequestMapping(value="findpw_change.do",method=RequestMethod.POST)
	public String memberUpdatePw(@Param("id")String id,@Param("pw") String pw, @Param("pw1") String pw1, Model model) {
		System.out.println("controller_member_changepw 시작");
		System.out.println(resultid);
		PrintWriter out = null;
		if(pw.equals(pw1) && !id.equals(null) && id.equals(resultid)) {
			model.addAttribute("memberdelete",myappservice.memberUpdatePw(resultid ,pw));		 
			return "myapp/findpw_complete";
		}else { 	
			System.out.println("비밀번호 일치하지 않거나 id 입력 안함");
			return "myapp/findpw_changefail";
		}	
	}
	
	// 내 점포 분석 페이지
	@RequestMapping(value="myshop.do", method = RequestMethod.GET)
	public String myshop() {
		return "myapp/myshop";
	}
	// 서비스 페이지 
	@RequestMapping(value="service.do", method = RequestMethod.GET)
	public String service() {
		return "myapp/service";
	}
	
	//서비스 
	@RequestMapping(value="bread.do", method=RequestMethod.GET)
	public String bread() {
		return "myapp/bread";
	}
	@RequestMapping(value="dessert.do", method=RequestMethod.GET)
	public String dessert() {
		return "myapp/dessert";
	}
	@RequestMapping(value="FF-food.do", method=RequestMethod.GET)
	public String FF_food() {
		return "myapp/FF-food";
	}
	@RequestMapping(value="gimbap.do", method=RequestMethod.GET)
	public String gimbap() {
		return "myapp/gimbap";
	}
	@RequestMapping(value="hamburger.do", method=RequestMethod.GET)
	public String hamburger() {
		return "myapp/hamburger";
	}
	@RequestMapping(value="milk.do", method=RequestMethod.GET)
	public String milk() {
		return "myapp/milk";
	}
	@RequestMapping(value="sandwich.do", method=RequestMethod.GET)
	public String sandwich() {
		return "myapp/sandwich";
	}
	@RequestMapping(value="t-gimbap.do", method=RequestMethod.GET)
	public String t_gimbap() {
		return "myapp/t-gimbap";
	}
	
	// 내점포 분석
	@RequestMapping(value="myshop_age.do", method=RequestMethod.GET)
	public String myshop_age() {
		return "myapp/myshop_age";
	}
	@RequestMapping(value="myshop_boxlunch.do", method=RequestMethod.GET)
	public String myshop_boxlunch() {
		return "myapp/myshop_boxlunch";
	}
	@RequestMapping(value="myshop_bread.do", method=RequestMethod.GET)
	public String myshop_bread() {
		return "myapp/myshop_bread";
	}
	@RequestMapping(value="myshop_dessert.do", method=RequestMethod.GET)
	public String myshop_dessert() {
		return "myapp/myshop_dessert";
	}
	@RequestMapping(value="myshop_FF-food.do", method=RequestMethod.GET)
	public String myshop_FF_food() {
		return "myapp/myshop_FF-food";
	}
	@RequestMapping(value="myshop_gimbap.do", method=RequestMethod.GET)
	public String myshop_gimbap() {
		return "myapp/myshop_gimbap";
	}
	@RequestMapping(value="myshop_girlman.do", method=RequestMethod.GET)
	public String myshop_girlman() {
		return "myapp/myshop_girlman";
	}
	@RequestMapping(value="myshop_hamburger.do", method=RequestMethod.GET)
	public String myshop_hamburger() {
		return "myapp/myshop_hamburger";
	}
	@RequestMapping(value="myshop_home.do", method=RequestMethod.GET)
	public String myshop_home() {
		return "myapp/myshop_home";
	}
	@RequestMapping(value="myshop_location.do", method=RequestMethod.GET)
	public String myshop_location() {
		return "myapp/myshop_location";
	}
	@RequestMapping(value="myshop_milk.do", method=RequestMethod.GET)
	public String myshop_milk() {
		return "myapp/myshop_milk";
	}
	@RequestMapping(value="myshop_newproduct.do", method=RequestMethod.GET)
	public String myshop_newproduct() {
		return "myapp/myshop_newproduct";
	}
	@RequestMapping(value="myshop_sandwich.do", method=RequestMethod.GET)
	public String myshop_sandwich() {
		return "myapp/myshop_sandwich";
	}
	@RequestMapping(value="myshop_surround.do", method=RequestMethod.GET)
	public String myshop_surround() {
		return "myapp/myshop_surround";
	}
	@RequestMapping(value="myshop_t-gimbap.do", method=RequestMethod.GET)
	public String myshop_t_gimbap() {
		return "myapp/myshop_t-gimbap";
	}
	


}
