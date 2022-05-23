	window.addEventListener('DOMContentLoaded', function() {
    var user_Id = document.getElementById('user_id');
    var user_Pw = document.getElementById('user_pw');
    var login_Btn = document.getElementById('login_send');


    login_Btn.addEventListener('click', function sending() {
        let id_warining = document.getElementById('id_warining');
        let pw_warining = document.getElementById('pw_warining');

        function user_id_fali() {
            id_warining.setAttribute("style", "display:inline-block;");
            id_warining.setAttribute("class", "animate__animated animate__fadeInDown animate__delay-0.8s")
            user_Id.setAttribute("class", "animate__animated animate__shakeX animate__delay-0.8s")
            user_Id.addEventListener('click', function() {
                user_Id.removeAttribute("class", "animate__animated animate__shakeX animate__delay-0.8s")
                id_warining.removeAttribute("style", "display:inline-block;");
                id_warining.removeAttribute("class", "animate__animated animate__fadeInDown animate__delay-0.8s")
            })
        }

        function user_pw_fali() {
            console.log(pw_warining);
            pw_warining.setAttribute("style", "display:inline-block;");
            pw_warining.setAttribute("class", "animate__animated animate__fadeInDown animate__delay-0.8s")
            user_Pw.setAttribute("class", "animate__animated animate__shakeX animate__delay-0.8s")
            user_Pw.addEventListener('click', function() {
                user_Pw.removeAttribute("class", "animate__animated animate__shakeX animate__delay-0.8s")
                pw_warining.removeAttribute("style", "display:inline-block;");
                pw_warining.removeAttribute("class", "animate__animated animate__fadeInDown animate__delay-0.8s")
            })
        }

        if (user_Id.value == "" || user_Pw.value == "") {
            if (user_Id.value == "") {
                user_id_fali()
            }
            if (user_Pw.value == "") {
                user_pw_fali()
            } else if (user_Id.value !== "") {
                user_pw_fali()

            } else if (user_Pw.value !== "") {
                user_id_fali()
            }
        } else {
            id_Value = user_Id.value;
            pw_Value = user_Pw.value;

            console.log(id_Value);
            console.log(pw_Value);

            $.ajax({
                url: "login.me",
                type: "post",
                data: {
                    memberId: id_Value,
                    memberPwd: pw_Value
                },
                dataType: "json",
                success: function(e) {
                    console.log(e);
                },
                error: function() {
                    alert("오류발생");
                }
            });
        }
    })
});