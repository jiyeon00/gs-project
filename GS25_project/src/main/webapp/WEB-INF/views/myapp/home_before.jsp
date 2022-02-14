<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>
    Sales Helper
  </title>
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

  <header>
    <nav class="navbar navbar-light bg-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="home_before.do">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
            <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
          </svg>
          Sales Helper</a>
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
                <a class="nav-a nav-link active" aria-current="page" href="home_before.do">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="login.do">LOGIN</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="join_agree.do">JOIN</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="login.do">내 점포 분석</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="login.do">Service</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="introduce_before.do">서비스 소개</a>
              </li>
              <li class="nav-item">
                <a class="nav-a nav-link" href="notice_before.do">공지사항</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <section>

    <main>
        <div class="p-4 p-md-5 mb-4 text-white rounded container bg-main main-img">
          <div class="col-md-6 px-0">
          <br><br><br>
            <h2 class="fw-dark">Grab your oppertunity</h2><br>
            <p class="section-font">경영주의 매출 손실 방지를 위한 서비스입니다 <br>
            과거 데이터를 활용하여 상품별 예상 폐기율을 분석해 드립니다.
            </p>
            <a href="join_agree.do" class="btn btn-primary my-2">가입하기</a> &nbsp
            <!-- <a href="#" class="btn btn-secondary my-2">JOIN</a> -->
            <p><br></p>
          </div>
        </div>
        <br><br>
        <div class="container marketing text-center" >
          <!-- Three columns of text below the carousel -->
          <div class="row">
              <div class="col-lg-3 col-md-6">
                  <img src='${pageContext.request.contextPath}/resources/image/image1.jpg' width="210px" height="210px" class="rounded-circle">     
                  <h3><br>서비스 소개</h3>
                  <!-- <p></p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="introduce_before.do">View details »</a></p>
              </div>
              <div class="col-lg-3 col-md-6">
              		
                  <img src="${pageContext.request.contextPath}/resources/image/image3.jpg" width="210px" height="210px" class="rounded-circle">   
                  <h3><br>내 점포 분석</h3>
                  <!-- <p>매출 증대나 손실비용 방지 등</p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="login.do">View details »</a></p>
              </div>
              <div class="col-lg-3 col-md-6">
                <img src="${pageContext.request.contextPath}/resources/image/image2.jpg" width="210px" height="210px" class="rounded-circle">   
                <h3><br>Service</h3>
                <!-- <p>매출 증대나 손실비용 방지 등</p> -->
                <br>
                <p><a class="btn btn-secondary" href="login.do">View details »</a></p>
            </div>
              <div class="col-lg-3 col-md-6">
                  <img src="${pageContext.request.contextPath}/resources/image/image4.jpg" width="210px" height="210px" class="rounded-circle">     
                  <h3><br>공지사항</h3>
                  <!-- <p>알려주는 건 어때?</p> -->
                  <br>
                  <p><a class="btn btn-secondary" href="notice_before.do">View details »</a></p>
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
                      <a class="footer-font" href="home_before.do" aria-label="Product">
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
                          <p class='footer-list'>CALL. 010-9075-9954   |  E-mail. scy9809@naver.com</p>
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