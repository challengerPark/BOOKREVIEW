
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생 독서록목록</title>

<link href=resources/css/reset.css rel="stylesheet">
<link href=resources/css/common.css rel="stylesheet">
<link href=resources/css/bookListForTeacher.css rel="stylesheet">
<link href=resources/css/ReviewDetail.css rel="stylesheet">

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/bookListForStudentSubmit.js"></script>


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">

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
					<a href="mainForStudent.me">
					<i class="fas fa-home"id="headericon-home"></i>
					</a> 
					<a href="studentReviewList.re">
					<i class="fas fa-book" id="headericon-book"></i>
					</a>
					 <a href="bookSearch">
					 <i class="fas fa-search" id="headericon-search"></i>
					 </a> 
					 <a href="logout.me"><i class="fas fa-door-open"></i>
					 </a>
				</div>
				<!--학생용 상단메뉴바-->
			</div>
		</div>
		<!--header END-->

	<div id="wrap">
		<article id="article">
		<div class="innerwrap">
			<div class="article1">
				<div id="article1-4">
				<p style="display: none;" id="checkNum">${review.checkNo}</p>
				<p style="display: none;" id="reviewNum">${review.reviewNo}</p>
					<p class="fontstyle12"
						style="display: block; margin: 45px; text-align: center; font-size: 3rem;">
						나의 독서록 수정페이지
					</p>
					<div id="article1-4-1">

						<div id="booknote2">
							<input id="noteTitle" readonly type="text" name="reviewTitle" class="fontstyle15" value="${review.reviewTitle}">
						</div>

						<div id="booknote3">
							<div class="notesubject2">
								<p class="fontstyle1">1. 감명 깊었던 점 5가지</p>
							</div>
						</div>
						
						<div id="booknote6">
							<input id="noteOpinion1" value="${reviewImportent[0]}" readonly type="text" class="fontstyle15">
						</div>
						<div id="booknote6">
							<input id="noteOpinion2" value="${reviewImportent[1]}" readonly type="text" class="fontstyle15">
						</div><div id="booknote6">
							<input id="noteOpinion3" value="${reviewImportent[2]}" readonly type="text" class="fontstyle15">
						</div>
						<div id="booknote6">
							<input id="noteOpinion4" value="${reviewImportent[3]}" readonly type="text" class="fontstyle15">
						</div>
						<div id="booknote6">
							<input id="noteOpinion5" value="${reviewImportent[4]}" readonly type="text" class="fontstyle15">
						</div>
						

						<div id="booknote5">
							<div class="notesubject2">
								<p class="fontstyle1">2. 줄거리</p>
							</div>
						</div>

						<div id="booknote6">
							<textarea id="noteSynop" readonly style="resize:none;" class="fontstyle15">${review.reviewContent}</textarea>
						</div>

						<div id="booknote7">
							<div class="notesubject2">
								<p class="fontstyle1">3. 느낀점</p>
							</div>
						</div>

						<div id="booknote8">
							<textarea id="noteFree"  readonly class="fontstyle15">${review.reviewFeel}</textarea>
						</div>
						<div id="booknote9">
							<a href="studentReviewList.re"><button class="btn1">이전으로</button></a>

							<input type="button" value="수정모드 전환" class="btn2" onclick='editMode()'></button>

							<input style="display: none;"  id="btn3" type="button" value="수정하기" class="btn3" onclick='submitnote()'>
						</div>
					</div>
					<!--article1-4-1END-->


					<div id="article1-4-2">
						<div>
							<img src="<c:out value="${review.bookImg}"/>">
						</div>
						<div>
							<P class="fontstyle12">
								<c:out value="${review.bookName}" />
							</P>
							<P class="fontstyle10">
								작가:
								<c:out value="${review.bookWriter}" />
							</P>
							<P class="fontstyle10">
								제출일 :
								<fmt:formatDate pattern="yyyy-MM-dd" value="${review.reviewDate}"/>
							</P>
								<P class="fontstyle10">
								선생님 확인:
								<c:out value="${review.checkNo}" />
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