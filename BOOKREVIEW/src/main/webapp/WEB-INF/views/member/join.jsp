<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href=resources/css/reset.css rel="stylesheet">
    <link href=resources/css/common.css rel="stylesheet">
    <link href=resources/css/join.css rel="stylesheet">


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>

<body>
    <div id="wrap">
        <a href="#">
            <div class="logo">
                <h1>Alpas</h1>
            </div>
        </a>

        <article>
            <div id="article1-1">
                <div class="joinProcess">
                    <p class="fontstyle1"><b>약관동의</b></p>
                    <p class="fontstyle1">기본정보입력</p>
                    <p class="fontstyle1">가입완료</p>
                </div>

                <div id="article1-1-1" class="justifyLeft">
                    <input type="checkbox" id="checkAll" name="checked" onclick='selectAll(this)'>
                    <label for="checkAll" class="fontstyle1">
                        알파스 독서록 약관에 모두 동의합니다.
                    </label>
                </div>

                <div id="article1-1-2">
                    <p class="fontstyle5">
                        알파스 독서록 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 서비스의 이용과 관련하여 서비스를 제공하는 ECO와 이를 이용하는 독서록 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                    </p>
                </div>

                <div id="article1-1-3" class="justifyLeft">
                    <input id="agree1" value="0" type="checkbox" class="checkNomal" name="checked">
                    <label for="agree1" class="fontstyle6">
                        알파스 독서록 약관에 동의합니다.
                    </label>
                </div>

                <div id="article1-1-4">
                    <p class="fontstyle5">
                        알파스 독서록 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 서비스의 이용과 관련하여 서비스를 제공하는 ECO와 이를 이용하는 독서록 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
                    </p>
                </div>

                <div id="article1-1-5" class="justifyLeft">
                    <input id="agree2" value="0" type="checkbox" class="checkNomal" name="checked">
                    <label for="agree2" class="fontstyle6">
                        알파스 독서록 약관에 동의합니다.
                    </label>
                </div>

                <div class="joinNext justifyCenter">
                    <button class="btn1" id="joinBtn1-1"><a style="color:#fff;" href="index">메인으로</a></button>
                    <button class="btn2" id="joinBtn1">확 인</button>
                </div>
            </div>
            <!--article1-1 END-->


            <div id="article1-2">
                <div class="joinProcess">
                    <p class="fontstyle1">약관동의</p>
                    <p class="fontstyle1"><b>기본정보입력</b></p>
                    <p class="fontstyle1">가입완료</p>
                </div>

                <div id="article1-2-1">
                    <p class="fontstyle6">
                        아이디
                    </p>
                    <small id="id_error">ID는 필수 입력 값입니다.</small>
                    <small id="id_same">이미 있는 아이디거나 탈퇴한 회원입니다.</small>
                </div>

                <div id="article1-2-2">
                    <input style="text-transform: lowercase;" onkeyup="chkCharCode(event)" placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20' type="text" id="idcheck">
                    <button id="idcheck_Btn" class="btn3">중복확인</button>
                </div>

                <div id="article1-2-3">
                    <p class="fontstyle6">
                        비밀번호
                    </p>
                    <small id="pwd_error">PWD는 필수 입력 값입니다.</small>
                </div>

                <div id="article1-2-4">
                    <input onkeyup="chkCharCode(event)" placeholder="20자 이내 영문 소문자와 숫자만 사용 가능합니다." maxlength='20' type="password" id="pwCheck" class="1-2-text" name="pwCheck">
                </div>

                <div id="article1-2-5">
                    <p class="fontstyle6">
                        비밀번호 재확인
                    </p>
                    <small id="pwd_same">비밀번호가 일치하지 않습니다.</small>
                </div>

                <div id="article1-2-6">
                    <input onkeyup="chkCharCode(event)" type="password" id="pwRecheck" name="pwReCheck">
                </div>

                <div id="article1-2-7">
                    <p class="fontstyle6">
                        인적사항
                    </p>
                    <small id="info_error">인적사항이 누락되었습니다.</small>
                </div>

                <div id="article1-2-8">
                    <input maxlength='1' oninput="this.value = this.value.replace(/[^1-6.]/g, '').replace(/(\..*)\./g, '$1');" id="login_Grade" type="text" placeholder="학년">
                    <input maxlength='2' oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="login_Class" type="text" placeholder="반">
                    <input maxlength='5' id="login_Name" oninput="this.value = this.value.replace(' ','');" type="text" placeholder="이름">
                </div>

                <div class="joinNext justifyCenter">
                    <button class="btn1" id="joinBtn2-1">이 전</button>
                    <button class="btn2" id="joinBtn2">확 인</button>
                </div>

            </div>
            <!--article1-2 END-->


            <div id="article1-3">
                <div class="joinProcess">
                    <p class="fontstyle1">약관동의</p>
                    <p class="fontstyle1">기본정보입력</p>
                    <p class="fontstyle1"><b>가입완료</b></p>
                </div>

                <div id="article1-3-1">
                    <p class="fontstyle6">
                        알파스 가입을 축하합니다!<br/>즐거운 독서생활 되세요!
                    </p>
                </div>
                <button class="btn2"><a style="color:#fff;" href="index">로그인 하기</a></button>
            </div>
            <!--article1-3 END-->

        </article>
    </div>
    <!--id="wrap" END-->

    <script>
        function chkCharCode(event) {
            const regExp = /[^0-9a-zA-Z]/g;
            const ele = event.target;
            if (regExp.test(ele.value)) {
                ele.value = ele.value.replace(regExp, '');
            }
        };
    </script>
    <script src="resources/js/join.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>

</html>

<!--js에서 뭘 제어할 지 몰라서 일단 id처리했습니다. 필요에 따라 class 변경해서 사용하면 됩니다.-->