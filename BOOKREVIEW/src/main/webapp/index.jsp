<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>alpas_review</title>
    <link href=resources/css/reset.css rel="stylesheet">
    <link href=resources/css/index.css rel="stylesheet">
    <link href=resources/css/common.css rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="resources/js/login.js"></script>
</head>

<body>


    <article>
        <div class="login_container">
            <div class="login_form">
                <div class="logo_container">
                    <h1 onclick="location.reload();" id="main_logo">ALPAS</h1>
                    <p>알파스 독서록 시스템</p>
                </div>



                <form id="login" action="login.me" method="post" class="login_input-container">
                    <label for="user_id">
                        아이디
                    </label>
                    <small id="id_warining">아이디를 확인해주세요.</small>
                    <input style="text-transform: lowercase;" onkeyup="chkCharCode(event)" maxlength='20' id="user_id" name="memberId" type="text">

                    <label for="user_pw">
                        비밀번호
                    </label>
                    <small id="pw_warining">비밀번호를 확인해주세요.</small>
	                    <c:if test="${loginMiss eq 1}">
	                    	<c:remove var="loginMiss" scope="session" />
							<p style="color:red;margin:5px;" >아이디 또는 비밀번호를 잘못 입력했습니다.</p>
						</c:if>
                    <input style="text-transform: lowercase;" onkeyup="chkCharCode(event)" maxlength='20' id="user_pw" name="memberPwd"type="password">
                </form>

                <div class="login_btn-container">
                    <button class="login_btn1"><a style="color:#fff;" href="join.me">회원가입</a></button>

                    <button id="login_send" class="login_btn2">로그인</button>
                </div>
            </div>
        </div>

    </article>
	
	
<script>
        function chkCharCode(event) {
            const regExp = /[^0-9a-zA-Z]/g;
            const ele = event.target;
            if (regExp.test(ele.value)) {
                ele.value = ele.value.replace(regExp, '');
            }
        };
    </script>
</body>
</html>