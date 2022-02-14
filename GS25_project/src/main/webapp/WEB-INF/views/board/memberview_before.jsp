<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 글보기</title>
<!-- bootstrap 라이브러리 등록 - CDN 방식 : sitemesh에서 decorator.jsp에서 한꺼번에 해결-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 이거 없으면 안눌림 -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<!--  부트스트랩 js 사용 -->
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>

<style type="text/css">
.dataRow:hover {
   background: #eee;
   cursor: pointer;
}

header {
   margin-top: -23px;
   display: flex;
   height: 55px;
}

.header-box1 {
   border-bottom: 1px rgb(59, 57, 57) solid;
   padding-top: 13px;
}

.header-box2 {
   padding-top: 30px;
}

section {
   background-color: rgb(224, 222, 222);
   /* rgb(245, 244, 239); rgb(224, 222, 222); */
}

footer {
   border-top: white 1px solid;
   background-color: rgb(44, 50, 58);
}

/* header */
.logo {
   font-weight: bold;
   text-decoration-line: none;
   font-size: 21px;
}

.main-font {
   font-weight: bold;
}

.nav-a {
   text-decoration-line: none;
   font-size: 17px;
   color: rgb(64, 64, 65);
}

.nav-b {
   font-weight: bolder;
   text-decoration-line: none;
}

.logo-a {
   font-weight: bolder;
   text-decoration-line: none;
}

#user {
   margin-left: 70px;
}

.user-font {
   float: left;
   margin-right: 30px;
   margin-left: 15px;
}

.header-name {
   color: white;
   text-decoration-line: none;
   font-size: 18px;
}

.nav-logo {
   font-size: 25px;
   font-weight: bold;
   color: rgb(43, 42, 42);
}

/* section */
.section-h2 {
   color: rgb(66, 65, 65);
}

.section-a1 {
   border-bottom: 0.5px solid rgb(66, 65, 65);
   text-decoration-line: none;
   color: rgb(66, 65, 65);
   padding-bottom: 3px;
}

.section-a1:hover {
   color: rgb(66, 65, 65);
}

.table-tr {
   border-bottom: 0.1px solid rgb(199, 198, 198);
   margin: 10px 10px 10px 10px;
}

.page-number {
   border: 0.2px solid
}

.page-a {
   color: rgb(68, 67, 67)
}

.table-r {
   color: black;
   text-decoration-line: none;
   
}

.table-r:hover {
   color: black;
   font-weight: bold;
}

/* footer */
.footer-list {
   font-size: 17px;
   color: white;
}

.footer-font {
   color: white;
   text-decoration-line: none;
   margin-left: 15px;
   font-size: 19px;
}

#inner1 {
   margin-top: 35px;
   margin-left: 15px;
}

#inner2 {
   display: inline-block;
   margin-top: 40px;
   float: right;
   font-size: 30px;
}
	.divbox{margin-left: 10%; }
	.contentbox{margin-top: 5%;   border-bottom: 3px solid rgb(66, 65, 65);}
	tr td{padding-top: 5%;}
	
	/* td{ size: 18px;height: 80px; padding-top: 20px;} */
   .loginBtn1{
          width: 15%;
          float: left;
          height: 50px;
          border: rgb(97, 96, 96);
          line-height: 20px;
          
          border: 0.1px solid rgb(44, 50, 58);
          font-size: 19px;
          font-weight: bold;
          font-family: '맑은고딕',Malgun Gothic,dotum,'돋음', arial, sans-serif;
      }
</style>

<script type="text/javascript">
   $(document).ready(function(){
      $("#deleteBtn").click(function(){
         alert("정말 삭제하겠습니까?");
         $("#deleteForm").submit();
      });
   });
</script>

</head>
<body>
   <!-- header -->
     <header>
        <nav class="navbar navbar-light bg-light fixed-top">
          <div class="container">
            <a class="navbar-brand" href="http://localhost:8181/main/myapp/home_before.do">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                    <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
                  </svg>
                  Sales Helper
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
              <div class="offcanvas-header">
                <h4 class="offcanvas-title" id="offcanvasNavbarLabel">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                        <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
                      </svg>
                      Sales Helper
                </h4>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
              </div>
              <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                  <li class="nav-item">
                    <a class="nav-a nav-link active" aria-current="page" href="http://localhost:8181/main/myapp/home_before.do">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/login.do">LOGIN</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/join_agree.do">JOIN</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/login.do">내 점포 분석</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/login.do">Service</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/introduce_before.do">서비스 소개</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="http://localhost:8181/main/myapp/notice_before.do">공지사항</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
    </header>
<section>
      <br> <br> <br>
      <div class="container">
      	<div class="col-md-1"></div>
	         <h2 class='section-h2 text-center'>
	         <br> <br>
	            <a class='section-a1'>Notice</a>
	         </h2>
	         <br> <br> <br>
      	<div class="col-md-10 divbox">
		      <table class="table">
   	 	  		   <thead>
                       <tr class='table-tr'>
                       </tr>
                   </thead>
                   <tbody>
                       <tr class='table-tr'>
                           <th scope="row" class='col-2 text-center'><br/>NO<br/>&nbsp;</th>
                           <td class='col-8'><br/>${vo.no }<br/></td>
                       </tr>
                       <tr class='table-tr'>
                           <th scope="row" class='col-2 text-center'><br/>SUBJECT<br/>&nbsp;</th>
                           <td class='col-8'><br/>${vo.title }<br/></td>
                       </tr>
                       <tr class='table-tr'>
                           <th scope="row" class='text-center'><br/>WRITER<br/>&nbsp;</th>
                           <td><br/>${vo.writer }<br/></td>
                       </tr>
                       <tr class='table-tr'>
                           <th scope="row" class='text-center'><br/>DATE<br/>&nbsp;</th>
                           <td><br/><fmt:formatDate value="${vo.writeDate }"
		                  pattern="yyyy.MM.dd" /><br/></td>
                       </tr>
                       <tr class='table-tr'>
                           <th scope="row" class='text-center'><br/>VIEW<br/>&nbsp;</th>
                           <td><pre style="border: none;"><br/>${vo.hit }<br/></pre></td>
                       </tr>
                   </tbody>
		         
		      </table>
	      	<div class="contentbox"><pre style="border: none;">${vo.content }</pre></div>
	      	<br>
	      	<button type="button" class="btn loginBtn1" onclick="location.href='notice_before.do'">LIST</button>
      	</div>
   </div>
   
   
         <br> <br> <br> <br> <br> <br> <br>
      <br> <br> <br> <br>
   </section>
      <!-- footer -->
   <footer>
      <div class="container">
         <div class="row">
            <div class="col-md-7 col-sm-7 col-xs-7">
               <div id='inner1'>
                  <a class="footer-font" href="http://localhost:8181/main/myapp/home_after.do" aria-label="Product">
                     <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                        fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
                                <path
                           d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                            </svg> Sales Helper
                  </a> <br> <br> <a class="footer-font"
                     href="http://hcvsscn.gsretail.com/cssc/index.html">점포경영시스템&nbsp;&nbsp;
                  </a> <a class="footer-font"
                     href="http://gs25.gsretail.com/gscvs/ko/products/event-goods">GS25</a>
               </div>
            </div>
            <br>
            <div class="col-md-5 col-sm-5 col-xs-5">
               <div class='outer'>
                  <div id='inner2'>
                     <p class='footer-list'>COMPANY. Sales Helper | ADDRESS. 서울
                        관악구 남부순환로 1820 6F</p>
                     <p class='footer-list'>CALL. 010-xxxx-xxxx | E-mail.
                        scy9809@naver.com</p>
                  </div>
               </div>
            </div>
            <br> <br>
         </div>
      </div>
   </footer>
</body>
</html>