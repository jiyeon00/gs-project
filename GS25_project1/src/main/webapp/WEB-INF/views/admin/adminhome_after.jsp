<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sales Helper</title>
  <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <style>
    header{margin-top: 5px;}
    .header-box1{border-bottom: 1px rgb(59, 57, 57) solid; padding-top: 13px;}
    .header-box2{padding-top: 30px;}
    section{background-color:rgb(245, 244, 239);}
    /* background-color:rgb(224, 222, 222); */
    footer{border-top: white 1px solid; background-color:rgb(63, 71, 82);}
    .bg-main{background-image: url('${pageContext.request.contextPath}/resources/image/배경색.png');}
    
    /* header */
    .logo{font-weight: bold; text-decoration-line: none; font-size: 21px;}
    .main-font{font-weight: bold;}
    .nav-a{font-weight: bolder; text-decoration-line: none; font-size: 17px;}
    .logo-a{font-weight: bolder; text-decoration-line: none; }
    #user{margin-left: 70px;}
    .user-font{float: left; margin-right: 30px; margin-left: 15px;}
    .nav-logo{font-size: 25px; font-weight: bold; color: rgb(43, 42, 42);}
    .section-font{font-size: 19px; color: rgb(95, 93, 93); font-weight: bold;}

    /* footer */
    .footer-list{font-size: 17px; color:white;}
    .footer-font{color: white; text-decoration-line: none; margin-left: 15px; font-size: 19px; }
    .footer-font:hover{color:white; font-size:18px;}
    #inner1{margin-top: 35px; margin-left: 15px;}
    #inner2{display: inline-block ; margin-top: 40px; float:right; font-size: 30px;}

    
  </style>

</head>
<body>
  <!-- header -->
  <header>
    <nav class="navbar navbar-light bg-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="adminhome_after.do">
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
            <p class='text-center'>
                <a class="nav-logo nav-link" aria-current="page" href="adminhome_after.do">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                    <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
                  </svg>
                  Sales Helper
                </a></p>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                    <div id='user'>
                        <img src='${pageContext.request.contextPath}/resources/image/user.png' width="200px" height="200px" class="rounded-circle"> 
                       
                        <br><br>    
                        <p class='nav-a'>관리자님&nbsp 안녕하세요!</p>
                        <a class='nav-a user-font nav-link' href="mypage.do"> 
                            &nbsp&nbsp&nbsp
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag-check" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                            </svg>
                            <br>MYPAGE </a>
                        <a class='nav-a user-font nav-link' href="/main/myapp/home_before.do"> 
                            &nbsp&nbsp&nbsp
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-up" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M3.5 6a.5.5 0 0 0-.5.5v8a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-8a.5.5 0 0 0-.5-.5h-2a.5.5 0 0 1 0-1h2A1.5 1.5 0 0 1 14 6.5v8a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-8A1.5 1.5 0 0 1 3.5 5h2a.5.5 0 0 1 0 1h-2z"/>
                                <path fill-rule="evenodd" d="M7.646.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 1.707V10.5a.5.5 0 0 1-1 0V1.707L5.354 3.854a.5.5 0 1 1-.708-.708l3-3z"/>
                            </svg>
                            <br>LOGOUT</a>
                        <br>
                    </div>
                </li>
                <li class="nav-item">
                    <br><br>
                    <a class="nav-a nav-link active" aria-current="page" href="adminhome_after.do">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home" aria-hidden="true"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                        &nbspHome</a>
                </li>
                <li class="nav-item">
                    <a class="nav-a nav-link" href="myshop.do">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users" aria-hidden="true"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                        &nbsp내 점포 분석</a>
                </li>
                <li class="nav-item">
                    <a class="nav-a nav-link" href="service.do">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart-2" aria-hidden="true"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>
                    &nbspService</a>
                </li>
                <li class="nav-item">
                    <a class="nav-a nav-link" href="introduce.do">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text" aria-hidden="true"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                     &nbsp서비스 소개</a>
                </li>
                <li class="nav-item">
                    <a class="nav-a nav-link" href="/main/board/list.do">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file" aria-hidden="true"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                    &nbsp공지사항</a>
                </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <!-- section -->
  <section>
    <main>
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-main container">
          <div class="col-md-6 px-0">
          <br><br><br>
            <h2 class="fw-dark">Grab your oppertunity</h2><br>
            <p class="section-font">Sales Helper 관리자 페이지 입니다. <br>
            </p>
            <a href="service.do" class="btn btn-primary my-2">서비스 이용하기</a> &nbsp
            <!-- <a href="#" class="btn btn-secondary my-2">JOIN</a> -->
            <p><br></p>
          </div>
        </div>
        <br><br>
        <div class="container marketing text-center" >
          <!-- Three columns of text below the carousel -->
          <div class="row">
              <div class="col-lg-3 col-md-6">
                  <img src='${pageContext.request.contextPath}/resources/image/image4.jpg' width="210px" height="210px" class="rounded-circle"> 
                 
                  <h3><br>서비스 소개</h3>
                  <!-- <p></p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="introduce.do">View details »</a></p>
              </div>
              <div class="col-lg-3 col-md-6">
                  <img src='${pageContext.request.contextPath}/resources/image/image3.jpg' width="210px" height="210px" class="rounded-circle">
      
                  <h3><br>내 점포 분석</h3>
                  <!-- <p>매출 증대나 손실비용 방지 등</p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="myshop.do">View details »</a></p>
              </div>
              <div class="col-lg-3 col-md-6">
                  <img src='${pageContext.request.contextPath}/resources/image/image2.jpg' width="210px" height="210px" class="rounded-circle">     
                  <h3><br>Service</h3>
                  <!-- <p>알려주는 건 어때?</p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="service.do">View details »</a></p>
              </div>
              <div class="col-lg-3 col-md-6">
                <img src='${pageContext.request.contextPath}/resources/image/image1.jpg' width="210px" height="210px" class="rounded-circle">     
                <h3><br>공지사항</h3>
                <!-- <p>알려주는 건 어때?</p> -->
                <br>
                <p><a class="btn btn-secondary" href="/main/board/list.do">View details »</a></p>
            </div>
          </div>
        </div><br><br><br>
    </main>
  </section>

  <!-- footer -->
  <footer>
      <div class="container">
          <div class="row">
              <div class="col-md-7 col-sm-7 col-xs-7">
                  <div id='inner1'>
                      <a class="footer-font" href="adminhome_after.do" aria-label="Product">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                          <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
                        </svg>
                        Sales Helper
                      </a>
                      <br><br>
                      <a class="footer-font" href="http://hcvsscn.gsretail.com/cssc/index.html">점포경영시스템&nbsp;&nbsp; </a>
                      <a class="footer-font" href="http://gs25.gsretail.com/gscvs/ko/products/event-goods">GS25</a>
                  </div>
              </div>
              <br>
              <div class="col-md-5 col-sm-5 col-xs-5">
                  <div class='outer'>
                      <div id='inner2'>
                          <p class='footer-list'>COMPANY. Sales Helper  |  ADDRESS. 서울 관악구 남부순환로 1820 6F</p>
                          <p class='footer-list'>CALL. 010-9075-9954  |  E-mail. scy9809@naver.com</p>
                      </div>
                  </div>
              </div>
          </div>
      </div><br><br>
  </footer>
    
  
  <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
        
    


  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>