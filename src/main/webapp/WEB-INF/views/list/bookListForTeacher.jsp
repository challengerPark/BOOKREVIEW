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
<link href=resources/css/bookList.css rel="stylesheet">
<link href=resources/css/bookListForTeacher.css rel="stylesheet">

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/bookListForTeacher.js"></script>
<script src="resources/js/bookListForTeacherData.js"></script>
<script src="resources/js/bookListForTeacherSubmit.js"></script>


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

				<div id="article1to3">


					<div class="article1-1">
						<div id="keywrap">
							<div class="article1-2-1-tri"></div>
						</div>

						<h4>학생 독서록 확인</h4>
					</div>

					<div class="article1-2">
						<div class="article1-2-1">
							<div class="article1-2-1-1">
								<h5>검색조건</h5>
							</div>
							<div class="article1-2-1-2">
								<form action="list.re">
									<select name='checkNo' id="selectvalue">
										<option value="0">전체</option>
										<option value="2">확인완료</option>
										<option value="3">반려</option>
										<option value="1">확인전</option>
									</select>
									<button id="btn0">검색</button>
								</form>
							</div>
						</div>
					</div>

					<div class="article1-3">
						<div id="article1-3-1">
							<div id="article1-3-1-1">
								<div>
									<p class="fontstyle7">이름</p>
								</div>
								<div>
									<p class="fontstyle7">도서명</p>
								</div>
								<div>
									<p class="fontstyle7">제출날짜</p>
								</div>
								<div>
									<p class="fontstyle7">검사현황</p>
								</div>
							</div>

							<div id="article1-3-1-1-0">

								<c:forEach items="${list}" var="l">
									<a href="teacherDetail.me?reviewNo=${l.reviewNo}">
										<div class="article1-3-1-2 rewritebook">
											<div>
												<p class="fontstyle8">${l.memberName}</p>
											</div>
											<div>
												<p class="fontstyle8">${l.bookName}</p>
											</div>
											<div>
												<p class="fontstyle8">${l.reviewDate}</p>
											</div>
											<div>
												<c:choose>
	                    <c:when test="${l.checkNo == 1}">
	                    	<div><p class="fontstyle8" class="checkcolor" style="color:rgba(255,0,0,0.8); font-weight: 600">미확인</p></div>
	                    </c:when>
	                    <c:when test="${l.checkNo == 2}">
	                    	<div><p class="fontstyle8" class="checkcolor" style="color:rgba(0,0,255,0.8); font-weight: 600">확인</p></div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div><p class="fontstyle8" class="checkcolor" style="color:rgba(255,212,0,0.8); font-weight: 600" >반려</p></div>
	                    </c:otherwise>
	                    </c:choose>
											</div>
										</div>
									</a>
								</c:forEach>


							</div>
							<!--article1-3-1-1-0 END-->


							<div id="article1-3-1-page">
								<p class="fontstyle9">

									<!-- 페이지 start -->

									<c:if test="${page.startPage != 1}">
										<a href="list.re?page=${page.startPage - 1}&checkNo=${checkNo}">이전</a>
									</c:if>
									<!-- ok -->



									<c:forEach var="i" begin="${page.startPage}"
										end="${page.endPage}">

										<c:if test="${page.currentPage != i and i <= page.lastPage}">
											<a href="list.re?page=${i}&checkNo=${checkNo}">${i}</a> &nbsp</c:if>
										<c:if test="${page.currentPage == i and i <= page.lastPage}">${i} &nbsp</c:if>

									</c:forEach>



									<c:if test="${page.endPage < page.lastPage }">
										<a href="list.re?page=${page.endPage + 1}&checkNo=${checkNo}">다음</a>
									</c:if>
									<!-- ok -->
									<!-- 페이지 end -->

								</p>
							</div>
						</div>
						<!--article1-3-1END-->


					</div>
					<!--article1to3END-->
				</div>
				<!--aticle본문용 div입니다-->

			</div>
		</article>
	</div>
	<!--id="wrap" END-->
</body>

</html>