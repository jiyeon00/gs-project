<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- BootStrap -->
      <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- BootStrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
    header{margin-top: 5px;}
    .header-box1{border-bottom: 1px rgb(59, 57, 57) solid; padding-top: 13px;}
    .header-box2{padding-top: 30px;}
    section{background-color:rgb(224, 222, 222);}
    footer{border-top: white 1px solid; background-color:rgb(63, 71, 82);}
    
    /* header */
    .logo{font-weight: bold; text-decoration-line: none; font-size: 21px;}
    .main-font{font-weight: bold;}
    .nav-a{font-weight: bolder; text-decoration-line: none; font-size: 17px;}
    .logo-a{font-weight: bolder; text-decoration-line: none; }

    /* footer */
    .footer-list{font-size: 17px; color:white;}
    .footer-font{color: white; text-decoration-line: none; margin-left: 15px; font-size: 19px; }
    .footer-font:hover{color:white; font-size:20px;}
    #inner1{margin-top: 35px; margin-left: 15px;}
    #inner2{display: inline-block ; margin-top: 40px; float:right; font-size: 30px;}

    body{
        background-color: rgb(233, 233, 233);
    }
 
        #loginBtn{
            width: 50%;
            margin-left: 25%;
            height: 50px;
            border: rgb(97, 96, 96);
            line-height: 20px;
            color: rgb(237, 237, 237);
            background-color: rgb(44, 50, 58);
            font-size: 19px;
            font-weight: bold;
            font-family: '맑은고딕',Malgun Gothic,dotum,'돋음', arial, sans-serif;
        }


            /* section */
        .section-h2{color:rgb(66, 65, 65);}
        .section-a1{border-bottom: 0.5px solid rgb(66, 65, 65); text-decoration-line: none; color:rgb(66, 65, 65);padding-bottom: 3px;}
        .section-a1:hover{color:rgb(66, 65, 65);}

        .form-control{
            width: 50%;
            margin-left: 25%;
            height: 50px;
        }

        /* .forgot{
            display: inline-table;
            margin-left: 25%;
            margin-top: -0%;
        } */
        #fid{
            margin-left: 4%;
        }
        #fpw{
            margin-left: 8%;
        }
        #fjoin{
            margin-left: 8%;
        }



    .button1{color: rgb(100, 99, 99); 
        padding: 10px 30px 10px 30px; font-size: 18px; font-weight: bold;}
    .button1:hover{color: rgb(63, 62, 62); font-size: 19px;}
    



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

    <!-- section -->
    <section>
        <div class='container'>
            <div class='row row-1'>
                <div class='col-md-1'>
                </div>
                <div class='col-md-10'>
                    <br><br><br><br><br><br><br><br>
                    <h2 class='section-h2 text-center'><a class='section-a1'>LOGIN</a></h2>
                    <br><br>
                    <div class="table-responsive">
                        <form action="login.do" method="post">
                        	<table class="table">
	                            <tbody>
	                            <tr style="line-height:32px;">
	                                <td>
	                                    <input type="text" id="id" name ="id" class="form-control" placeholder="ID" required="required"/>
	                                </td>
	                            </tr>
	                            <tr>                           
	                                <td>
	                                    <input type="password" id="pw" name ="pw" required="required" placeholder="PW" class="form-control" />
	                                </td>
	                            </tr>
	                            <tr>
	                                <td>
	                                	  <button type="button submit" class="btn" id="loginBtn">LOGIN</button>
	                                </td>
	                            </tr>
	                            </tbody>
                        	</table>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="row row-2">
            <div class="col-md-4 col-sm-1 col-xs-1"></div>
            <div class="col-md-8 col-sm-11 col-xs-8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <button type="button" class="btn button1" onclick="location.href='findid.do'">아이디찾기</button>
                <button type="button" class="btn button1" onclick="location.href='findpw.do'">비밀번호찾기</button>
                <button type="button" class="btn button1" onclick="location.href='join_agree.do'">회원가입</button>
        </div>
        <br><br><br><br><br><br><br><br><br><br>
    </section>
      



        
    <!-- footer -->
    <footer>
        <div class="container footer">
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




</body>
</html>
