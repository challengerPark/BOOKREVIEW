<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>

  <link href=resources/css/reset.css rel="stylesheet">
  <link href=resources/css/common.css rel="stylesheet">
  <link href=resources/css/mainForStudent.css rel="stylesheet">

  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
  <script src="resources/js/common.js"></script>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
    integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>

<body>
  <div id="wrap">
    <div id="header">
      <a href="test_main1"><div id="header1">
        <h1>BookLi</h1>
      </div></a>

      <div id="header2">
        <div id="header2-child">
          <a href="test_main1"><i class="fas fa-home" id="headericon-home"></i></a>
          <a href="#"><i class="fas fa-user-alt" id="headericon-user"></i></a>
          <a href="#"><i class="fas fa-book" id="headericon-book"></i></a>
          <a href="test_bookSearch"><i class="fas fa-search" id="headericon-search"></i></a>
        </div> <!--학생용 상단메뉴바-->

        <div id="header2-teacher">
          <a href="#"><i class="fas fa-home" id="headericon-home2"></i></a>
          <a href="#"><i class="fas fa-user-alt" id="headericon-user2"></i></a>
          <a href="#"><i class="fas fa-book" id="headericon-book2"></i></a>
        </div>  <!--교사용 상단메뉴바 display:none-->

        <div id="header2-2">
          <i class="fas fa-bars"></i>
        </div>    
      </div>
    </div>  <!--header END-->

    <article id="article">
      <div class="innerwrap">

        <div id="article-menu">
          <div id="article-menu-child">
            <a href="test_main1"><p class="fontstyle4" id="icon-home">
              홈
            </p></a>
            <a href="#"><p class="fontstyle4" id="icon-mypage">
              마이페이지
            </p></a>
            <a href="#"><p class="fontstyle4" id="icon-booknote">
              독서록 일지
            </p></a>
            <a href="test_bookSearch"><p class="fontstyle4" id="icon-search">
              독서 검색
            </p></a>
          </div>

          <div id="article-menu-teacher">
            <a href="#"><p class="fontstyle4" id="icon-home2">
              홈
            </p></a>
            <a href="#"><p class="fontstyle4" id="icon-mypage2">
              마이페이지
            </p></a>
            <a href="#"><p class="fontstyle4" id="icon-booknote2">
              독서록 일지
            </p></a>
            <a href="#"><p class="fontstyle4" id="icon-search2">
              독서 검색
            </p></a>
          </div>  <!--display:none-->
        </div>  <!--header-menu END-->  

          <div id="article1"> <!--본문시작-->
              <div id="article1-1">
                <div id="article1-1-1">
                  <div id="article1-1-1-1">
                    <div>
                      <i class="fas fa-user-alt" id="headericon-user"></i>
                    </div>   <!--for circle-->
                  </div>
                  <div id="article1-1-1-2">
                    <p class="fontstyle12"><c:out value="${loginMember.memberName }" />님</p>
                    <p class="fontstyle13"><c:out value="${loginMember.memberGrade }"/>학년 <c:out value="${loginMember.memberClass }"/>반</p>
                  </div>
                </div>
                <div id="article1-1-2">
                  <p class="fontstyle6">독서록 메뉴</p>
                  <p class="fontstyle7">새소식</p>
                  <a href="#"><p class="fontstyle7">내가 쓴 독서록</p></a>
                  <p class="fontstyle7">희망도서 신청하기</p>
                  <a href="test_bookSearch"><p class="fontstyle7">새 독서록 쓰러가기</p></a>
                </div>

                <div id="article1-1-3">
                  <p class="fontstyle6">내 정보 관리 메뉴</p>
                  <p class="fontstyle7">비밀번호 변경하기</p>
                  <p class="fontstyle7">내 정보 수정하기</p>
                </div>
              </div> <!--articla1-1-->

              <div id="article1-2">
                <div id="article1-2-1">
                  <p class="fontstyle8">나의 독서록 일지</p>
                </div>

                 <div id="article1-2-2">
                    <div class="article1-2-2-1">
                      <div class="article1-2-2-1-1">
                        <p class="fontstylebook">
                          <i class="fas fa-book-open"></i>
                        </p>
                      </div>
                    </div>

                    <div class="article1-2-2-1">
                      <div class="article1-2-2-1-1">
                        <p class="fontstylebook">
                          <i class="fas fa-book-open"></i>
                        </p>
                      </div>
                    </div>
                    
                    <div class="article1-2-2-1">
                      <div class="article1-2-2-1-1">
                        <p class="fontstylebook">
                          <i class="fas fa-book-open"></i>
                        </p>
                      </div>
                    </div>
                  </div>

                <div id="article1-2-3">
                  <a href="test_bookSearch"><button class="fontstyle7">새 독서록 작성하기</button></a>
                </div>
              </div> <!--ariticle1-2-->

              <div id="article1-3">
                <div id="article1-3-1">
                  <p class="fontstyle8">도서관 공지사항</p>
                  <div>
                    <p class="fontstyle9">
                       기능 추가예정
                    </p>
                    <p class="fontstyle9">
           db에있는 공지사항
                    </p>
                    <p class="fontstyle9">
                      받아서 써주기
                    </p>
                    <p class="fontstyle9">
                      현재 더미 데이터 
                    </p>
                  </div>
                </div>

                <div id="article1-3-2">
                  <p class="fontstyle8">도서관 신간도서</p>
                  <div id="article1-3-2-1">
                    <div class="articleBook">
                      <img src="https://bookthumb-phinf.pstatic.net/cover/223/617/22361722.jpg?type=m140&udate=20220507">
                      <p class="fontstyle12">2의 세계</p>
                      <p class="fontstyle13">고요한</p>
                    </div>

                    <div class="articleBook">
                      <img src="https://bookthumb-phinf.pstatic.net/cover/157/688/15768821.jpg?type=m140&udate=20200111">
                      <p class="fontstyle12">해리포터와 비밀의 방</p>
                      <p class="fontstyle13">조앤 K. 롤링</p>
                    </div>
                    
                    <div class="articleBook">
                      <img src="https://bookthumb-phinf.pstatic.net/cover/088/835/08883507.jpg?type=m140&udate=20210915">
                      <p class="fontstyle12">구의 증명</p>
                      <p class="fontstyle13">최진영</p>
                    </div>

                  </div>
                </div>
              </div> <!--ariticle1-2-->

          </div> <!--aticle본문용 div입니다-->
	
      </div>
    </article>
  </div>  <!--id="wrap" END-->
  <script>
  var value_list = "<c:out  value="${list} "/>";
  </script>
</body>
</html>

<!--페이지 중개용 임시 페이지입니다. 메인페이지 완성후 교체 예정-->