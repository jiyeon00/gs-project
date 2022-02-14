package com.javaEdu.admin.service;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.javaEdu.admin.dto.AdminDTO;
import com.javaEdu.admin.mapper.AdminMapper;
import com.javaEdu.admin.vo.AdminVO;
import com.javaEdu.myapp.dto.MyappDTO;
import com.javaEdu.myapp.mapper.MyappMapper;
import com.javaEdu.myapp.vo.MyappVO;

@Service
public class AdminService{
	
	@Inject
	private AdminMapper adminmapper;
	
	//로그인
	   public AdminVO loginCheck(AdminDTO.LoginInfo adminDto) {
		   	AdminVO adminvo = adminmapper.getUserById(adminDto.getId());
	         if(adminvo != null) {            
	            if(adminDto.getPw().equals(adminvo.getPw())){
	               return adminvo;
	            } else {
	               System.out.println(adminDto.getPw()+"  "+adminvo.getPw());
	               return null;
	         }
	         }
	      return null;
	    }
	
	//중복 아이디 체크 
    public int checkId(String id) {
        AdminVO adminvo = adminmapper.getUserById(id);
        if(adminvo == null) {
     	   System.out.println("0");
           return 0;
        } 
        System.out.println("1");
        return 1;
     }
    
	//중복 이메일 체크
    public int checkEmail(String email) {
       AdminVO adminvo = adminmapper.getUserById(email);
       if(adminvo == null) {
    	   System.out.println("0");
          return 0;
       } 
       System.out.println("1");
       return 1;
    }
    //중복 이메일 체크
    public int checkHomenumber(String homenumber) {
    	AdminVO adminvo = adminmapper.getUserById(homenumber);
        if(adminvo == null) {
     	   System.out.println("0");
           return 0;
        } 
        System.out.println("1");
        return 1;
     }
    //중복 사업자번호 체크
	
	// 회원 가입하기 
	public Object memberInsert(AdminVO adminvo) {
		System.out.println("service insert 메소드 실행");
		System.out.println(adminvo);
		return adminmapper.memberInsert(adminvo);
	}
	
	// 회원정보 보여주기
	public AdminVO memberList(@Param("loginid") String loginid) {
		System.out.println("service list 메소드 실행");
		AdminVO adminvo = adminmapper.memberList(loginid);
		return adminvo ;
	}
	
	// 회원정보 수정하기
	public String memberEdit(@Param("loginid") String loginid,@Param("myappvo_name") String name,@Param("myappvo_phone") String phone,@Param("myappvo_email") String email, @Param("myappvo_home") String home,@Param("myappvo_homenumber") String homenumber) {
		System.out.println("service edit 메소드 실행");
		return adminmapper.memberEdit(loginid,name, phone, email, home, homenumber);
	}
	
	// 회원 탈퇴하기
	public String memberDelete(@Param("id") String id, @Param("pw") String pw) {
		System.out.println("service delete 메소드 실행");
		return adminmapper.memberDelete(id,pw);
	}
	
	// id 찾기
	public String memberFindId(@Param("name") String name,@Param("email") String email) {
		PrintWriter out = null;
		System.out.println("service find 메소드 실행");
		System.out.println(name + email);
		String id = adminmapper.memberFindId(name,email);
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.");
			out.println("history.go(-1);");
			out.println("</script>");
			return null;
		}else {			
			return id;
		}
	}
	
	
	// 비밀번호 찾기
	//1. 일치하는 정보가 있는지 확인
	public String memberFindPw(@Param("id") String id,@Param("email") String email,@Param("homenumber") String homenumber) {
		System.out.println("service find id 메소드 실행");
		return adminmapper.memberFindPw(id, email, homenumber);
	}
	//2. 비밀번호 바꾸기 
	public String memberUpdatePw(@Param("resultid") String resultid,@Param("pw") String pw) {
		System.out.println("service update pw 메소드 실행");
		return adminmapper.memberUpdatePw(resultid, pw);
	}
}
