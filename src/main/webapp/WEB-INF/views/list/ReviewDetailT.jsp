
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>교사 독서록목록</title>

<link href=resources/css/reset.css rel="stylesheet">
<link href=resources/css/common.css rel="stylesheet">
<link href=resources/css/bookListForTeacher.css rel="stylesheet">
<link href=resources/css/ReviewDetail.css rel="stylesheet">

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
<script src="resources/js/common.js"></script>


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

</head>
<body>
<div id="header">
    	<div id="header1">
     	 <a href="mainForTeacher.me">
       		 <h1>BookLi</h1>
       	 </a>
      	</div>
      
     <div id="header2">
        <div id="header2-child">
          <a href="mainForTeacher.me"><i class="fas fa-home" id="headericon-home"></i></a>
          <a href="list.re"><i class="fas fa-book" id="headericon-book"></i></a>
          <a href="logout.me"><i class="fas fa-door-open"></i></a>
        </div> <!--학생용 상단메뉴바--> 
      </div>
    </div>  <!--header END-->

	<div id="wrap">


		<article id="article">
		<div class="innerwrap">
			<div class="article1">
				<div id="article1-4">
					<p class="fontstyle12"
						style="display: block; margin: 45px; text-align: center; font-size: 3rem;">
						${list.memberName}
						학생의 독서기록
					</p>
					<div id="article1-4-1">

						<div id="booknote2">
							<p class="fontstyle15">
								${list.reviewTitle}
							</p>
						</div>

						<div id="booknote3">
							<div class="notesubject2">
								<p class="fontstyle1">1. 감명 깊었던 점 5가지</p>
							</div>
						</div>

						<div id="booknote6">
							<p class="fontstyle15">
								${importent[0]}
							</p>
						</div>
						<div id="booknote6">
							<p class="fontstyle15">
								${importent[1]}
							</p>
						</div><div id="booknote6">
							<p class="fontstyle15">
								${importent[2]}
							</p>
						</div>
						<div id="booknote6">
							<p class="fontstyle15">
								${importent[3]}
							</p>
						</div>
						<div id="booknote6">
							<p class="fontstyle15">
								${importent[4]}
							</p>
						</div>
						
						<div id="booknote5">
							<div class="notesubject2">
								<p class="fontstyle1">2. 줄거리</p>
							</div>
						</div>

						<div id="booknote6">
							<textarea readonly class="fontstyle15">${list.reviewContent}</textarea>
						</div>

						<div id="booknote7">
							<div class="notesubject2">
								<p class="fontstyle1">3. 느낀점</p>
							</div>
						</div>

						<div id="booknote8">
							<textarea readonly  class="fontstyle15">${list.reviewFeel}</textarea>
						</div>
						<div id="booknote9">
							<a href="list.re"><button class="btn1">검사취소</button></a>

							<a href="teacherUpdate.me?checkNo=3&reviewNo=${list.reviewNo}"><button class="btn2">반려</button></a>

							<a href="teacherUpdate.me?checkNo=2&reviewNo=${list.reviewNo}"><button class="btn3">확인</button></a>

						</div>
					</div>
					<!--article1-4-1END-->


					<div id="article1-4-2">
						<div>
							<img src="<c:out value="${list.bookImg}"/>">
						</div>
						<div>
							<P class="fontstyle12">
								<c:out value="${list.bookName}" />
							</P>
							<P class="fontstyle10">
								작가:
								<c:out value="${list.bookWriter}" />
							</P>
							<P class="fontstyle10">
								제출일 :
								<c:out value="${list.reviewDate}" />
							</P>
						</div>
					</div>
					<!--article1-4-2END-->
				</div>
				<!--article1-4END-->

			</div>
			<!--aticle본문용 div입니다-->

		</div>
		</article>
	</div>
	<!--id="wrap" END-->
</body>

</html>