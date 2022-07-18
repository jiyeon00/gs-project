package com.javaEdu.admin.dto;

// DTO는 계층간 데이터 교환을 위한 객체, 도메인 객체에서 불필요한 속성들을 빼고싶을때 사용
public class AdminDTO {
   
   private String id;
   private String pw;
   
   
   public static class LoginInfo {
      
      private String id;
      private String pw;
      
      public String getId() {
         return id;
      }
      public void setId(String id) {
         this.id = id;
      }
      public String getPw() {
         return pw;
      }
      public void setPw(String pw) {
         this.pw = pw;
      }
   
   }
}
