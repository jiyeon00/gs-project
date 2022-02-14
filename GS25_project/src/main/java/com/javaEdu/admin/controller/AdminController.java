package com.javaEdu.admin.controller;

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

import com.javaEdu.admin.dto.AdminDTO;
import com.javaEdu.admin.service.AdminService;
import com.javaEdu.admin.vo.AdminVO;
import com.javaEdu.myapp.dto.MyappDTO;
import com.javaEdu.myapp.service.MyappService;
import com.javaEdu.myapp.vo.MyappVO;
import com.webjjang.util.PageObject;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminservice;
	private String loginid = "admin";
	private String resultid;
	
	//home화면 - before
	@RequestMapping(value="adminhome_before.do", method=RequestMethod.GET)
	public String homeBefore() {
		return "admin/adminhome_before";
	}
	
	//home화면 - after
	@RequestMapping(value="home_after.do", method=RequestMethod.GET)
	public String homeAfter(Model model) {
		model.addAttribute("loginid", loginid);
		System.out.println("admin"+loginid);
		return "admin/adminhome_after";
	}
	@RequestMapping(value="adminhome_after.do", method=RequestMethod.GET)
	public String homeAfter1(Model model) {
		model.addAttribute("loginid", loginid);
		System.out.println("admin"+loginid);
		return "admin/adminhome_after";
	}

	//로그인 화면
    @RequestMapping(value="login.do", method=RequestMethod.GET)
    public String login() {
      return "admin/login";
    }
   
    @RequestMapping(value="login.do", method=RequestMethod.POST)
    public String postlogin(HttpSession session, AdminDTO.LoginInfo adminDto, Model model) {
          if(session.getAttribute("login") != null) {
                session.removeAttribute("login");
                System.out.println("session not null");
          }
          AdminVO loginuser = adminservice.loginCheck(adminDto);
          String adminid = adminDto.getId();
          //session에 login이라는 attribute를 만들어서 로그인 체크 
             System.out.println(loginuser);
             System.out.println(adminid);
             if(loginuser != null){            
                   if(adminid.equals("admin")) {
                      session.setAttribute("login", loginuser);
                      loginid = adminDto.getId();
                      System.out.println("admin입니다.");
                      model.addAttribute("vo", loginuser);
                      return "redirect:adminhome_after.do";
                   }else {
                      session.setAttribute("login", loginuser);
                      loginid = adminDto.getId();
                      System.out.println(loginid);
                      model.addAttribute("vo", loginuser);
                      return "redirect:userhome_after.do";
                   } 
             }
             System.out.println("로그인 실패");
          return "admin/login_fail"; 
             
    }
    
	@RequestMapping(value="adminhome.do", method = RequestMethod.GET)
	public String adminhome() {
		return "admin/adminhome";
	}
	//로그인 실패 페이지
	@RequestMapping(value="login_fail.do", method = RequestMethod.GET)
	public String login_fail() {
		return "admin/login_fail";
	}
	
	//가입하기-동의
	@RequestMapping(value="join_agree", method = RequestMethod.GET)
	public String join_agree() {
		return "admin/join_agree";
	}
	
	// 가입하기	
	@RequestMapping(value="join.do", method=RequestMethod.GET)
	public String memberInsert() {
		return "admin/join";
	}
	
	
	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public String memberInsert(HttpServletResponse response,AdminVO adminvo,Model model) throws IOException {		
			System.out.println("myappcontroller 시작");
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			if(adminservice.checkId(adminvo.getId())==0) {
				if(adminservice.checkEmail(adminvo.getEmail())==0) {
					if(adminservice.checkHomenumber(adminvo.getHomenumber())==0) {
						model.addAttribute("insert", adminservice.memberInsert(adminvo));						
						return "admin/join_complete";
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
			return "admin/join";
	}
	
	// 가입하기 - 완료
	@RequestMapping(value="join_complete.do", method=RequestMethod.GET)
	public String join_complete() {
		return "admin/join_complete";
	}
	
	// 가입하기 - id 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserById.do", method=RequestMethod.GET)
	   public int getUserById(@Param("id") String id) {
		if(!id.equals(null)) {			
			System.out.println("admincontroller-getuserbyid");
			return adminservice.checkId(id);   
		}else {
			return 3;
		}
	   }
	// 가입하기 - email 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserEmail.do", method=RequestMethod.GET)
	   public int getUserByEmail(@Param("email") String email) {
		if(!email.equals(null)) {			
			System.out.println("admincontroller-getuserbyemail");
			return adminservice.checkEmail(email);
		}else {
			return 3;
		}
	   }
	// 가입하기 - 사업자번호 중복 확인
	@ResponseBody
	   @RequestMapping(value ="getUserByHomenumber.do", method=RequestMethod.GET)
	   public int getUserByHomenumber(@Param("homenumber") String homenumber) {
		if(!homenumber.equals(null)) {			
			System.out.println("admincontroller-getuserbyhomenumber");
			return adminservice.checkHomenumber(homenumber);
		}else {
			return 3;
		}
	   }
	
	// 사이트 소개 페이지
	@RequestMapping(value="introduce_before.do", method = RequestMethod.GET)
	public String introduce_before() {
		return "admin/introduce_before";
	}
	@RequestMapping(value="introduce.do", method = RequestMethod.GET)
	public String introduce_after() {
		return "admin/introduce";
	}
	
	// 회원정보 수정하기
	@RequestMapping(value="mypage.do", method=RequestMethod.GET)
	public String memberEdit(Model model) {
		System.out.println("myappController - edit1 시작");
		model.addAttribute("memberlist",adminservice.memberList(loginid));
		return "admin/mypage";
	}
	@RequestMapping(value="mypage.do", method=RequestMethod.POST)
	public String memberEdit(@Param("name") String name,@Param("phone") String phone,@Param("email") String email, @Param("home") String home,@Param("homenumber") String homenumber, Model model) {
		System.out.println("myappController - edit 시작");
		model.addAttribute("memberedit", adminservice.memberEdit(loginid, name,phone,email,home,homenumber));
		return "admin/mypage-complete";
	}
	
	
//	// 회원 탈퇴하기
//	@RequestMapping(value="delete.do", method=RequestMethod.GET)
//	public String memberDelete() {
//		return "myapp/delete";
//	}
//
//	@RequestMapping(value="delete.do", method=RequestMethod.POST)
//	public String memberDelete(@Param("id") String id, @Param("pw") String pw, Model model) {
//		if(id.equals(null)||pw.equals(null)) {			
//			System.out.println("myappcontroller - delete 시작");
//			model.addAttribute("memberdelete", myappservice.memberDelete(id, pw));
//			return "myapp/login";
//		}else {
//			return"myapp/delete_fail";
//		}
//	}
	
	// ID찾기 
	@RequestMapping(value="findid.do", method=RequestMethod.GET)
	public String memberFindId() {
		System.out.println("resultid로 들어옴");
		return "admin/findid_form";
	}
	
	@RequestMapping(value="findid.do",method=RequestMethod.POST)
	public String memberFindId(@Param("name") String name, @Param("email") String email, Model model) {
		if(name.equals(null) || email.equals(null)) {			
			System.out.println("myappcontroller - findid 시작 ");
			model.addAttribute("memberfindid", adminservice.memberFindId(name, email));
			return "admin/findid";
		}else {
			return "admin/findid_fail";
		}
	}
	// id 찾기 실패 창
	@RequestMapping(value="findid_fail.do", method=RequestMethod.GET)
	public String findid_fail() {
		return "admin/findid_fail";
	}
	
	// PW 찾기
	// 1. 입력 정보와 DB 정보 일치한지 확인하기
	@RequestMapping(value="findpw.do", method=RequestMethod.GET)
	public String memberFindPw() {
		return "admin/findpw_form";
	}
	@RequestMapping(value="findpw.do",method=RequestMethod.POST)
	public String memberFindPw(@Param("id") String id, @Param("email") String email, @Param("homenumber")String homenumber, Model model) {
		System.out.println("controller_memberfindpw - findpw 시작");
		resultid = adminservice.memberFindPw(id,email,homenumber);
		if(resultid != null) {
			System.out.println("일치하는 정보가 있습니다.");
			System.out.println("resultid : "+resultid);
			return "admin/findpw_change";
		}else {
			System.out.println("일치하는 정보가 없습니다.");
			return "admin/findpw_fail";
		}
	}
	
	// 2. pw 변경
	@RequestMapping(value="findpw_change.do", method=RequestMethod.GET)
	public String memberUpdatePw() {
		return "admin/findpw_change";
	}
	
	@RequestMapping(value="findpw_change.do",method=RequestMethod.POST)
	public String memberUpdatePw(@Param("pw") String pw, @Param("pw1") String pw1, Model model) {
		System.out.println("controller_member_changepw 시작");
		System.out.println(resultid);
		PrintWriter out = null;
		if(pw.equals(pw1)) {
			model.addAttribute("member_changepw", adminservice.memberUpdatePw(resultid ,pw));
			return "admin/findpw";
		}else {
			return "admin/findpw_change";
		}
	}
	
	// 내 점포 분석 페이지
	@RequestMapping(value="myshop.do", method = RequestMethod.GET)
	public String myshop() {
		return "admin/myshop";
	}
	// 서비스 페이지 
	@RequestMapping(value="service.do", method = RequestMethod.GET)
	public String service() {
		return "admin/service";
	}
	
	//서비스 
	@RequestMapping(value="bread.do", method=RequestMethod.GET)
	public String bread() {
		return "admin/bread";
	}
	@RequestMapping(value="dessert.do", method=RequestMethod.GET)
	public String dessert() {
		return "admin/dessert";
	}
	@RequestMapping(value="FF-food.do", method=RequestMethod.GET)
	public String FF_food() {
		return "admin/FF-food";
	}
	@RequestMapping(value="gimbap.do", method=RequestMethod.GET)
	public String gimbap() {
		return "admin/gimbap";
	}
	@RequestMapping(value="hamburger.do", method=RequestMethod.GET)
	public String hamburger() {
		return "admin/hamburger";
	}
	@RequestMapping(value="milk.do", method=RequestMethod.GET)
	public String milk() {
		return "admin/milk";
	}
	@RequestMapping(value="sandwich.do", method=RequestMethod.GET)
	public String sandwich() {
		return "admin/sandwich";
	}
	@RequestMapping(value="t-gimbap.do", method=RequestMethod.GET)
	public String t_gimbap() {
		return "admin/t-gimbap";
	}
	
	// 내점포 분석
	@RequestMapping(value="myshop_age.do", method=RequestMethod.GET)
	public String myshop_age() {
		return "admin/myshop_age";
	}
	@RequestMapping(value="myshop_boxlunch.do", method=RequestMethod.GET)
	public String myshop_boxlunch() {
		return "admin/myshop_boxlunch";
	}
	@RequestMapping(value="myshop_bread.do", method=RequestMethod.GET)
	public String myshop_bread() {
		return "admin/myshop_bread";
	}
	@RequestMapping(value="myshop_dessert.do", method=RequestMethod.GET)
	public String myshop_dessert() {
		return "admin/myshop_dessert";
	}
	@RequestMapping(value="myshop_FF-food.do", method=RequestMethod.GET)
	public String myshop_FF_food() {
		return "admin/myshop_FF-food";
	}
	@RequestMapping(value="myshop_gimbap.do", method=RequestMethod.GET)
	public String myshop_gimbap() {
		return "admin/myshop_gimbap";
	}
	@RequestMapping(value="myshop_girlman.do", method=RequestMethod.GET)
	public String myshop_girlman() {
		return "admin/myshop_girlman";
	}
	@RequestMapping(value="myshop_hamburger.do", method=RequestMethod.GET)
	public String myshop_hamburger() {
		return "admin/myshop_hamburger";
	}
	@RequestMapping(value="myshop_home.do", method=RequestMethod.GET)
	public String myshop_home() {
		return "admin/myshop_home";
	}
	@RequestMapping(value="myshop_location.do", method=RequestMethod.GET)
	public String myshop_location() {
		return "admin/myshop_location";
	}
	@RequestMapping(value="myshop_milk.do", method=RequestMethod.GET)
	public String myshop_milk() {
		return "admin/myshop_milk";
	}
	@RequestMapping(value="myshop_newproduct.do", method=RequestMethod.GET)
	public String myshop_newproduct() {
		return "admin/myshop_newproduct";
	}
	@RequestMapping(value="myshop_sandwich.do", method=RequestMethod.GET)
	public String myshop_sandwich() {
		return "admin/myshop_sandwich";
	}
	@RequestMapping(value="myshop_surround.do", method=RequestMethod.GET)
	public String myshop_surround() {
		return "admin/myshop_surround";
	}
	@RequestMapping(value="myshop_t-gimbap.do", method=RequestMethod.GET)
	public String myshop_t_gimbap() {
		return "admin/myshop_t-gimbap";
	}
	


}
