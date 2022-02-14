package com.javaEdu.myapp.service;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.dto.MyappDTO;
import com.javaEdu.myapp.mapper.MyappMapper;
import com.javaEdu.myapp.vo.MyappVO;

@Service
public class MyappService{
	@Inject
	private MyappMapper mapper;
	
	//로그인
	public MyappVO loginCheck(MyappDTO.LoginInfo myappDto) {
	      MyappVO myappvo = mapper.getUserById(myappDto.getId());
	      if(myappvo != null) {	    	  
	    	  if(myappDto.getPw().equals(myappvo.getPw())){
	    		  return myappvo;
	    	  } else {
	    		  System.out.println(myappDto.getPw()+"  "+myappvo.getPw());
	    		  return null;
	      }
	      }
		return null;
	 }
	
	//중복 아이디 체크 
    public int checkId(String id) {
        MyappVO myappvo = mapper.getUserById(id);
        if(myappvo == null) {
     	   System.out.println("0");
           return 0;
        } 
        System.out.println("1");
        return 1;
     }
    
	//중복 이메일 체크
    public int checkEmail(String email) {
       MyappVO myappvo = mapper.getUserById(email);
       if(myappvo == null) {
    	   System.out.println("0");
          return 0;
       } 
       System.out.println("1");
       return 1;
    }
    //중복 이메일 체크
    public int checkHomenumber(String homenumber) {
        MyappVO myappvo = mapper.getUserById(homenumber);
        if(myappvo == null) {
     	   System.out.println("0");
           return 0;
        } 
        System.out.println("1");
        return 1;
     }
    //중복 사업자번호 체크
	
	// 회원 가입하기 
	public Object memberInsert(MyappVO myappvo) {
		System.out.println("service insert 메소드 실행");
		System.out.println(myappvo);
		return mapper.memberInsert(myappvo);
	}
	
	// 회원정보 보여주기
	public MyappVO memberList(@Param("loginid") String loginid) {
		System.out.println("service list 메소드 실행");
		MyappVO myappvo = mapper.memberList(loginid);
		return myappvo ;
	}
	
	// 회원정보 수정하기
	public String memberEdit(@Param("loginid") String loginid,@Param("myappvo_name") String name,@Param("myappvo_phone") String phone,@Param("myappvo_email") String email, @Param("myappvo_home") String home,@Param("myappvo_homenumber") String homenumber) {
		System.out.println("service edit 메소드 실행");
		return mapper.memberEdit(loginid,name, phone, email, home, homenumber);
	}
	
	// 회원 탈퇴하기
	public String memberDelete(@Param("id") String id, @Param("pw") String pw) {
		System.out.println("service delete 메소드 실행");
		return mapper.memberDelete(id,pw);
	}
	public int memberfind(@Param("id") String id, @Param("pw") String pw) {
		System.out.println("service find 메소드 실행");
		return mapper.memberfind(id, pw);
	}
	
	// id 찾기
	public String memberFindId(@Param("name") String name,@Param("email") String email) {
		PrintWriter out = null;
		System.out.println("service find 메소드 실행");
		System.out.println(name + email);
		String id = mapper.memberFindId(name,email);
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
		return mapper.memberFindPw(id, email, homenumber);
	}
	//2. 비밀번호 바꾸기 
	public String memberUpdatePw(@Param("resultid") String resultid,@Param("pw") String pw) {
		System.out.println("service update pw 메소드 실행");
		System.out.println(resultid+ pw);
		return mapper.memberUpdatePw(resultid, pw);
	}
}
