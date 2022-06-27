<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>독서록목록</title>

<link href=resources/css/reset.css rel="stylesheet">
<link href=resources/css/common.css rel="stylesheet">
<link href=resources/css/bookList.css rel="stylesheet">

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/bookListForStudent.js"></script>
<script src="resources/js/bookListForStudentData.js"></script>
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

				<div id="article1to3">

					<div class="article1-1">
						<div id="keywrap">
							<div class="article1-2-1-tri"></div>
						</div>

						<h4>내가 쓴 독서록</h4>
					</div>

					<div class="article1-2">
						<div class="article1-2-1">
							<div class="article1-2-1-1">
								<h5>검색조건</h5>
							</div>
							<div class="article1-2-1-2">
								<form action="studentReviewList.re">
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
									<p class="fontstyle7">독서록 제목</p>
								</div>
								<div>
									<p class="fontstyle7">도서명</p>
								</div>
								<div>
									<p class="fontstyle7">작가</p>
								</div>
								<div>
									<p class="fontstyle7">출판사</p>
								</div>
								<div>
									<p class="fontstyle7">제출날짜</p>
								</div>
								<div>
									<p class="fontstyle7">검사현황</p>
								</div>
							</div>

							<div id="article1-3-1-1-0">
							
								<c:forEach items="${list }" var="l">
								<a href="changeReviewForm.re?reviewNo=${l.reviewNo}">
									<div class="article1-3-1-2 rewritebook">
										<div>
											<p class="fontstyle8">
												<c:out value="${l.reviewTitle} " />
											</p>
										</div>
										<div>
											<p class="fontstyle8">
												<c:out value="${l.bookName} " />
											</p>
										</div>
										<div>
											<p class="fontstyle8">
												<c:out value="${l.bookWriter} " />
											</p>
										</div>
										<div>
											<p class="fontstyle8">
												<c:out value="${l.bookCompany} " />
											</p>
										</div>
										<div>
											<p class="fontstyle8">
												<fmt:formatDate pattern="yyyy-MM-dd" value="${l.reviewDate}" />
											</p>
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
								
									<c:if test="${!empty list }">
										<div id="paging-area">
											<div id="paging">
											<p class="fontstyle9">
												<c:if test="${pv.startPage != 1}">
													<a href="studentReviewList.re?checkNo=${checkNo}&currentPage=${pv.startPage - 1}">이전</a>
												</c:if>

												<c:forEach var="p" begin="${pv.startPage }"
													end="${pv.endPage }" step="1">
													<c:if test="${pv.currentPage != p and p <= pv.lastPage}">
														<a href="studentReviewList.re?checkNo=${checkNo}&currentPage=${p}">${p}</a> &nbsp
											</c:if>
													<c:if test="${pv.currentPage == p and p <= pv.lastPage}"> ${p} &nbsp </c:if>
												</c:forEach>

												<c:if test="${pv.endPage < pv.lastPage }">
													<a href="studentReviewList.re?checkNo=${checkNo}&currentPage=${pv.endPage + 1}">다음</a>
												</c:if>
													</p>
											</div>
										</div>
									</c:if>
							
							</div>
						</div>
						<!--article1-3-1END-->
					</div>
					<!--article1to3 END-->
				</div>
				<!--aticle본문용 div입니다-->

			</div>
		</article>
	</div>
	<!--id="wrap" END-->
</body>

</html>
</html>