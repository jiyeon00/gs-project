<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>내 점포 분석-FF간편식</title>
  <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  <style>
    header{margin-top: 5px; display: flex; height: 55px;}
    .header-box1{border-bottom: 1px rgb(59, 57, 57) solid; padding-top: 13px;}
    .header-box2{padding-top: 30px;}
    section{margin-top: 5px;}
    /* section{background-image: url('/image/image.jpg'); width: auto; height: 350px; } */
    /* main{} */
    
    /* header */
    .logo{font-weight: bold; text-decoration-line: none; font-size: 21px;}
    .main-font{font-weight: bold;}
    .nav-a{ text-decoration-line: none; font-size: 17px; color: rgb(65, 64, 64);}
    .nav-a1{ text-decoration-line: none; font-size: 19px; color: rgb(65, 64, 64); font-weight: bolder;}
    .nav-b{font-weight: bolder; text-decoration-line: none;}
    .logo-a{font-weight: bolder; text-decoration-line: none; }
    #user{margin-left: 70px;}
    .user-font{float: left; margin-right: 30px; margin-left: 15px;}

    /* section */
    #inner1{margin-top: 35px; margin-left: 15px;}
    #inner2{display: inline-block ; margin-top: 40px; float:right;}
    .section-row-1{float: left; border: solid 1px black; }
    .nav-box1{margin-top: 16px; margin-left: 10px; float:left;}
    .nav-box2{float: right;}
    .row-1{padding: 15px 15px 15px 15px;}
    .search-box{margin-right: 20px;}

    /* footer */
    footer{border-top: black 1px solid;}
    .footer-list{font-size: 15px;}
    .footer-font{color: black; text-decoration-line: none; margin-left: 15px; font-size: 15px; }
    .section-1{background-color: rgb(243, 242, 240);}
  </style>

</head>
<body>
    <!-- header  -->
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
          <div class="container-fluid">
            <a class="navbar-brand" href="/main/admin/adminhome_after.do">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
              </svg>
              Sales Helper</a>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-body collapse navbar-collapse" id="navbarCollapse">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="/main/admin/adminhome_after.do">home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="myshop.do">내 점포 분석</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="service.do">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="introduce.do">서비스 소개</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/main/board/list.do">공지사항</a>
                  </li>
              </ul>
            </div>
          </div>
        </nav>
    </header>
    
    <!-- section -->
    <section>
        <div class='container-flied'>
            <div class='row'>
                <div class="section-1 col-md-2 col-sm-4 col-xs-3">
                    <nav class='navbar-fixed-top'>
                        <h3 class="nav-b sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                            <span>품 목</span>
                            <a class="link-secondary" href="#" aria-label="Add a new report">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle" aria-hidden="true"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                            </a>
                        </h3>
                        <br>
                        <ul class="nav flex-column mb-2">
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="gimbap.do">
                                &nbsp&nbsp김밥
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="t-gimbap.do">
                                &nbsp&nbsp삼각김밥
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="hamburger.do">
                                &nbsp&nbsp햄버거
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="sandwich.do">
                                &nbsp&nbsp샌드위치
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a1" href="FF-food.do">
                                    &nbsp&nbspFF간편식
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="dessert.do">
                                    &nbsp&nbsp디저트
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="bread.do">
                                    &nbsp&nbsp빵
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="milk.do">
                                    &nbsp&nbsp유제품
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class='col-md-10 col-sm-8 col-xs-7'>
                    <div style="height: 900px; overflow: auto"> 
                        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                            <h2 id="FF-food">FF간편식</h2>
                            <div class="btn-toolbar mb-2 mb-md-0 search-box">  
                                <form class="d-flex">
                                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn btn-outline-success" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--  부트스트랩 js 사용 -->
    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>