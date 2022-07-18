<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입-정보입력</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- BootStrap -->
      <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
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

    /* agree */
    .title{
        color: rgb(55, 55, 55);
        font-size: 35px;
    }
    .title2{
        font-size: 15px;
    }
    #point{
        color: rgb(17, 89, 170);
     }
     #now_page{
            background-color: rgb(44, 50, 58);
            text-align: center;
            color: rgb(237, 237, 237);
        }

    #accordion{
        margin-left: 28%;
        font-size: smaller;
    }
    #form1{
        margin-left: 1%;
    }
    .page{
        text-align: center;
        }
    body{
        background-color: rgb(233, 233, 233);
    }
    .agree{
        width: 80%;
        margin-left: 10%;
        font-size: 15px;
    }
    #all_agree{
        margin-left: 5%;
    }
    .box{
        border: rgb(44, 50, 58);
    }
    .form-control{
        background-color: rgba(242, 242, 242, 0.953);
    }
    .box{
        border: 1px black solid; float:
    }
    </style>
    
</head>
<body>
    <header>
        <nav class="navbar navbar-light bg-light fixed-top">
          <div class="container">
            <a class="navbar-brand" href="home_before.do">
                '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-basket2-fill" viewBox="0 0 16 16">
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
                    <a class="nav-a nav-link" href="_before.do">공지사항</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
    </header>
    
    <section>
	<% request.setCharacterEncoding("UTF-8"); %>
        <div class="container">
            <div class="input-form-backgroud row agree"> 
                <div class="input-form col-lg-12 col-md-12 mx-auto">
                    <p>&nbsp</p>
                    <p>&nbsp</p>
                    <p>&nbsp</p>
                    <p>&nbsp</p>
                    <h1 class="title"><b>폐기 분석 서비스 신규 회원가입</b></h1>
                    <h6 class="title2">폐기 분석 서비스 회원가입을 환영합니다. </h6>
                    <h6 class="title2">해당 서비스에 가입하시면 <b id="point">예상 폐기금액 분석, 매출 분석, 고객 추이 분석</b> 등의 서비스를 제공 받으실 수 있습니다. </h6>
                    &nbsp;
    
                    <div class="table-responsive">
    
                        <table class="table table-hover table-bordered box">
                            <tr class="none">
                                <th class="page">Step 01 약관동의</th>
                                <th id="now_page">Step 02 정보입력</th> 
                                <th class="page">Step 03 가입완료</th>
                            </tr>
                        </table>
                    </div>
    
                    <div class="col-sm-12 pt-3">
    
                        &nbsp;
                        <h4 id="step">
                            &nbsp;
                            <i class="fas fa-square"></i>
                            Step 02 정보입력
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                               <form action="join.do" method="post">
									<p>
								      <label for ="id">아이디</label>
								      <input type ="text" id ="id" name="id" required="required"/> 
								      <button type="button" id="idCheck">아이디 확인</button>
								      <p class="alert" id="no-id-alert-danger" style="color:red">아이디를 입력해주세요.</p>
								      <p class="alert" id="id-alert-success" style="color:blue">사용 가능한 아이디 입니다.</p>
								      <p class="alert" id="id-alert-danger" style="color:red">중복된 아이디입니다.</p>
								   </p>
									<p>
								      <label for ="pw">비밀번호</label>
								      <input type ="password" id ="pw" name="pw"/>
								   </p>
								   
								   <p>
								      <label for ="pw2">비밀번호 확인</label>
								      <input type ="password" id ="pw2" name="pw2"/>
								      <button type="button" id="pwCheck">비밀번호 확인</button>
									  <p class="alert" id="no-pw-alert-danger" style="color:red">비밀번호를 입력해주세요.</p>
								      <p class="alert" id="pw-alert-success" style="color:blue">비밀번호 일치합니다.</p>
								      <p class="alertr" id="pw-alert-danger" style="color:red">비밀번호가 일치하지 않습니다.</p>
								        
								   </p>
								   
								   <p>
								      <label for ="name">이름</label>
								      <input type ="text" id ="name" name="name"/>
								   </p>
								   
								   <p>
								      <label for ="phone">전화번호</label>
								      <input type ="text" id ="phone" name="phone"/>
								   </p>
								   
								   <p>
								      <label for ="email">이메일</label>
								      <input type ="text" id ="email" name="email"/>
								      <button type="button" id="emailCheck">이메일 확인</button>
								      <p class="alert" id="no-email-alert-danger" style="color:red">이메일을 입력해주세요.</p>
								      <p class="alert" id="email-alert-success" style="color:blue">사용가능한 이메일입니다.</p>
								      <p class="alert" id="email-alert-danger" style="color:red">이미 회원가입 된 이메일입니다.</p>
								      
								   </p>
								   
								   <p>
								      <label for ="home">점포명</label>
								      <input type ="text" id ="home" name="home"/>
								   </p>
								   
								   <p>
								      <label for ="homenumber">사업자번호</label>
								      <input type ="text" id ="homenumber" name="homenumber"/>
								      <button type="button" id="homenumberCheck">사업자번호 확인</button>
								      <p class="alert" id="no-homenumber-alert-danger" style="color:red">사업자번호를 입력해주세요.</p>
								      <p class="alert " id="homenumber-alert-success" style="color:blue">사용가능한 사업자번호입니다.</p>
								      <p class="alert" id="homenumber-alert-danger" style="color:red">이미 회원가입 된 사업자번호입니다.</p>
								   </p>
								   
								   <button class="btn btn-success" type="submit" id="submit">회원가입</button>
								</form>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
     
        <div align="center">
            <br/>
          
            <br/>
           </div>
        </div>
        <p>&nbsp</p>
        <p>&nbsp</p>
    </section>
    
       <script type="text/javascript">
		 $(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/login";		    
			})
			$("#submit").on("click", function(){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
				if($("#pw2").val()==""){
					alert("비밀번호 확인을 입력해주세요.");
					$("#pw2").focus();
					return false;
				}
				if($("#name").val()==""){
					alert("이름을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#email").focus();
					return false;
				}
				if($("#home").val()==""){
					alert("점포명을 입력해주세요.");
					$("#home").focus();
					return false;
				}
				if($("#homenumber").val()==""){
					alert("사업자 등록번호을 입력해주세요.");
					$("#homenumber").focus();
					return false;
				}
			});
		})
	//id 중복 확인
      $(function(){
         $("#no-id-alert-danger").hide();
         $("#id-alert-success").hide();
         $("#id-alert-danger").hide();
         $("#idCheck").click(function(){
            $.ajax({
               type:'GET',
               data: {"id" : $("#id").val()},
               url: "getUserById.do",
               success : function(data){
                  console.log(data);
                  var id=$("id").val();
                if($("#id").val()==""){
  					alert("id를 입력해주세요.");
                } else if(data =='0'){
                   $("#no-id-alert-danger").hide();
                   $("#id-alert-success").show();
                   $("#id-alert-danger").hide();
                } else if(data =='1'){
                   $("#no-id-alert-danger").hide();
                   $("#id-alert-success").hide();
                   $("#id-alert-danger").show();
                }
               }
            })
         })
      });
	//pw 중복 확인
	 $(function(){
		  $("#no-pw-alert-danger").hide();
		 $("#pw-alert-success").hide();
	     $("#pw-alert-danger").hide();
         $("#pwCheck").click(function(){
        		if($("#pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pw").focus();
					return false;
				}
        		else if($("#pw2").val()==""){
					alert("비밀번호 확인을 입력해주세요.");
					$("#pw2").focus();
					return false;
				}
        		else if($("#pw").val()==$("#pw2").val()){
                	alert("비밀번호가 일치합니다.");
					$("#pw2").focus();
					return false;
     			}else{
     				alert("비밀번호가 일치하지 않습니다.");
					$("#pw2").focus();
					return false;
     			}               
          })
	 });
	//이메일 중복확인
	 $(function(){
		  $("#no-email-alert-danger").hide();
         $("#email-alert-success").hide();
         $("#email-alert-danger").hide();
         $("#emailCheck").click(function(){
            $.ajax({
               type:'GET',
               data: {"email" : $("#email").val()},
               url: "getUserEmail.do",
               success : function(data){
                  console.log(data);
                  var email=$("email").val();
                if($("#email").val()==""){
  					alert("이메일을 입력해주세요.");
                } else if(data =='0'){
                   $("#email-alert-success").show();
                   $("#email-alert-danger").hide();
                } else if(data =='1'){
                   $("#email-alert-success").hide();
                   $("#email-alert-danger").show();
                }
               }
            })
         })
      });
	// 사업자번호 중복 확인
	 $(function(){
		 $("#no-homenumber-alert-danger").hide();
         $("#homenumber-alert-success").hide();
         $("#homenumber-alert-danger").hide();
         $("#homenumberCheck").click(function(){
            $.ajax({
               type:'GET',
               data: {"homenumber" : $("#homenumber").val()},
               url: "getUserByHomenumber.do",
               success : function(data){
                  console.log(data);
                  var email=$("homenumber").val();
                  if($("#homenumber").val()==""){
    					alert("사업자번호를 입력해주세요.");
                   } else if(data =='0'){
                      $("#homenumber-alert-success").show();
                      $("#homenumber-alert-danger").hide();
                   } else if(data =='1'){
                      $("#homenumber-alert-success").hide();
                      $("#homenumber-alert-danger").show();
                   }
               }
            })
         })
      });
   </script>

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

    <script scr="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    
</body>
</html>