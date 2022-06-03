function selectAll(selectAll) {
    let checkedNomal = document.getElementsByName('checked');
    checkedNomal.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    })
}
//모두 선택, 모두 선택 해제

window.onload = function() {
        let joinbtn1 = document.getElementById("joinBtn1");
        let joinbtn1_1 = document.getElementById("joinBtn1-1");
        let joinbtn2 = document.getElementById("joinBtn2");
        let joinbtn2_1 = document.getElementById("joinBtn2-1");
        let idcheck_Btn = document.getElementById("idcheck_Btn");
        let joinArticle1 = document.getElementById("article1-1");
        let joinArticle2 = document.getElementById("article1-2");
        let joinArticle3 = document.getElementById("article1-3");
        let agree1 = document.getElementById("agree1");
        let agree2 = document.getElementById("agree2");
        let idcheck = document.getElementById("idcheck");
        let pwCheck = document.getElementById("pwCheck");
        let pwRecheck = document.getElementById("pwRecheck");
        let id_same = document.getElementById("id_same");
        let pwd_same = document.getElementById("pwd_same");


        joinbtn1.onclick = function() {
            if (agree1.checked !== true || agree2.checked !== true) {
                alert("약관에 동의해 주세요");
            } else {
                joinArticle1.style.display = "none";
                joinArticle2.style.display = "block";
                joinArticle3.style.display = "none";
            }
        };

        idcheck_Btn.onclick = function() {
            id_same.style.display = "none";
            
            $.ajax({
                // 회원가입 수행 요청
                type: "POST",
                url: "idCheck.me",
                cache: "false",
                data: {
                    checkId: idcheck.value
                },
                success: function(cnt) {
                    if (cnt !== "Y") {
                        if (confirm("사용가능한 아이디 입니다 \n 사용 하시겠습니까?")) {
                            $("#idcheck").attr("readonly", true);
                            idcheck.setAttribute("class", "setid");
                        } else {
                            idcheck.focus();
                        }
                    } else {
                        id_same.style.display = "block";
                    }
                }
            })

        };

        $("#pwRecheck").keyup(function() {
            if (pwCheck.value !== pwRecheck.value) {
                pwd_same.style.display = "block";
            } else {
                pwd_same.style.display = "none";
            }
        });
        joinbtn2.onclick = function() {
            let setid = document.getElementsByClassName("setid");
            let id_Ok = false;
            let pw_Ok = false;
            let info_Ok = false;
            let idcheck = document.getElementById("idcheck");
            let pwCheck = document.getElementById("pwCheck");
            let login_Grade = document.getElementById("login_Grade");
            let login_Class = document.getElementById("login_Class");
            let login_Name = document.getElementById("login_Name");
            let id_error = document.getElementById("id_error");
            let pwd_error = document.getElementById("pwd_error");
            let info_error = document.getElementById("info_error");

            if (!idcheck.value) {
                id_error.style.display = "block";
            } else {
                id_error.style.display = "none";
                id_Ok = true;
            }
            if (!pwCheck.value) {
                pwd_error.style.display = "block";
            } else {
                pwd_error.style.display = "none";
                pw_Ok = true
            }
            if (!login_Grade.value || !login_Class.value || !login_Name.value) {
                info_error.style.display = "block";
            } else {
                info_error.style.display = "none";
                info_Ok = true;
            }

            if (setid.value= "" || !id_Ok || !pw_Ok || !info_Ok) {
                console.log("입력 누락값이 존재합니다.")
            } else {
                $.ajax({
                    // 회원가입 수행 요청
                    type: "POST",
                    url: "insert.me",
                    cache: "false",
                    data: {
                        memberId: idcheck.value,
                        memberPwd: pwCheck.value,
                        memberGrade: login_Grade.value,
                        memberClass: login_Class.value,
                        memberName: login_Name.value
                    },
                    dataType: "text",
                    success: function() {
                        joinArticle1.style.display = "none";
                        joinArticle2.style.display = "none";
                        joinArticle3.style.display = "block";
                    }
                })
            }

        };

        joinbtn2_1.onclick = function() {
            joinArticle1.style.display = "block";
            joinArticle2.style.display = "none";
            joinArticle3.style.display = "none";
        };
    }
    //다음 페이지로 가기. 미작성 페이지로의 이동은 구현x