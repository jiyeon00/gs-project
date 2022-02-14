<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>내 점포 분석</title>
  <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
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
    .nav-b{font-weight: bolder; text-decoration-line: none;}
    .nav-c{font-weight: bolder;font-size: 18px; }
    .logo-a{font-weight: bolder; text-decoration-line: none; }
    #user{margin-left: 70px;}
    .user-font{float: left; margin-right: 30px; margin-left: 15px;}

    /* section */
    #inner1{margin-top: 35px; margin-left: 15px;}
    #inner2{display: inline-block ; margin-top: 40px; float:right;}
    .section-1{background-color: rgb(247, 247, 241);}
    .section-row-1{float: left; border: solid 1px black; }
    .chart-container { width: 1000px;height: 600px; margin-left: 40px;}
    .img-container{margin-left:15px;}

    /* footer */
    .footer-list{font-size: 17px; color:white;}
    .footer-font{color: white; text-decoration-line: none; margin-left: 15px; font-size: 19px; }
    .footer-font:hover{color:white; font-size:18px;}
    #inner1{margin-top: 35px; margin-left: 15px;}
    #inner2{display: inline-block ; margin-top: 40px; float:right; font-size: 30px;}
    
    </style>

</head>
<body>
 <!-- header  -->
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
          <div class="container-fluid">
            <a class="navbar-brand" href="adminhome_after.do">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
                    <path d="M5.929 1.757a.5.5 0 1 0-.858-.514L2.217 6H.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h.623l1.844 6.456A.75.75 0 0 0 3.69 15h8.622a.75.75 0 0 0 .722-.544L14.877 8h.623a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1.717L10.93 1.243a.5.5 0 1 0-.858.514L12.617 6H3.383L5.93 1.757zM4 10a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm3 0a1 1 0 0 1 2 0v2a1 1 0 1 1-2 0v-2zm4-1a1 1 0 0 1 1 1v2a1 1 0 1 1-2 0v-2a1 1 0 0 1 1-1z"/>
                  </svg>
                  Sales Helper
            </a>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-body collapse navbar-collapse" id="navbarCollapse">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="adminhome_after.do">home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="myshop.do">내 점포 분석</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.do">Service</a>
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
                <div class="section-1 col-md-2 col-sm-3">
                    <nav class='navbar-fixed-top'>
                        <h5 class="nav-b sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                            <span>상권 분석</span>
                            <a class="link-secondary" href="#" aria-label="Add a new report">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle" aria-hidden="true"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                            </a>
                        </h5>
                        <ul class="nav flex-column mb-2">
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_location.do">
                                &nbsp&nbsp위치
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_home.do">
                                &nbsp&nbsp주거 형태
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_age.do">
                                &nbsp&nbsp주 고객 연령대
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_girlman.do">
                                &nbsp&nbsp주 고객 성별
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_surround.do">
                                    &nbsp&nbsp주변 시설
                                </a>
                            </li>
                        </ul>
                        <br>
                        <h5 class="nav-b sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                            <span>폐기 분석</span>
                            <a class="link-secondary" href="#" aria-label="Add a new report">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle" aria-hidden="true"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                            </a>
                        </h5>
                        <ul class="nav flex-column mb-2">
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_t-gimbap.do">
                                &nbsp&nbsp삼각 김밥
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_gimbap.do">
                                &nbsp&nbsp김밥
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_hamburger.do">
                                &nbsp&nbsp햄버거
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_sandwich.do">
                                &nbsp&nbsp샌드위치
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_boxlunch.do">
                                &nbsp&nbsp도시락
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_FF-food.do">
                                &nbsp&nbspFF간편식
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_dessert.do">
                                &nbsp&nbsp디저트
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_bread.do">
                                &nbsp&nbsp빵
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a" href="myshop_milk.do">
                                &nbsp&nbsp유제품
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-a  nav-c" href="myshop_newproduct.do">
                                &nbsp&nbsp신상품 분석
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class='col-md-10 col-sm-9'>
                    <div style="height: 900px; overflow: auto"> 
                        <div class="row">
                            <div class="chart-container">
                                <br/>
                                <h4>신상품 분석</h4><br/>
                                <img src='${pageContext.request.contextPath}/resources/image/신상품.jpg' width ="500px" height="400px"><br><br>
                                <h5>10월부터 1월까지의 신상품의 입고와 판매수량을 살펴 본 결과 <br>
                                    <br>- 신상품의 입고수량
                                    <br>: 빵 > 삼각김밥 > 샌드위치 > 도시락 > 디저트 > FF간편식 > 김밥 > 유제품 > 햄버거 순이다.
                                    <br><br>-  신상품의 판매수량 
                                    <br>: 삼각김밥 > 빵 > 도시락 > 샌드위치 > 디저트 = FF간편식 = 김밥 > 유제품 > 햄버거 순이다.
                                    <br><br>- 빵의 신상품 입고량이 다른 품목에 비해 가장 높게 나타났다. 그러나 판매는 입고에 비해 높은 편은 아닌 것으로 확인된다.
                                    <br><br>-  삼각김밥은 신상품 입고량이 두번째로 높게 나타났다. 또한 삼각김밥은 입고수량에 비해 판매수량도 높은 편인 것으로 확인된다.
                                    <br><br>- 햄버거는 신상품 데이터가 부족하여 정확하게 확인하기는 어려우나 신상품 입고수량도 판매수량도 낮은것으로 확인된다.
                                </h5>
                             </div>
                        </div>
                        <canvas class="my-4 w-100 chartjs-render-monitor" id="myChart" width="666" height="281" style="display: block; width: 666px; height: 281px;"></canvas>
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