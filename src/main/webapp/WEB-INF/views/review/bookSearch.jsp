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
<div id="header">
    	<div id="header1">
     	 <a href="mainForStudent.me">
       		 <h1>BookLi</h1>
       	 </a>
      	</div>

     <div id="header2">
        <div id="header2-child">
          <a href="mainForStudent.me"><i class="fas fa-home" id="headericon-home"></i></a>
          <a href="studentReviewList.re"><i class="fas fa-book" id="headericon-book"></i></a>
          <a href="bookSearch"><i class="fas fa-search" id="headericon-search"></i></a>
          <a href="logout.me"><i class="fas fa-door-open"></i></a>
        </div> <!--학생용 상단메뉴바--> 
      </div>
    </div>  <!--header END-->

  <div id="wrap">
    <article id="article">
      <div class="innerwrap">

        <div id="article0">
          <div id="article1">
            <div id="searchbox">
              <input type="search" name="booksearch" placeholder="도서검색" id="inputSearch" onkeyup="enterSearch()">
              <button onclick="clickSearch()" id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
          </div>

          <div id="article2">
            <div id="bfSearch"><h2>이주의 도서</h2></div>

            
            <div id="article2-1">
            </div>
            <!--openAPI-->

            <a href="bookNote.re">
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