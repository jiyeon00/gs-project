<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<!-- bootstrap 라이브러리 등록 - CDN 방식 : sitemesh에서 decorator.jsp에서 한꺼번에 해결-->
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">



<style type="text/css">


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

	.crawlingBtn {
	   width: 20%;
	   height: 50px;
	   border: 1px solid rgb(44, 50, 58);
	   line-height: 20px;
	   color: rgb(44, 50, 58);
	   margin-left: 10%;
	   font-size: 19px;
	   font-weight: bold;
	   font-family: '맑은고딕', Malgun Gothic, dotum, '돋음', arial, sans-serif;
	}
	.crawlingBtn1{
	   width: 80px;
	   height: 40px;
	   border: rgb(97, 96, 96);
	   line-height: 20px;
	   color: rgb(237, 237, 237);
	   background-color: rgb(44, 50, 58);
	   font-size: 15px;
	   font-weight: bold;
	   font-family: '맑은고딕', Malgun Gothic, dotum, '돋음', arial, sans-serif;
	}


</style>


</head>
<body>
   <!-- header -->
   <header>
      <nav class="navbar navbar-light bg-light fixed-top">
         <div class="container">
            <a class="navbar-brand" href="/main/admin/adminhome_after.do"><svg
                  xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                  fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                <path
                     d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z" />
              </svg> Sales Helper</a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
               aria-controls="offcanvasNavbar">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1"
               id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
               <div class="offcanvas-header">
                  <p class='text-center'>
                     <a class="nav-logo nav-link" aria-current="page"
                        href="adminhome_after.do"> <svg
                           xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                           fill="currentColor" class="bi bi-basket2-fill"
                           viewBox="0 0 16 16">
                            <path
                              d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z" />
                          </svg> Sales Helper
                     </a>
                  </p>
                  <button type="button" class="btn-close text-reset"
                     data-bs-dismiss="offcanvas" aria-label="Close"></button>
               </div>
               <div class="offcanvas-body">
                  <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                     <li class="nav-item">
                        <div id='user'>
                           <img
                              src='${pageContext.request.contextPath}/resources/image/user.png'
                              width="200px" height="200px" class="rounded-circle"> <br>
                           <br>
                           <p class='nav-a'>관리자님&nbsp 안녕하세요!</p>
                           <a class='nav-a user-font nav-link'
                              href="/main/admin/mypage.do"> &nbsp&nbsp&nbsp <svg
                                 xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                 fill="currentColor" class="bi bi-bag-check"
                                 viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                    d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                    <path
                                    d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                </svg> <br>MYPAGE
                           </a> <a class='nav-a user-font nav-link'
                              href="/main/myapp/home_before.do"> &nbsp&nbsp&nbsp <svg
                                 xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                 fill="currentColor" class="bi bi-box-arrow-up"
                                 viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                    d="M3.5 6a.5.5 0 0 0-.5.5v8a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-8a.5.5 0 0 0-.5-.5h-2a.5.5 0 0 1 0-1h2A1.5 1.5 0 0 1 14 6.5v8a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-8A1.5 1.5 0 0 1 3.5 5h2a.5.5 0 0 1 0 1h-2z" />
                                    <path fill-rule="evenodd"
                                    d="M7.646.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 1.707V10.5a.5.5 0 0 1-1 0V1.707L5.354 3.854a.5.5 0 1 1-.708-.708l3-3z" />
                                </svg> <br>LOGOUT
                           </a> <br>
                        </div>
                     </li>
                     <li class="nav-item"><br> <br> <a
                        class="nav-a nav-link" aria-current="page"
                        href="/main/admin/adminhome_after.do"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                              viewBox="0 0 24 24" fill="none" stroke="currentColor"
                              stroke-width="2" stroke-linecap="round"
                              stroke-linejoin="round" class="feather feather-home"
                              aria-hidden="true">
                              <path
                                 d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                              <polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                           &nbspHome
                     </a></li>
                     <li class="nav-item"><a class="nav-a nav-link"
                        href="/main/admin/myshop.do"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                              viewBox="0 0 24 24" fill="none" stroke="currentColor"
                              stroke-width="2" stroke-linecap="round"
                              stroke-linejoin="round" class="feather feather-users"
                              aria-hidden="true">
                              <path
                                 d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                              <circle cx="9" cy="7" r="4"></circle>
                              <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                              <path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                           &nbsp내 점포 분석
                     </a></li>
                     <li class="nav-item"><a class="nav-a nav-link"
                        href="/main/admin/service.do"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                              viewBox="0 0 24 24" fill="none" stroke="currentColor"
                              stroke-width="2" stroke-linecap="round"
                              stroke-linejoin="round" class="feather feather-bar-chart-2"
                              aria-hidden="true">
                              <line x1="18" y1="20" x2="18" y2="10"></line>
                              <line x1="12" y1="20" x2="12" y2="4"></line>
                              <line x1="6" y1="20" x2="6" y2="14"></line></svg>
                           &nbspService
                     </a></li>
                     <li class="nav-item"><a class="nav-a nav-link"
                        href="/main/admin/introduce.do"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                              viewBox="0 0 24 24" fill="none" stroke="currentColor"
                              stroke-width="2" stroke-linecap="round"
                              stroke-linejoin="round" class="feather feather-file-text"
                              aria-hidden="true">
                              <path
                                 d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                              <polyline points="14 2 14 8 20 8"></polyline>
                              <line x1="16" y1="13" x2="8" y2="13"></line>
                              <line x1="16" y1="17" x2="8" y2="17"></line>
                              <polyline points="10 9 9 9 8 9"></polyline></svg>
                           &nbsp서비스 소개
                     </a></li>
                     <li class="nav-item"><a class="nav-a nav-link active"
                        href="http://localhost:8181/main/board/list.do"> <svg
                              xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                              viewBox="0 0 24 24" fill="none" stroke="currentColor"
                              stroke-width="2" stroke-linecap="round"
                              stroke-linejoin="round" class="feather feather-file"
                              aria-hidden="true">
                              <path
                                 d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
                              <polyline points="13 2 13 9 20 9"></polyline></svg>
                           &nbsp공지사항
                     </a></li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
   </header>
   <section>
      <div class="container">
      	  <h2 class='section-h2 text-center'>
		      <br> <br> <br> <br>
            <a class='section-a1'>브랜드별 품목 언급량</a>
         </h2>
      	<br> <br> <br><br> 
      	<div class="row">
	         <div class="col-md-7 col-xs-12">
		         <button type="button" class="btn crawlingBtn"
		            onclick="location.href='list.do'">Notice</button>
	         </div>
		      <div class="col-md-3 col-xs-4"> 
		            <br/>
	         	<form action="search.do" method = "post">	         	
		         <h2 class='section-h2 text-center'>
			           <input type="text" id="brand" name ="brand" required="required" placeholder="GS25 CU 세븐일레븐 미니스톱" class="form-control" style="wight: 50px;" />
		         </h2>
		      </div>
				<div class="col-md-2 col-xs-4">
				<br/>
				 <button type="button submit" class="btn crawlingBtn1" >검색</button>
	         	</form>
			</div>
      	</div>
         <br> <br>
          		<div class='col-md-10 col-sm-11'>
                    <div style="height: 850px; overflow: auto; margin-left: 15%; width: 80%;"> 
                        <div class="row">
                            <div class="chart-container">
                                <br/>
                                <h4>${vo.getBrand()} 언급량</h4><br/>
                                <canvas id="chart"></canvas>
                                <script>
                                    const ctx = document.getElementById("chart").getContext('2d');
                                    const myChart = new Chart(ctx, {type: 'bar',
                                    data: {
                                        labels: ["김밥", "삼각김밥", "도시락", "햄버거", "샌드위치", "디저트","빵","유제품","FF"],
                                        datasets: [{
                                            label: '폐기금액',backgroundColor: 'rgba(161, 198, 247, 1)',borderColor: 'rgb(47, 128, 237)',
                                            data: [${vo.getKimbap()}, ${vo.getSkimbap()}, ${vo.getDosirak()}, ${vo.getHamberger()}, ${vo.getSandwich()}, ${vo.getDesert()},${vo.getBread()},${vo.getMilk()},${vo.getFf()}],}]
                                        },
                                        options: {
                                            scales: {
                                                yAxes: [{ ticks: { beginAtZero: true,}}]
                                            }
                                        },
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
               </div>
         </div>
	</section>

   <!-- footer -->
   <footer>
      <div class="container">
         <div class="row">
            <div class="col-md-7 col-sm-7 col-xs-7">
               <div id='inner1'>
                  <a class="footer-font" href="/main/admin/adminhome_after.do"
                     aria-label="Product"> <svg xmlns="http://www.w3.org/2000/svg"
                        width="20" height="20" fill="currentColor" class="bi bi-cart3"
                        viewBox="0 0 16 16">
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