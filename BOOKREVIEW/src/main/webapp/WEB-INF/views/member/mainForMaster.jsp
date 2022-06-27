<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
<head>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href=resources/css/reset.css rel="stylesheet">
  <link href=resources/css/common.css rel="stylesheet">
  <link href=resources/css/admin.css rel="stylesheet">

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.min.js"></script>  
  <script src="resources/js/common.js"></script>
  <script src="resources/js/admin.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>
<body>
    <div id="wrap">
        <div id="header">
            <a href="test_main1">
                <div id="header1">
                    <h1>BookReview</h1>
                </div>
            </a>
        </div>
        <!--header END-->

        <article id="article">
            <div class="innerwrap">

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
                                <p class="fontstyle12">관리자님</p>
                                <p class="fontstyle13">welcom!</p>
                            </div>
                        </div>
                        <div id="article1-1-2" class="adminmenu menu1">
                            <div onclick="location.href='selectTeacher.me'" class="forcenter">
                                <p class="fontstyle6">교사 계정관리</p>
                            </div>
                            <div class="triangle"></div>
                        </div>

                        <div id="article1-1-3" class="adminmenu menu2">
                            <div onclick="location.href='selectNoticeList.no'"class="forcenter">
                                <p class="fontstyle7">공지사항</p>
                            </div>
                            <div class="triangle"></div>
                        </div>

                        <div id="article1-1-4" class="adminmenu menu2">
                            <div class="forcenter">
                                <p class="fontstyle7">학생 계정관리(추가예정)</p>
                            </div>
                            <div class="triangle"></div>
                        </div>

                        <div id="article1-1-5" class="adminmenu menu2">
                            <div class="forcenter">
                                <p class="fontstyle7">(추가예정)</p>
                            </div>
                            <div class="triangle"></div>
                        </div>

                        <div id="article1-1-6">
                            <div>
                                <div class="smalltri"></div>
                               <a href="logout.me">
                                <p class="fontstyle12">Log Out</p>
                                </a>
                            </div>
                        </div>

                    </div>
                    <!--articla1-1 END-->


                    <div id="article1-2">
                        <div id="article1-2-1">
                            <div id="article1-2-1-1">
                                <div class="article1-2-1-1-wrap">
                                    <div id="keywrap">
                                        <div class="article1-2-1-tri"></div>
                                    </div>
                                    <h3 class="fontstyle8">교사관리</h3>
                                </div>

                                <div id="article1-2-table">
                                    <div id="article1-2-table-0">
                                        <button id="teacherDelete">삭제</button>
                                        <button id="teacherUpdate">수정</button>
                                        <button id="teacherInsert">추가</button>
                                    </div>
                                    <div id="article1-2-table-1" >
                                        <div>
                                            <p class="fontstyle9">이름</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">학년</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">반</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">아이디</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">비밀번호</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9"></p>
                                        </div>
                                    </div>

                                    <div id="article1-2-table-insert">
                                        <input type="text" id="insertname" class="updateTeacherInput" name="insertname" placeholder="이름">
                                        <input type="text" id="insertgrade" class="updateTeacherInput" name="insertgrade" placeholder="학년">
                                        <input type="text" id="insertclass" class="updateTeacherInput" name="insertclass" placeholder="반">
                                        <input type="text" id="insertid" class="updateTeacherInput" name="insertid" placeholder="아이디">
                                        <button id="idcheckforteacher">중복확인</button>
                                        <input type="text" id="insertpw" class="updateTeacherInput" name="insertpw" placeholder="비밀번호">
                                        <button id="submitteacherinfo">확인</button>
                                        <small id="id_same" class="article1-2-table-insert-1">이미 있는 아이디거나 탈퇴한 회원입니다.</small>
                                    </div>
								
								<c:forEach items="${result }" var="m">
                                    <div class="article1-2-table-2 clickDiv">
                                            <p style="display:none" class="fontstyle10 memberNo">${m.memberNo }</p>
                                      
                                       
                                        <div>
                                             <label for='teacherList${m.memberNo }'>
                                             <p class="fontstyle10">${m.memberName }</p> 
                                             </label>
                                        </div>
                                        <div>
                                        <label for='teacherList${m.memberNo }'>
                                            <p class="fontstyle10">${m.memberGrade }</p>
                                            </label>
                                        </div>
                                        <div>
                                        <label for='teacherList${m.memberNo }'>
                                            <p class="fontstyle10">${m.memberClass }</p>
                                            </label>
                                        </div>
                                        <div>
                                        <label for='teacherList${m.memberNo }'>
                                            <p class="fontstyle10">${m.memberId } </p>
                                            </label>
                                        </div>
                                        <div>
                                        <label for='teacherList${m.memberNo }'>
                                            <p class="fontstyle10">${m.memberPwd }</p>
                                            </label>
                                        </div>
                                       
                                            <input id='teacherList${m.memberNo }' type="checkbox" name="checkedTeacher"  class="checkedTeacher">
                                    </div>
                                    </c:forEach>
	                               
                                
                                <div id="updateteacheruser">
                                        <div class="tmodal-header">
                                                <h5 class="tmodal-title" id="exampleModalLabel">사용자 정보 변경</h5>
                                            </div>
                                        <div class="tmodal-body">
                                                <p class="fontstyle14">학년변경</p>
                                                <input type="text" id="updateTeacherGrade">

                                                <p class="fontstyle14">반변경</p>
                                                <input type="text" id="updateTeacherClass">

                                                <p class="fontstyle14">비밀번호변경</p>
                                                <input type="text" id="updateTeacherPw" placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다.">

                                            </div>  <!--bodyEND-->

                                            <div class="tmodal-footer">
                                                <button id="tmodal_Close">닫기</button>
                                                <button id="Change_teacherdata">변경하기</button>
                                            </div>
                                    </div>

                                
                                </div>
                                <!--article1-2-table END-->

                                <div id="article1-2-page">
                                   <c:if test="${!empty result }">
				                        <div id="paging-area">
				                           <div id="paging">
				                              <c:if test="${pv.startPage != 1}">
			                                		<a href="selectTeacher.me?currentPage=${p}${pv.startPage - 1}">이전</a>
				                              </c:if>
			
			                              	<c:forEach var="p" begin="${pv.startPage }" end="${pv.endPage }" step="1" >
				                                 <c:if test="${pv.currentPage != p and p <= pv.lastPage}">
				                                    <a href="selectTeacher.me?currentPage=${p}">${p}</a>&nbsp
				                                 </c:if>
				                                 <c:if test="${pv.currentPage == p and p <= pv.lastPage}">
				                                    ${p} &nbsp 
				                                 </c:if>
				                              </c:forEach>
			
			                              <c:if test="${pv.endPage < pv.lastPage }">
			                                 <a href="selectTeacher.me?currentPage=${pv.endPage + 1}">다음</a>
			                              </c:if>
			                           </div>
			                        </div>
		                     </c:if>
                                </div>
                                
                            </div>
                        </div>

                        					<div id="article1-2-2">
						<div id="article1-2-1-1">
							<div class="article1-2-1-1-wrap">
								<div id="keywrap">
									<div class="article1-2-1-tri"></div>
								</div>
								<a href="selectNoticeList.no"><h3 class="fontstyle8">공지사항</h3></a>
							</div>

							<div id="article1-2-table">
								<div id="article1-2-table-0">
									<button>삭제</button>
									<button data-bs-toggle="modal" data-bs-target="#Test_Modal">추가</button>

									<div style="width: 100%; display: none;" class="modal fade"
										id="Test_Modal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<div class="modal-content">
												<div class="modal-header">
													<p class='fontstyle8'>공지사항 추가</p>
												</div>
												<div class="modal-body">

													<div class="form-floating mb-3">
														<input style="height:50px; font-size:1.25rem;" type="text" class="form-control"
															id="floatingInput" placeholder="제목">
														<label for="floatingInput">제목을 입력해주세요.</label>
													</div>


													<div class="form-floating">
														<textarea class="form-control"
															placeholder="Leave a comment here" id="floatingTextarea2"
															style="resize:none;padding:30px;font-size:1.25rem;height: 300px"></textarea>
														<label for="floatingTextarea2">공지 내용</label>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" id="modal_Close"
														class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
													<button type="button" id="sendNotice"
														class="btn btn-primary">추가하기</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="article1-2-table-1" >
                                        <div>
                                            <p class="fontstyle9">작성자</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">제목</p>
                                        </div>
                                        <div>
                                            <p class="fontstyle9">작성일</p>
                                        </div>

                                    </div>
								
								<c:forEach items="${noList}" var="n">
                                    <div class="article1-2-table-2 clickDiv">
                                            <p style="display:none" class="fontstyle10 memberNo">${m.memberNo }</p>
                                      
                                       
                                        <div>
                                             <label for='teacherList${n.noticeNo }'>
                                             <p class="fontstyle10">관리자</p> 
                                             </label>
                                        </div>
                                        <div>
                                       <label for='teacherList${n.noticeNo }'>
                                            <p class="fontstyle10">${n.noticeTitle }</p>
                                            </label>
                                        </div>
                                        <div>
                                        <label for='teacherList${n.noticeNo }'>
                                            <p class="fontstyle10">${n.createDate }</p>
                                            </label>
                                        </div>
                                        <div>
                                         <input id='teacherList${n.noticeNo }' type="checkbox" name="noticeChecker"  class="checkedTeacher">
                                    </div>
                                    </c:forEach>
							<!--article1-2-table END-->
                            </div>
                             <div id="article1-2-page">
                                   <c:if test="${not empty noList}">
				                        <div id="paging-area">
				                           <div id="paging">
				                              <c:if test="${nv.startPage != 1}">
			                                		<a href="selectNoticeList.no?page=${nv.startPage - 1}">이전</a>
				                              </c:if>
			
			                              	<c:forEach var="n" begin="${nv.startPage }" end="${nv.endPage }" step="1" >
				                                 <c:if test="${nv.currentPage != n and n <= nv.lastPage}">
				                                    <a href="selectTeacher.me?page=${n}">${n}</a>&nbsp
				                                 </c:if>
				                                 <c:if test="${nv.currentPage == n and n <= nv.lastPage}">
				                                    ${n} &nbsp 
				                                 </c:if>
				                              </c:forEach>
			
			                              <c:if test="${nv.endPage < nv.lastPage }">
			                                 <a href="selectNoticeList.no?page=${nv.endPage + 1}">다음</a>
			                              </c:if>
			                           </div>
			                        </div>
		                     </c:if>
		                     
                                </div>
                        </div>

						</div>
					</div>

                        <div id="article1-2-3">
                            본문3
                        </div>

                        <div id="article1-2-4">
                            본문4
                        </div>
                    </div>
                    <!--article1-2END-->


                </div>
                <!--aticle본문용 div입니다-->

            </div>
        </article>
    </div>
    <!--id="wrap" END-->
</body>

</html>
