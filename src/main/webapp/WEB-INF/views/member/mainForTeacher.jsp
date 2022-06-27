<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지/선생님</title>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href=resources/css/reset.css rel="stylesheet">
  <link href=resources/css/common.css rel="stylesheet">
  <link href=resources/css/mainForTeacher.css rel="stylesheet">

  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>  
  <script src="resources/js/common.js"></script>
  <script src="resources/js/slide.js"></script>
  <script src="resources/js/noticeSelect.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="resources/js/pwChanger.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

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
		 <div id="article1"> <!--본문시작-->
              <div id="article1-1">
                <div id="article1-1-1">
                  <div id="article1-1-1-1">
                    <div>
                      <i class="fas fa-user-alt" id="headericon-user"></i>
                    </div>   <!--for circle-->
                  </div>
<div id="article1-1-1-2">
                    <p class="fontstyle12"><c:out value="${loginMember.memberName }" />선생님</p>
                    <p class="fontstyle13"><c:out value="${loginMember.memberGrade }"/>학년 <c:out value="${loginMember.memberClass }"/>반</p>
                  </div>

                </div>
                <div id="article1-1-2">
                  <p class="fontstyle6">독서록 메뉴</p>
                  <p style="color:red;" class="fontstyle7">총 <c:out value="${newInpT}"/>개의 미확인 독서록</p>
                  <a href="list.re"><p class="fontstyle7">우리반 독서록</p></a>
                </div>
              

                <div id="article1-1-3">
                  <p class="fontstyle6">내 정보 관리 메뉴</p>
                  <p data-bs-toggle="modal" data-bs-target="#Test_Modal" class="fontstyle7">비밀번호 변경하기</p>
                </div>
                <div id="articla1-1-4">
			
				</div>
                
                <div class="modal fade" id="Test_Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
 					 <div class="modal-dialog modal-dialog-centered">
    					<div class="modal-content">
   				 		  <div class="modal-header">
       						 <h5 class="modal-title" id="exampleModalLabel">사용자 비밀번호 변경</h5>
      	 						 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      					  </div>
     					 <div class="modal-body">
       						<p style="text-align:center;"class="fontstyle6">비밀번호 변경</p>
       						
       						 <label style="width:100%; font-size:1.5rem;" for="inputPassword" class="col-sm-2 col-form-label">변경할 비밀번호</label>
    						 <div class="col-sm-10">
     							<input onkeyup="chkCharCode(event)" placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20' type="password" class="form-control" id="pwCheck">
     						 </div>
     						 
     						 <label  style="width:100%; font-size:1.5rem;" for="inputPassword" class="col-sm-2 col-form-label">비밀번호 확인</label>
    						 <div class="col-sm-10">
    						   <small style="display:none; color:red; margin-top: 5px;" id="pwd_same">비밀번호가 일치하지 않습니다.</small>
     							<input onkeyup="chkCharCode(event)"  placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20' type="password" class="form-control" id="pwRecheck" >
     						 </div>
       						
      					</div>
     				 <div class="modal-footer">
       				 <button type="button" id="modal_Close" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        				<button type="button" id="Change_pw" class="btn btn-primary">변경하기</button>
     					 </div>
    				</div>
  				</div>
			</div>
              </div> <!--articla1-1-->

              <div id="article1-2">
                <div id="article1-2-1">
                  <p class="fontstyle8">학생 독서록 목록</p>
                   <a class='goReviewlist' href="list.re">
                  	 우리 반 독서록 목록
                  <i class="fas fa-arrow-alt-circle-right"></i>
                  </a>
                </div>

                <div id="article1-2-2">
                  <div id="article1-2-2-1">
                    <div><p class="fontstyle12">이름</p></div>
                    <div><p class="fontstyle12">도서명</p></div>
                    <div><p class="fontstyle12">제출날짜</p></div>
                    <div><p class="fontstyle12">검사현황</p></div>
                  </div>
                  
                  <c:forEach items="${list}" var="l">
                  <a href="list.re"><div  id="article1-2-2-2">
                    <div><p class="fontstyle13">${l.memberName}</p></div>
                    <div><p id='bookTitle' class="fontstyle13">${fn:substring(l.bookName,0,14)}</p></div>
                    <div><p class="fontstyle13">${l.reviewDate}</p></div>
                    <c:choose>
	                    <c:when test="${l.checkNo == 1}">
	                    	<div><p class="fontstyle13" class="checkcolor" style="color:red">미확인</p></div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div><p class="fontstyle13" class="checkcolor" style="color: blue" >반려</p></div>
	                    </c:otherwise>
                    </c:choose>
                  </div>
                  </a>
               </c:forEach> 
                </div>


                <div id="article1-2-3">
                  <a href="list.re"><button class="fontstyle7">독서록 확인하기</button></a>
                </div>
              </div> <!--ariticle1-2-->

              <div id="article1-3">
                <div style="text-align:center;" id="article1-3-1">
                  <p class="fontstyle8">도서관 공지사항</p>
                  <div>
                    <c:forEach items="${nlist }" var="n" begin="0" end="4" step="1">
                    <p id="${n.noticeNo }" data-bs-toggle="modal" data-bs-target="#Test_notice" onclick="noticeSelect(this);"class="fontstyle9 noticejh">
                      		${n.noticeTitle }
                    </p>
                   </c:forEach>
                  </div>
                </div>

               <div id="article1-3-2">
              <p class="fontstyle8">도서관 신간도서</p>
              <div id="article1-3-2-1">
                <a>
                  <div class="articleBook">
                    <img class="selectbookimg"
                      src="https://image.aladin.co.kr/product/28582/75/cover500/k022836012_1.jpg">
                    <p class="fontstyle12 selectbooktitle">채소 마스터 클래스</p>
                    <p class="fontstyle13 selectbookauthor">백지혜</p>
                    <p class="fontstyle13 selectbookpublisher">세미콜론</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                      냉장고에 항상 있는 토마토, 당근, 호박, 양배추, 가지, 버섯, 파, 무 8가지 일상 채소를 주인공으로 각 채소가 가진 고유의 맛을 가장 맛있게 만들어 먹을 수 있는 100% 채식 레시피가 쏟아진다. 계절 따라 채소를 고르는 법, 요리 중간과 마지막에 채소의 풍미를 끌어올리는 킥, 밥물 맞추기나 재료 손질 등 주방에서의 노하우까지 아낌없이 담아내 눈앞에서 클래스를 듣는 듯한 현장감을 느끼게 한다.

                    </p>
                  </div>
                </a>

                <a>
                  <div class="articleBook">
                    <img class="selectbookimg" src="https://image.aladin.co.kr/product/29611/3/cover500/k452838873_1.jpg">
                    <p class="fontstyle12 selectbooktitle">물들이다 특별판</p>
                    <p class="fontstyle13 selectbookauthor">우나영</p>
                    <p class="fontstyle13 selectbookpublisher">클</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                      〈한복 입은 앨리스〉를 비롯한 한복 고유의 아름다움을 살린 개성 있는 작품으로 세계의 주목을 받아 현재는 디즈니, 마블 등의 기업과 협업하여 활발한 작품 활동을 하는 일러스트레이터, 필명 흑요석의 첫번째 컬러링북 『물들이다』가 출간 5주년을 맞아 『물들이다 특별판』으로 새롭게 태어났다.
                    </p>
                  </div>
                </a>

                <a>
                  <div class="articleBook">
                    <img class="selectbookimg" src="https://image.aladin.co.kr/product/28582/75/cover500/k482838184_1.jpg">
                    <p class="fontstyle12 selectbooktitle">열두달 향신료 카레</p>
                    <p class="fontstyle13 selectbookauthor">김민지</p>
                    <p class="fontstyle13 selectbookpublisher">은행나무</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                     커다란 간판 없이도 사람들이 모여드는 서울 최고의 카레 성지. 오직 ‘향신료 카레’ 하나만을 먹기 위해 웨이팅도 불사하는 성북동 ‘카레’의 향신료 카레 레시피가 세상에 처음 공개되었다. 오픈 몇 시간 만에 품절 대란을 일으키는 인기 한정 카레, 예전에 선보였지만 앞으로는 없을 예정이라 아쉬운 추억의 카레, 그리고 이 책을 통해 처음 소개하는 카레까지 사계절 열두 달을 따라 알차게 담았다.
                    </p>
                  </div>
                </a>

                <a>
                  <div class="articleBook">
                    <img class="selectbookimg" src="https://image.aladin.co.kr/product/19965/93/cover500/8950980282_1.jpg">
                    <p class="fontstyle12 selectbooktitle">하루 한 문장, 나의 10년 다이어리북 </p>
                    <p class="fontstyle13 selectbookauthor">21세기북스</p>
                    <p class="fontstyle13 selectbookpublisher">21세기편집부</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                     어느 해, 어느 날 기록하기 시작해도 그 순간부터 10년 동안 우리 곁에서 오롯이 동행해줄 이 만년 다이어리북은 365일로 구성되어 있다. 각 날짜마다 10년에 걸쳐 반복적으로 쓸 수 있도록 10개의 공간을 마련해놓았다. 즉 하루하루 10년 동안 내가 어떻게 변화하고 성장해왔는지, 그리고 ……지지난해·지난해·올해 내가 무엇을 했는지를 양쪽 2페이지에서 한눈에 확인할 수 있다.
                    </p>
                  </div>
                </a>

                <a>
                  <div class="articleBook">
                    <img class="selectbookimg" src="https://image.aladin.co.kr/product/29607/99/cover500/k832838878_1.jpg">
                    <p class="fontstyle12 selectbooktitle">홀그레인 채소 요리</p>
                    <p class="fontstyle13 selectbookauthor">김문정</p>
                    <p class="fontstyle13 selectbookpublisher">레시피 팩토리</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                      홀그레인 채식 시리즈 2탄. 든든한 음료부터 수프와 스튜, 샐러드와 핑거푸드, 밥 요리, 면 요리, 빵 요리, 그라탱과 일품 채소 요리, 남은 채소를 알뜰하게 활용할 수 있는 사이드디시까지 60여 가지 채소 요리를 풀코스로 만나볼 수 있다.
                    </p>
                  </div>
                </a>

                <a>
                  <div class="articleBook">
                    <img class="selectbookimg" src="https://image.aladin.co.kr/product/8080/56/cover500/8925558785_1.jpg">
                    <p class="fontstyle12 selectbooktitle">사람은 누구나 꽃이다</p>
                    <p class="fontstyle13 selectbookauthor">도종환</p>
                    <p class="fontstyle13 selectbookpublisher">알에이치코리아</p>
                    <p class="fontstyleOpcity0 selectbookcontents">
                      그는 '내 영혼이 성숙하는 집'이라 말하는 황토집에서 나무와 숲이 하는 말에 귀 기울였으며, 별들의 깜빡이는 눈빛에 주목했다. 이 책에 봄 들꽃과 가을 들국화가 하는 말을 베껴 적기도 했노라고 고백하는 그는, 삶의 쉼표 속에서 온 감각을 열어 느낀 자연의 섭리에 글로써 감응했다. 그렇기에 이 책에는 자연이 주는 고요함 속에서도 충만함이 공존한다.
                    </p>
                  </div>
                </a>

              </div>
            </div>
          </div>
          <!--ariticle1-2-->

          </div> <!--aticle본문용 div입니다-->

      </div>
    </article>
  </div>  <!--id="wrap" END-->
</body>
</html>