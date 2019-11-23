<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/css/mainheader.css">
  <link rel="stylesheet" href="/css/maincontents.css">
  <link rel="stylesheet" href="/css/mainhover.css">
  <link rel="stylesheet" href="/css/mainicon.css">
  <link rel="stylesheet" href="/css/mainmedia.css">
  <link rel="stylesheet" href="/css/mainfooter.css">

</head>

<body>


  <div class="container">
    <div class="header">
      <div id="hedertitle"><a href="#" id="title">PetCom</a></div>
    </div>
    <nav class="navbar navbar-expand-md">
      <a class="navbar-brand" href="#">PetCom</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03"
        aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">Community</a>
            <div class="dropdown-menu" aria-labelledby="dropdown03">
              <a class="dropdown-item" href="#">Picture</a>
              <a class="dropdown-item" href="#">Self Guide</a>
              <a class="dropdown-item" href="#">Event</a>
              <a class="dropdown-item" href="#">QnA</a>
            </div>
          </li>
          <li class="nav-item"> <a class="nav-link" href="#">Store</a></li>
          <li class="nav-item"> <a class="nav-link" href="#">Adopt</a></li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="#">Write</a></li>
          <li class="nav-item"> <a class="nav-link" href="/views/Login.jsp">Login</a></li>
          <li class="nav-item"> <a class="nav-link" href="#">Join</a></li>

        </ul>

        <form class="form-inline my-2 my-md-0">
          <input class="form-control" type="text" placeholder="Search">
        </form>
      </div>
    </nav>

    <div class="contents">

      <!-- contents1 -->
      <div id="mainimg">
        <div id="mainimg1">
          <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/img/main.jpg" alt="Los Angeles" style="width: 100%; height: 500px">
              </div>
              <div class="carousel-item">
                <img src="/img/main2.webp" alt="Chicago" style="width: 100%; height: 500px">
              </div>
              <div class="carousel-item">
                <img src="/img/main5.jpg" alt="New York" style="width: 100%; height: 500px">
              </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>

          </div>
        </div>
      </div>

      <!-- 아이콘으로 창내려서 해당항목 보기? -->
      <div class="mainicon">
        <div class="iconwrap">
          <div class="icon">
            <img src="/img/아이콘1-1.png">
          </div>

          <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" id="icon1"
            style="font-size: 20px; font-weight: 800;">Photo</button>

          <div class="iconcomment">
            <h6>Petcom's Story
              Happy Daily Life</h6>
          </div>

        </div>


        <div class="iconwrap">
            <div class="icon">
              <img src="/img/아이콘2-1.png">
            </div>
  
            <button type="button" class="btn btn-default" data-toggle="modal" 
            data-target="#myModal2" id="icon2" style="font-size: 20px; font-weight: 800;">KonwHow</button>
            <div class="iconcomment">
              <h6>Share small tips 
                and
                Share small happiness</h6>
            </div>
          </div>


          <div class="iconwrap">
              <div class="icon">
                <img src="/img/아이콘3-1.png">
              </div>
    
              <button type="button" class="btn btn-default" data-toggle="modal" 
              data-target="#myModal3" id="icon3" style="font-size: 20px; font-weight: 800;">Store</button>
              <div class="iconcomment">
               <h6> SHigh quality of Life with Good Merchandise</h6>
              </div>
            </div>

            <div class="iconwrap">
                <div class="icon">
                  <img src="/img/아이콘5-1.png">
                </div>
      
                <button type="button" class="btn btn-default" data-toggle="modal" 
                data-target="#myModal4" id="icon4" style="font-size: 20px; font-weight: 800;">QnA</button>
                <div class="iconcomment">
                  <h6>Get good Knowledge
                      by 
                      Answering Questions</h6>
                </div>
              </div>
      </div>



      <!-- contents2 icon1 모달창1 -->
      <div class="modal fade" id="myModal" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;PetCom Ranking</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID 좋아요수</div>
                        <!--텍스트-->
                        <img src="/img/maincontent2.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID 좋아요수</div>
                        <!--텍스트-->
                        <img src="/img/maincontent4.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID 좋아요수</div>
                        <!--텍스트-->
                        <img src="/img/maincontent7.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!-- contents2 icon2 모달창2 -->

      <div class="modal fade" id="myModal2" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;KonwHow</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent9.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent5 .jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent10.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!-- contents2 icon3 모달창3 -->


      <div class="modal fade" id="myModal3" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;Store</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/루시2.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/크리밍밍.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/크림아앙.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>


      <!--contents2 icon4 모달창4 -->
      <!--QnA-->
      <div class="modal fade" id="myModal4" style="z-index: 999999;">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">PetCom</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              <div class="mainranklist">
                <div>
                  <center><span style="font-size: 30px; font-weight: 800;">&nbsp;QnA</span></center>
                </div>
                <ul>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent3.jpg">
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent6.jpg">
                      </div>

                    </a>
                  </li>
                  <li>
                    <a href="">
                      <div class="screen">
                        <!--이미지들어갈곳-->
                        <div class="ranktop">글제목</div>
                        <!--텍스트-->
                        <div class="rankbottom">글쓴이ID</div>
                        <!--텍스트-->
                        <img src="/img/maincontent8.jpg">
                      </div>

                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"></button>
            </div>
          </div>
        </div>
      </div>

      <!--contents3-->
      <div class="maincontents3">
        <ul>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent1.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent2.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent3.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent4.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent5 .jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent6.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent7.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent8.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <span class="span1"></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent9.jpg">
              </div>
            </a>
          </li>
          <li>
            <a href="" id="knowatag">
              <div class="knowscreen2">
                <span></span><span></span><span></span><span></span>
                <div class="knowtop">제목</div>
                <div class="knowbottom">아이디</div>
                <img src="/img/maincontent10.jpg">
              </div>
            </a>
          </li>
        </ul>








      </div>
    </div>
    <div class="footer">

      <div style="margin-left: 5%; margin-top:3% ; height: 100%; ">
        <div style="font-size: 13px; font-weight: bolder; color: rgb(0, 0, 0);">CUSTOMER CENTER</div>
        <div style="font-size: 26px; font-weight: bolder; color: deepskyblue;">1544-7513</div>
        <div style="font-size: 12px;">평일 09:00-18:00(점심시간12:00-13:00/주말&공휴일제외)</div>

        <div style="font-size: 12px;">COMPANY. (주) 누리지기 E-MAIL nurijigi@naver.com TEL 1544-7513 ADDRESS. 서울특별시 영등포구 당산동
          BankInfo : 예금주 : (주) 누리지기 신한 110-413-898080 </div>
        <div style="font-size: 12px;">안전거래 서비스고객님의 안전거래를 위해 현금 결제 시, 저희 사이트에서 가입한 구매안전 서비스를 이용할 수 있습니다.</div>
        <div style="font-size: 10px;">Copyright © 2019 by nurijigi, Inc. All rights reserved</div>
      </div>

    </div>
  </div>

</body>

</html>