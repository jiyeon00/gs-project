<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입-약관동의</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- BootStrap -->
      <!-- 부트스트랩 css 사용 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!--  부트스트랩 js 사용 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
    .text{
        background-color: rgba(242, 242, 242, 0.953);
    }


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
                    <a class="nav-a nav-link" href="introduce-before.do">서비스 소개</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-a nav-link" href="notice-before.do">공지사항</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </header>
<section>
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
                            <th id="now_page">Step 01 약관동의</th>
                            <th class="page">Step 02 정보입력</th> 
                            <th class="page">Step 03 가입완료</th>
                        </tr>
                    </table>
                </div>

                <div class="col-sm-12 pt-3">

                    &nbsp;
                    <h4 id="step">
                        &nbsp;
                        <i class="fas fa-square"></i>
                        Step 01 약관동의
                    </h4>
                </div>


            <form action="join.do" method="get" id="form1">
                <div id="d1">

                    <h2 align="center"></h2><br/><br/>

                    <tr>
                        <td align="left" id="all_agree"><font size="2">&nbsp&nbsp&nbsp&nbsp&nbsp이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두 동의합니다.</font></td>
                        
                        <td><input type="checkbox" name="all" id="all"></td><hr/>
                        </tr>
                        <div id="accordion">
                            <h3><font size="2">추천발주 서비스 이용약관 동의 (필수) </font><input type="checkbox" name="c1" id="c1"/></h3>
                            <td><textarea readonly="readonly" rows="5" cols="66" class="text">이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
                            </textarea>
                            <h3><font size="2">개인정보 수집 및 이용에 대한 안내 (필수) </font><input type="checkbox" name="c2" id="c2"/></h3>
                            <div>
                                <textarea readonly="readonly" rows="5" cols="66" class="text">정보통신망법 규정에 따라 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
[수집하는 개인정보]       
이용자가 서비스를 이용하기 위해 회원가입을 할 경우, 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                            
                                </textarea>
                            </div>
                            <h3><font size="2">정보 수신 동의 (선택) </font><input type="checkbox" name="c3" id="c3"/></h3>
                            <div>
                                <textarea readonly="readonly" rows="5" cols="66" class="text">

다양한 정보를 휴대전화(알림 또는 문자), 이메일로 받아보실 수 있습니다.
                                </textarea>
                            </div>
                        </div>

                        <div align="center">
                            <br/>
                            <input type="submit" id="agree"  value="확인">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" id="home" onclick="location.href='home_before.do'" value="취소">
                            <p>&nbsp</p>
                            <p>&nbsp</p>
                            <br/>
                        </div>
                </div>
            </form>
        </div>
    </div>
</section>
            <script scr="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
            <script src="/js/bootstrap.min.js"></script>

            <!-- check Box 이벤트처리를 위한 Script -->
            <script>
            
            
            var doc = document; 
            var form1 = doc.getElementById('form1'); 
            var inputs = form1.getElementsByTagName('INPUT'); 
            var form1_data = {
            "c1": false,  //전체 선택
            "c2": false,  //필수 선택 1
            "c3": false   //필수 선택 2
            }; 
            
            var c1 = doc.getElementById('c1'); 
            var c2 = doc.getElementById('c2'); 
            var c3 = doc.getElementById('c3'); 
            
            function checkboxListener() {
            form1_data[this.name] = this.checked; //각각 자신의 checkBox를 Checked 상태로 바꿈 
            }
            
            
            c1.onclick = c2.onclick = c3.onclick = checkboxListener;   //c1, C2, C3를 checkBoxListenner를 호출하여
                                                                            //Checked로 바꿈
            var all = doc.getElementById('all');  //전체 체크를 위한 체크박스 선언
            
            all.onclick = function() {  //전체 체크를 누를 시
                if (this.checked) {
                setCheckbox(form1_data, true);   //form1_data(c1,c2,c3)의 값을 모두 Checked로 바꿈
                } else {
                setCheckbox(form1_data, false);  ////form1_data(c1,c2,c3)의 값을 모두 no checked로 바꿈
                }
            }; 
            
            
            function setCheckbox(obj, state) { //checkbox상태 변경하는 함수
                for (var x in obj) {
                obj[x] = state; 
            
                for(var i = 0; i < inputs.length; i++) {
                if(inputs[i].type == "checkbox") {
                inputs[i].checked = state; 
                }
                }
            
                }
            }
            
            form1.onsubmit = function(e) {
            e.preventDefault();
            
            if ( !form1_data['c1'] ) {
                alert('이용동의 약관에 동의하지 않았습니다.');  
                return false; 
            }
            
            if ( !form1_data['c2'] ) {
                alert('개인정보 수집 및 이용에 대한 안내를 동의하지 않았습니다.'); 
                return false; 
            }
            
            this.submit(); 
            }; 
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
                        <p class='footer-list'>CALL.010-9075-9954   |  E-mail. scy9809@naver.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div><br><br>
</footer>




</body>
</html>