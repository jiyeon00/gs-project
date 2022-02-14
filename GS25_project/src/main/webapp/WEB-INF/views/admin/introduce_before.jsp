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
    section{background-color:rgb(224, 222, 222);}
    footer{border-top: white 1px solid; background-color:rgb(63, 71, 82);}
    
    /* header */
    .logo{font-weight: bold; text-decoration-line: none; font-size: 21px;}
    .main-font{font-weight: bold;}
    .nav-a{ text-decoration-line: none; font-size: 17px; color: rgb(64, 64, 65);}
    .nav-b{font-weight: bolder; text-decoration-line: none;}
    .logo-a{font-weight: bolder; text-decoration-line: none; }
    #user{margin-left: 70px;}
    .user-font{float: left; margin-right: 30px; margin-left: 15px;}
    .header-name{color: white; text-decoration-line: none; font-size: 18px;}
    .nav-logo{font-size: 25px; font-weight: bold; color: rgb(43, 42, 42);}

    /* section */
    .section-h2{color:rgb(66, 65, 65);}
    .section-a1{border-bottom: 0.5px solid rgb(66, 65, 65); text-decoration-line: none; color:rgb(66, 65, 65);padding-bottom: 3px;}
    .section-a1:hover{color:rgb(66, 65, 65);}
    .table-tr{border-bottom: 0.1px solid rgb(199, 198, 198);}
    .page-number{border:0.2px solid }
    .page-a{color:rgb(68, 67, 67)}
    .in-box{border: 1px black solid; width: 90%;}
    .chart-container {width:680px;height: 500px; margin:auto;}
    .p-font{font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 19px; font-weight: blod;}

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
          <a class="navbar-brand" href="home_before.do">
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
              <h4 class="offcanvas-title" id="offcanvasNavbarLabel">Sales Helper</h4>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-a nav-link active" aria-current="page" href="main-before.do">Home</a>
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
                  <a class="nav-a nav-link active" href="introduce_before.do">서비스 소개</a>
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
    
    <!-- section -->
    <section>
        <div class='container'>
            <br><br><br><br>
            <div class='row row-1'>
                <div class='col-md-11 text-center'>
                    <h2 class='section-h2 text-center'><a class='section-a1'>서비스 소개</a></h2>
                    <br/><br/><br/><br/><br/>
                    <h4 class="text-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-quote" viewBox="0 0 16 16">
                            <path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"/>
                        </svg> 
                        <b>&nbsp;Sales Helper&nbsp;는 과거 데이터를 통해 각 상품 별 폐기율과 순이익을 예측하여 
                        <br>폐기관련 기회손실 비용을 방지하는데 도움을 주는 서비스입니다.&nbsp;</b>
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-quote" viewBox="0 0 16 16">
                            <path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"/>
                        </svg>                       
                    </h4>
                    <br/><br/><br/><br/><br/>
                    <div class="chart-container">
                        <h4 class="text-center">평균 매출 구성표</h4>
                        <canvas id="chart"></canvas>
                        <script>
                            const ctx = document.getElementById("chart").getContext('2d');
                            const myChart = new Chart(ctx, {
                                type: 'pie',
                                data: {
                                labels: ["고정비", "본사계약", "순수익", "폐기금액"],
                                datasets: [{
                                    label: '평균매출구성표',
                                    backgroundColor: 'rgba(161, 198, 247, 1)',
                                    borderColor: 'rgb(47, 128, 237)',
                                    data: [48.2,33,12.8,6],
                                }]
                                },
                            });
                        </script>
                    </div>
                </div>
                <div class="row row-1">
                    <div class='text-center col-md-11'>
                        <p class="p-font">평균 매출 구성표를 확인한 결과
                            <br/><br>
                            1. 전기세, 임대료, 인건비 포함한 고정비 48.2%<br><br>
                            2. 수익의 33%는 본사에게 지급<br><br>
                            3. 한 달 평균 폐기 금액이 6% 차지 <br><br>
                            4. 한 달 평균 순 수익 비중은 12.6%로 확인<br><br>
                        </p>
                        <h5>
                            
                            <b>순 수익을 제외한 지출 부분에서 <br> 줄일 수 있는 부분은 <b class="text-primary">폐기금액</b>임을 확인</b>
                            
                            
                            <br><br>
                        </h5>
                    </div>
                </div>
                <div class="row row-1">
                    <div class='text-center col-md-11'>
                        <br><br><br>
                        <img src="${pageContext.request.contextPath}/resources/image/introduce1.png" width="430px" height="400px"><br><br>
                        <br><br>
                        <p class="p-font"> 2021년도 8월부터 2022년도 1월까지의 데이터를 확인한 결과</p>
                        <p class="p-font"> - 폐기금액 가장 높은 달: 10월</p>
                        <p class="p-font" >- 폐기금액 가장 낮은 달: &nbsp;&nbsp;9월</p>
                        <br><br>
                        <h5>
                            <b>두 달을 비교하여 폐기금액이 <br> 높게/낮게 나온 이유를 파악해본다.</b>
                        </h5>
                    </div>
                </div>
                <div class="row row-1">
                    <div class="col-md-7 text-center">
                        <br><br><br>
                        <img src="${pageContext.request.contextPath}/resources/image/introduce2.jpg" width="430px" height="400px"><br><br>
                    </div>
                    <div class="col-md-5">
                        <br><br><br>
                        <h5>9월, 10월 입고량, 판매량, 폐기량을 확인한 결과</h5>
                        <h5>9월에 비해 10월 입고량 늘어난 품목
                            <br> :삼각김밥, 빵, 도시락, FF간편식, 디저트
                        </h5>
                    </div>
                </div>
                <div class="row row-1">
                    <div class="col-md-7 text-center">
                        <br><br><br>
                        <img src="${pageContext.request.contextPath}/resources/image/introduce3.jpg" width="430px" height="400px"><br><br>
                    </div>
                    <div class="col-md-5">
                        <br><br><br>
                        <h5></h5>
                        <h5>9월에 비해 10월 판매량이 늘어난 품목
                            <br> :삼각김밥, 빵, 도시락, FF간편식, 디저트
                        </h5>
                    </div>
                </div>
                <div class="row row-1">
                    <div class="col-md-7 text-center">
                        <br><br><br>
                        <img src="${pageContext.request.contextPath}/resources/image/introduce4.jpg" width="430px" height="400px"><br><br>
                    </div>
                    <div class="col-md-5">
                        <br><br><br>
                        <h5>9월에 비해 10월 폐기금액이 늘어난 품목
                            <br> :김밥 제외한 모든 품목
                        </h5>
                    </div>
                </div>
                <div class="row row-1">
                    <div class="col-md-12">
                        <h4 class="text-center">
                            <br><br><br><br><br>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-quote" viewBox="0 0 16 16">
                                <path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"/>
                            </svg> 
                            <b>&nbsp;필요에 의해 입고량을 늘렸지만 과도한 발주량 설정으로 오히려 폐기금액이 더 늘어난 상황
                                <br>발주는 매출에 많은 영향을 끼치기에 정확한 분석과 예측 알고리즘을 통해 올바른 발주를 해야한다.&nbsp;</b>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-quote" viewBox="0 0 16 16">
                                <path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"/>
                            </svg>                       
                        </h4>
                    </div>
                </div>
            <canvas class="my-4 w-100 chartjs-render-monitor" id="myChart" width="666" height="281" style="display: block; width: 666px; height: 281px;"></canvas>
        </div>       
    </section>
    

    <!-- footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-sm-7 col-xs-7">
                    <div id='inner1'>
                        <a class="footer-font" href="home_before.do" aria-label="Product">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
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
    <!--  부트스트랩 js 사용 -->
    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
</html>