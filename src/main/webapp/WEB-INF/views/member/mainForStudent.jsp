<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href=resources/css/reset.css rel="stylesheet">
<link href=resources/css/common.css rel="stylesheet">
<link href=resources/css/mainForStudent.css rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/pwChanger.js"></script>
<script src="resources/js/slide.js"></script>
<script src="resources/js/noticeSelect.js"></script>
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
		<div style="width: 100% !important;" class="innerwrap">
			<div id="article1">
				<!--본문시작-->
				<div id="article1-1">
					<div id="article1-1-1">
						<div id="article1-1-1-1">
							<div>
								<i class="fas fa-user-alt" id="headericon-user"></i>
							</div>
							<!--for circle-->
						</div>
						<div id="article1-1-1-2">
							<p class="fontstyle12">
								<c:out value="${loginMember.memberName}" />
								님
							</p>
							<p class="fontstyle13">
								<c:out value="${loginMember.memberGrade}" />
								학년
								<c:out value="${loginMember.memberClass}" />
								반
							</p>
						</div>
					</div>
					<div id="article1-1-2">
						<p class="fontstyle6">독서록 메뉴</p>
						<p style="color:red;" class="fontstyle7">
							총
							<c:out value="${newInp}" />
							개의 확인할 소식
						</p>
						<br> <a href="studentReviewList.re"><p class="fontstyle7">내가
								쓴 독서록</p></a> <a href="bookSearch"><p class="fontstyle7">새 독서록
								쓰러가기</p></a>
					</div>

					<div id="article1-1-3">
						<p class="fontstyle6">내 정보 관리 메뉴</p>
						<p data-bs-toggle="modal" data-bs-target="#Test_Modal"
							class="fontstyle7">비밀번호 변경하기</p>
					</div>
					<div id="articla1-1-4">
			
					</div>

					<div class="modal fade" id="Test_Modal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">사용자 비밀번호 변경</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<p style="text-align: center;" class="fontstyle6">비밀번호 변경</p>

									<label style="width: 100%; font-size: 1.5rem;"
										for="inputPassword" class="col-sm-2 col-form-label">변경할
										비밀번호</label>
									<div class="col-sm-10">
										<input onkeyup="chkCharCode(event)"
											placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20'
											type="password" class="form-control" id="pwCheck">
									</div>

									<label style="width: 100%; font-size: 1.5rem;"
										for="inputPassword" class="col-sm-2 col-form-label">비밀번호
										확인</label>
									<div class="col-sm-10">
										<small style="display: none; color: red; margin-top: 5px;"
											id="pwd_same">비밀번호가 일치하지 않습니다.</small> <input
											onkeyup="chkCharCode(event)"
											placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20'
											type="password" class="form-control" id="pwRecheck">
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" id="modal_Close"
										class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									<button type="button" id="Change_pw" class="btn btn-primary">변경하기</button>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!--articla1-1-->

				<div id="article1-2">
					<div id="article1-2-1">
						<p class="fontstyle8">나의 최근 독서록 일지 카드</p>
						<a class='goReviewlist' href="studentReviewList.re"> 이전 독서록 목록
							<i class="fas fa-arrow-alt-circle-right"></i>
						</a>
					</div>
					<div id="article1-2-2">
						<!--    private int reviewNo;
					private String reviewTitle;
					private String reviewImportent;
					private String reviewContent;
					private String reviewFeel;
					private Date reviewDate;
					private String bookImg;
					private String bookName;
					private String bookWriter;
					private String bookCompany;
					private int checkNo;
					.
					
					private int memberNo;           -->
						<c:forEach var="l" items="${list}" begin="0" end="2">

							<div class="card-inner">

								<div class="book-thumbnail">
									<img class="my-Book" src="${l.bookImg}">
								</div>

								<div class="book-info">
									<p id='shortTitle' class='bookTitle'>${l.bookName}</p>
									<p class='bookWiter'>${l.bookWriter}</p>
									<p class='bookWiter'>
										<fmt:formatDate pattern="yyyy-MM-dd" value="${l.reviewDate}" />
									</p>
								</div>

							</div>
						</c:forEach>
					</div>


					<div id="article1-2-3">
						<a href="bookSearch"><button class="fontstyle7">새 독서록
								작성하기</button></a>
					</div>
				</div>
				<!--ariticle1-2-->

				<div id="article1-3">
					<div id="article1-3-1">
						<p class="fontstyle8">도서관 공지사항</p>
						<div>
							<c:forEach items="${nlist }" var="n" begin="0" end="4" step="1">
								<p id="${n.noticeNo }" data-bs-toggle="modal"
									data-bs-target="#Test_notice" onclick="noticeSelect(this);"
									class="fontstyle9 noticejh">${n.noticeTitle }</p>
							</c:forEach>
						</div>
					</div>

					<div id="article1-3-2">
						<p class="fontstyle8">도서관 신간도서</p>
						<div id="article1-3-2-1">
							<a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/223/617/22361722.jpg?type=m140&udate=20220507">
									<p class="fontstyle12 selectbooktitle">2의 세계</p>
									<p class="fontstyle13 selectbookauthor">고요한</p>
									<p class="fontstyle13 selectbookpublisher">&(앤드)</p>
									<p class="fontstyleOpcity0 selectbookcontents">“이 세상에는 우리가
										모르는 또 다른 세계가 있어” 고요한, 권여름, 김혜나, 류시은, 박생강, 서유미, 조수경 일곱 명의 작가가
										열어 보인 신비로운 삶의 단면들</p>
								</div>
							</a> <a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/157/688/15768821.jpg?type=m140&udate=20200111">
									<p class="fontstyle12 selectbooktitle">해리포터와 비밀의 방</p>
									<p class="fontstyle13 selectbookauthor">조앤 K. 롤링</p>
									<p class="fontstyle13 selectbookpublisher">문학수첩</p>
									<p class="fontstyleOpcity0 selectbookcontents">해리 포터 세대의,
										해리 포터 세대를 위한, 해리 포터 세대에 의한 새 번역! ‘21세기 대표 아이콘’에 걸맞은 완성도 높은
										작품으로 재탄생하다!</p>
								</div>
							</a> <a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/088/835/08883507.jpg?type=m140&udate=20210915">
									<p class="fontstyle12 selectbooktitle">구의 증명</p>
									<p class="fontstyle13 selectbookauthor">최진영</p>
									<p class="fontstyle13 selectbookpublisher">은행나무</p>
									<p class="fontstyleOpcity0 selectbookcontents">누군가의 삶 한가운데
										놓인 지독한 사랑! 젊은 감성을 위한 테이크아웃 소설 시리즈 「은행나무 노벨라」 제7권 『구의 증명』. 도서출판
										은행나무에서 200자 원고지 300매~400매 분량으로 한두 시간이면 읽을 수 있을 만큼 속도감 있고 날렵하며
										트렌드에 민감한 젊은 독자들을 대상으로 한 형식과 스타일을 콘셉트로 한 작품들을 선보인다.</p>
								</div>
							</a> <a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/211/796/21179658.jpg?udate=20220608">
									<p class="fontstyle12 selectbooktitle">이어령의 마지막 수업</p>
									<p class="fontstyle13 selectbookauthor">이어령</p>
									<p class="fontstyle13 selectbookpublisher">열림원</p>
									<p class="fontstyleOpcity0 selectbookcontents">시대의 지성 이어령과
										‘인터스텔라’ 김지수의 ‘라스트 인터뷰’ 삶과 죽음에 대한 마지막 인생 수업 이 시대의 대표지성 이어령이
										마지막으로 들려주는 삶과 죽음에 대한 가장 지혜로운 이야기가 담긴 책이다. 오랜 암 투병으로 죽음을 옆에 둔
										스승은 사랑, 용서, 종교, 과학 등 다양한 주제를 넘나들며, 우리에게 “죽음이 생의 한가운데 있다는 것”을
										낮고 울림 있는 목소리로 전달한다.</p>
								</div>
							</a> <a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/223/468/22346813.jpg?udate=20220608">
									<p class="fontstyle12 selectbooktitle">내가 틀릴 수도 있습니다</p>
									<p class="fontstyle13 selectbookauthor">비욘 나티코 린데블라드</p>
									<p class="fontstyle13 selectbookpublisher">다산초당</p>
									<p class="fontstyleOpcity0 selectbookcontents">때 이른 성공을 버리고
										떠난 17년간의 숲속 수행, 그리고 삶과 죽음의 경계에서 깨달은 것들 “불안의 폭풍우 속에 있는 당신을 구원할
										책.”</p>
								</div>
							</a> <a href="bookSearch">
								<div class="articleBook">
									<img class="selectbookimg"
										src="https://bookthumb-phinf.pstatic.net/cover/124/953/12495337.jpg?udate=20190202">
									<p class="fontstyle12 selectbooktitle">자유의 비극</p>
									<p class="fontstyle13 selectbookauthor">유진수</p>
									<p class="fontstyle13 selectbookpublisher">한길사</p>
									<p class="fontstyleOpcity0 selectbookcontents">현대사회는 역사상
										물질적으로 가장 풍요롭다. 물질적으로 풍요롭다는 말은 선택범위가 넓다는 것을 의미한다. 그만큼 우리는 속박 받지
										않고 선택할 수 있다는 것이다. 이 책 『자유의 비극』에서는 우리에게는 진정으로 선택할 자유가 있으며 우리는
										그만큼 자유로운가, 자유에는 대가가 따르는가, 그렇다면 자유에 따르는 대가는 무엇인가, 어떤 경우에 자유가
										비극이 될 수 있는가, 자유에 관한 새로운 이슈는 무엇인가 등을 다룬다. 『자유의 비극』은 ‘자유’라는 추상적인
										개념을 구체적 사례를 통해 경제학적 관점에서 분석한다. 인간의 자유는 어디까지이며 자유를 절제하는 것이 오히려
										발전일 수도 있다는 시각을 제시한다. 경제학자이며『가난한 집 맏아들』의 저자 유진수가 대중의 눈높이에 맞춰
										자유의 다양한 개념과 시사점을 날카롭고도 따뜻하게 파헤친다.</p>
								</div>
							</a>

						</div>
					</div>
				</div>
				<!--ariticle1-2-->
			</div>
			<!--aticle본문용 div입니다-->

		</div>
		</article>
	</div>
	<!--id="wrap" END-->

	<script>
		var list_Icon = $("#article1-2-2");
		if (list_Icon.children().length < 3) {
			let book_Icon = 3 - list_Icon.children().length
			for (var i = 1; i <= book_Icon; i++) {
				list_Icon
						.append("<div class='article1-2-2-1'><div class='article1-2-2-1-1'><p class='fontstylebook'><i style='font-size:80px' class='fas fa-book-open'></i></p></div></div>");
			}

		} else {
		};

		function chkCharCode(event) {
			const regExp = /[^0-9a-zA-Z]/g;
			const ele = event.target;
			if (regExp.test(ele.value)) {
				ele.value = ele.value.replace(regExp, '');
			}
		};

		let pwd_same = document.getElementById("pwd_same");
		$("#pwRecheck").keyup(function() {
			if (pwCheck.value !== pwRecheck.value) {
				pwd_same.style.display = "block";
			} else {
				pwd_same.style.display = "none";
			}
		});
	</script>

</body>
</html>