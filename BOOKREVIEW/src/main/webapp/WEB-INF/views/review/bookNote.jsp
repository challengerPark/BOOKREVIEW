<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>독서록</title>

  <link href=resources/css/reset.css rel="stylesheet">
  <link href=resources/css/common.css rel="stylesheet">
  <link href=resources/css/bookNote.css rel="stylesheet">

  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
  <script src="resources/js/common.js"></script>
  <script src="resources/js/bookSearch.js"></script>
  <script src="resources/js/bookSearchFunction.js"></script>
  <script src="resources/js/bookNote.js"></script>
  <script src="resources/js/bookNoteData.js"></script>

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

          <div id="article_booknote">

              <h2>독 서 록</h2>
              <div id="booknote1">
                <div id="booknote1-1">
                  <img src="resources/img/1.jpg" name="noteimg" id="bookThumnail">
                </div>

                <div id="booknote1-2">
                  <div>
                    <div class="notesubject">
                      <p class="fontstyle1">도서명</p>
                    </div>
                    <div class="notedb fontstyle2" id="notedb_bookname">
                      <p class="fontstyle2" id="booktitle">db</p>
                    </div>
                  </div>  <!--1단END-->

                  <div>
                    <div class="notesubject">
                      <p class="fontstyle1">작가</p>
                    </div>
                    <div class="notedb fontstyle2" id="notedb_authors">
                      <p class="fontstyle2" id="bookauthor">db</p>
                    </div>
                    <div class="notesubject">
                      <p class="fontstyle1">작성일</p>
                    </div>
                    <div class="notedb" >
                      <p id="noteDate" class="fontstyle2" id="uploaddate">db</p>
                    </div>
                  </div> <!--2단END-->

                  <div>
                    <div class="notesubject">
                      <p class="fontstyle1">학적</p>
                    </div>
                    <div class="notedb">
                      <p class="fontstyle2" id="userinform"><c:out value="${loginMember.memberGrade }"/>학년 <c:out value="${loginMember.memberClass }"/>반</p>
                    </div>
                    <div class="notesubject">
                      <p class="fontstyle1">이름</p>
                    </div>
                    <div class="notedb">
                      <p class="fontstyle2" id="username"><c:out value="${loginMember.memberName }" /></p>
                    </div>
                  </div> <!--3단END-->
                </div>
              </div>

              <div id="booknote2">
                <input type="text" maxlength='70' autofocus id="noteTitle" name="noteTitle" placeholder="독서록 제목을 입력해 주세요.">
              </div>

              <div id="booknote3">
                <div class="notesubject2">
                  <p class="fontstyle1">1. 감명 깊었던 점 5가지</p>
                </div>
              </div>

              <div id="booknote4">
                <input type="text" maxlength='70' id="noteOpinion1" name="noteOpinion1" placeholder="감명 깊었던 점1">
                <input type="text" maxlength='70' id="noteOpinion2" name="noteOpinion2" placeholder="감명 깊었던 점2">
                <input type="text" maxlength='70' id="noteOpinion3" name="noteOpinion3" placeholder="감명 깊었던 점3">
                <input type="text" maxlength='70' id="noteOpinion4" name="noteOpinion4" placeholder="감명 깊었던 점4">
                <input type="text" maxlength='70' id="noteOpinion5" name="noteOpinion5" placeholder="감명 깊었던 점5">
              </div>

              <div id="booknote5">
                <div class="notesubject2">
                  <p class="fontstyle1">2. 줄거리</p>
                </div>
              </div>

              <div id="booknote6">
                <textarea id="noteSynop" name="noteSynop" placeholder="5줄 이내로 작성해 주세요."></textarea>
              </div>

              <div id="booknote7">
                <div class="notesubject2">
                  <p class="fontstyle1">3. 느낀점</p>
                </div>
              </div>

              <div id="booknote8">
                <textarea id="noteFree" name="noteFree" placeholder="자유형식으로 작성해주세요."></textarea>
              </div>

              <div id="booknote9">
                <a href="bookSearch.html"><button class="btn1">작성취소</button></a>

                <a href="#"><button class="btn2" onclick='submitnote()'>제출하기</button></a>
              </div>

          </div> <!--aticle본문용 div입니다-->

      </div>
    </article>
  </div>  <!--id="wrap" END-->

  
</body>
</html>