<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title> ​
<!-- bootstrap 라이브러리 등록 - CDN 방식 : sitemesh에서 decorator.jsp에서 한꺼번에 해결-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

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
    
    .find{
        margin-left: 39%;
    }



</style>
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").on("click", function(){
				if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
				if($("#pw1").val()==""){
					alert("비밀번호 확인을 입력해주세요.");
					$("#pw1").focus();
					return false;
				}
				if($("#pw1").val() != $("#pw").val()){
					alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
				}
			});
		})
	</script>
 <!-- header -->
    <header>
        <nav class="navbar navbar-light bg-light fixed-top">
          <div class="container">
            <a class="navbar-brand" href="main-before.html">
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
                    <a class="nav-a nav-link active" aria-current="page" href="main-before.html">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="login.html">LOGIN</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="join_agree.html">JOIN</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="login.html">내 점포 분석</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="login.html">Service</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="introduce-before.html">서비스 소개</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="notice-before.html">공지사항</a>
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
                    <h2 class='section-h2 text-center'><a class='section-a1'>비밀번호 변경</a></h2>
                    <br><br>
                    <div class="table-responsive">
                    	<form action="findpw_change.do" method="post">
	                        <table class="table">
	                            <tbody>
	                            <tr>                           
	                                <td>
	                                    <input type="text" name="id" class="form-control" id="id" placeholder="아이디">
	                                </td>
	                            </tr>
	                            <tr style="line-height:32px;">
	                                <td>
	                                    <input type="password" name="pw" class="form-control" id="pw" placeholder="새 비밀번호">
	                                </td>
	                            </tr>
	                            <tr>                           
	                              <td>
	                                  <input type="password" name="pw1" class="form-control" id="pw1" placeholder="새 비밀번호 확인">
	                              </td>
	                            </tr>
	                            <tr>
	                                <td>
	                                    <button type="button submit" class="btn" id="loginBtn">확인</button>
	                                </td>
	                            </tr>
	                            </tbody>
	                        </table>
                    	</form>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="container-fluid find">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4">

                <button type="button" class="btn button1" onclick="location.href='login.html'">로그인</button>
                <button type="button" class="btn button1" onclick="location.href='findId.html'">아이디찾기</button>
                <button type="button" class="btn button1" onclick="location.href='join_agree.html'">회원가입</button>
            </div>


        </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br>
        
    </section>

	 <!-- footer -->
    <footer>
        <div class="container footer">
            <div class="row">
                <div class="col-md-7 col-sm-7 col-xs-7">
                    <div id='inner1'>
                        <a class="footer-font" href="main-before.html" aria-label="Product">
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