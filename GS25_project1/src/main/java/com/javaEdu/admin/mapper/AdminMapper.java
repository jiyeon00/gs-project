package com.javaEdu.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.javaEdu.admin.vo.AdminVO;
import com.javaEdu.admin.vo.MyshopVO;


public interface AdminMapper {
	
	//로그인
	public AdminVO getUserById(String id);
	//가입하기
	public Object memberInsert(AdminVO adminvo);
	public Integer idCheck(@Param("id") String id);
	//내 수정하기 - 회원정보 보기/수정하기
	public AdminVO memberList(@Param("loginid") String loginid);
	public String memberEdit(@Param("loginid") String loginid ,@Param("name") String name,@Param("phone") String phone,@Param("email") String email, @Param("home") String home,@Param("homenumber") String homenumber);
	//탈퇴하기
	public String memberDelete(@Param("id") String id, @Param("pw") String pw);
	//id 찾기
	public String memberFindId(@Param("name") String name,@Param("email") String email);
	// pw 찾기 - 회원정보 일치하는지 확인/pw 재설정
	public String memberFindPw(@Param("id") String id,@Param("email") String email,@Param("homenumber") String homenumber);
	public String memberUpdatePw(@Param("resultid") String resultid,@Param("pw") String pw);


	//내점포 분석
	public MyshopVO myshop(@Param("product") String product);

}
