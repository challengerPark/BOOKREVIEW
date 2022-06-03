<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서검색</title>

  <link href=resources/css/reset.css rel="stylesheet">
  <link href=resources/css/common.css rel="stylesheet">
  <link href=resources/css/bookSearch.css rel="stylesheet">

  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
  <script src="resources/js/common.js"></script>
  <script src="resources/js/bookSearch.js"></script>
  <script src="resources/js/bookSearchFunction.js"></script>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
    integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>

<body>
  <div id="wrap">
    <div id="header">
      <a href="test_main1">
        <div id="header1">
          <h1>BookLi</h1>
        </div>
      </a>

      <div id="header2">
        <div id="header2-child">
          <a href="test_main1"><i class="fas fa-home" id="headericon-home"></i></a>
          <a href="#"><i class="fas fa-user-alt" id="headericon-user"></i></a>
          <a href="#"><i class="fas fa-book" id="headericon-book"></i></a>
          <a href="test_bookSearch"><i class="fas fa-search" id="headericon-search"></i></a>
        </div>
        <!--학생용 상단메뉴바-->

        <div id="header2-teacher">
          <a href="#"><i class="fas fa-home" id="headericon-home2"></i></a>
          <a href="#"><i class="fas fa-user-alt" id="headericon-user2"></i></a>
          <a href="#"><i class="fas fa-book" id="headericon-book2"></i></a>
        </div>
        <!--교사용 상단메뉴바 display:none-->

        <div id="header2-2">
          <i class="fas fa-bars"></i>
        </div>
      </div>
    </div>
    <!--header END-->

    <article id="article">
      <div class="innerwrap">

        <div id="article-menu">
          <div id="article-menu-child">
            <a href="test_main1">
              <p class="fontstyle4" id="icon-home">
                홈
              </p>
            </a>
            <a href="#">
              <p class="fontstyle4" id="icon-mypage">
                마이페이지
              </p>
            </a>
            <a href="#">
              <p class="fontstyle4" id="icon-booknote">
                독서록 일지
              </p>
            </a>
            <a href="test_bookSearch">
              <p class="fontstyle4" id="icon-search">
                독서 검색
              </p>
            </a>
          </div>

          <div id="article-menu-teacher">
            <a href="#">
              <p class="fontstyle4" id="icon-home2">
                홈
              </p>
            </a>
            <a href="#">
              <p class="fontstyle4" id="icon-mypage2">
                마이페이지
              </p>
            </a>
            <a href="#">
              <p class="fontstyle4" id="icon-booknote2">
                독서록 일지
              </p>
            </a>
            <a href="test_bookSearch">
              <p class="fontstyle4" id="icon-search2">
                독서 검색
              </p>
            </a>
          </div>
          <!--display:none-->
        </div>
        <!--header-menu END-->

        <div id="article0">
          <div id="article1">
            <div id="searchbox">
              <input type="search" name="booksearch" placeholder="도서검색" id="inputSearch" onkeyup="enterSearch()">
              <button id="searchBtn" onclick="clickSearch()"><i class="fas fa-search"></i></button>
            </div>
          </div>

          <div id="article2">
            <h2>이주의 도서</h2>

            
            <div id="article2-1">
            </div>
            <!--openAPI-->

            <a href="test_booknote">
            <div id="article2-2">
            </div><!--for search2-->
            </a>

          </div>

        </div>
    </article>
  </div>
  <!--id="wrap" END-->
</body>
</html>