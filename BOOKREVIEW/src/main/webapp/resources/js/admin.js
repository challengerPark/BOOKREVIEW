$(document).ready(function () {


    $('.adminmenu').on('click', function () {
        let clickmenu = $(this).index();
        let articlelength = $('#article1-2 > div').length
        console.log(articlelength)
        for (i = 1; i <= articlelength; i++) {
            if (clickmenu == i) {
                console.log('t')
                $('#article1-2').children().eq(i - 1).show();
            } else {
                console.log('f')
                $('#article1-2').children().eq(i - 1).hide();
            };
        };
    });


    //이하 교사계정 추가를 위한 function
    $('#teacherInsert').on('click', function () {
        $("#article1-2-table-insert").css({ "display": "block" });
    });

    
    //아이디 중복체크
    let idcheckforteacher = $("#idcheckforteacher")
     $('#idcheckforteacher').on('click', function () {
       
        let insertid = $("#insertid").val();
        
        let submitteacherinfo = $("#submitteacherinfo")
        let id_same = $("#id_same")
        
        $.ajax({
                // 회원가입 수행 요청
                type: "POST",
                url: "idCheck.me",
                cache: "false",
                data: {
                    checkId: insertid
                },
                success: function(cnt) {
                    if (cnt !== "Y" && insertid.length > 0) {
                        alert("사용가능한 아이디입니다.")
                        id_same.css({ "display": "none" });
                    } else {
                        id_same.css({ "display": "block" });
                        $("#insertid").val('');
                    }
            }
            
        });
    });
    

    
    //내용 전부 입력 확인
    $('#submitteacherinfo').on('click', function () {
        
    let teacherInput = $('.updateTeacherInput');

    	for (i = 0; i < teacherInput.length; i++) {
    		    if (teacherInput[i].value == "") {
    		      alert('내용을 전부 입력하세요')
    		      return false;
    		    }
    		  }
    	
    	  
        let teachername = document.getElementById("insertname");
        let teachergrade = document.getElementById("insertgrade");
        let teacherclass = document.getElementById("insertclass");
        let teacherid = document.getElementById("insertid");
        let teacherpw = document.getElementById("insertpw");
        

        $.ajax({
            type: "POST",
            url: "insertTeacher.me",
            data: {
                memberId: teacherid.value,      //아이디
                memberPwd: teacherpw.value, 		//비밀번호
                memberName: teachername.value,    //이믈
                memberGrade: teachergrade.value,  //학년
                memberClass: teacherclass.value    //반
            },
            success: function (result) {
                $("#article1-2-table-insert").css({ "display": "none" });
                if( alert("저장했습니다.")!== false){
                	location.reload();
                }
                console.log(result);
            },
            error: function () {
                alert("통신에 실패하였습니다.");
            }
        });
    });


    
    
  //이하 교사계정 수정기능을 위한 function
    $('#teacherUpdate').on('click', function () {
    	let teacherLength = $('input:checkbox[name=checkedTeacher]:checked').length;
    	if(teacherLength==1){
    		$('#updateteacheruser').css({ 'display': 'block' });
    	}else{
    		alert('수정할 사용자를 한 명만 선택해주세요')
    		}
    });		//수정할 사용자를 한 명만 선택하게 하는 function
    
    
    $('#tmodal_Close').on('click', function () {
    	$('#updateteacheruser').css({ 'display': 'none' });
    });		//수정취소
    
    
    $('#Change_teacherdata').on('click', function () {
        let teachergrade = document.getElementById("updateTeacherGrade");
        let teacherclass = document.getElementById("updateTeacherClass");
        let teacherpw = document.getElementById("updateTeacherPw");
        
        let checkedTeacher = $('input:checkbox[name=checkedTeacher]:checked')
        let teacherno = checkedTeacher.siblings('.memberNo').text();
        

        $.ajax({
            type: "POST",
            url: "updateTeacher.me",
            data: {
                memberPwd: teacherpw.value, 		//비밀번호
                memberGrade: teachergrade.value,  //학년
                memberClass: teacherclass.value,    //반
                memberNo: teacherno    //멤버넘버
                
            },
            success: function (result) {
                $("#updateteacheruser").css({ "display": "none" });
                if( alert("저장했습니다.")!== false){
                	location.reload();
                }
                console.log(result);
            },
            error: function () {
                alert("통신에 실패하였습니다.");
            }
        });

    });
    
    
    

    //이하 교사계정 삭제기능을 위한 function 초안 - 1. 체크한 항목의 memberNo selectArr[]에 넣는 function
    $('#teacherDelete').on('click', function () {
    	let teacherLength = $('input:checkbox[name=checkedTeacher]:checked').length;
    	
    	if(teacherLength==1){
            let checkedTeacher = $('input:checkbox[name=checkedTeacher]:checked')
            let teacherno = checkedTeacher.siblings('.memberNo').text();
            
            $.ajax({
                type: "POST",
                url: "deleteTeacher.me",
                data: {
                    memberNo: teacherno    //멤버넘버
                    
                },
                success: function (result) {
                    if( alert("삭제했습니다.")!== false){
                    	location.reload();
                    }
                    console.log(result);
                },
                error: function () {
                    alert("통신에 실패하였습니다.");
                }
            });
    		
    	}else{
    		alert('삭제할 사용자를 한 명만 선택해주세요')
    		}
    });
    
    

    //이하 공지 삭제기능을 위한 function 체크한 항목의 memberNo selectArr[]에 넣는 function
    $('#noticeDelete').on('click', function () {
    	let noticeLength = $('input:checkbox[name=noticeChecker]:checked').length;
    	
    	if(noticeLength==1){
            let noticeChecker = $('input:checkbox[name=noticeChecker]:checked')
            let noticeNo = noticeChecker.siblings('.noticeNo').text();
            
            console.log(noticeNo);
            
            $.ajax({
                type: "POST",
                url: "deleteNotice.no",
                data: {
                    noticeNo: noticeNo    //공지넘버
                    
                },
                success: function (result) {
                    if( alert("삭제했습니다.")!== false){
                    	location.reload();
                    }
                    console.log(result);
                },
                error: function () {
                    alert("통신에 실패하였습니다.");
                }
            });
    		
    	}else{
    		alert('삭제할 공지를 하나만 선택해주세요')
    		}
    });
    
    
    
    
  //이하 공지 추가를 위한 function
        
    //내용 전부 입력 확인
    $('#sendNotice').on('click', function () {
        
    let noticeInput = $('#floatingInput');
    let noticeInput2 = $('#floatingTextarea2');
    console.log(noticeInput.val());
    console.log(noticeInput2.val());

    		    if (noticeInput.value == "" || noticeInput2.value=="") {
    		      alert('내용을 전부 입력하세요')
    		  }
        $.ajax({
            type: "POST",
            url: "insertNotice.no",
            data: {
            	noticeTitle: noticeInput.val(),      //공지제목
            	noticeContent: noticeInput2.val(), 		//공지내용
            },
            success: function (result) {
                if( alert("저장했습니다.")!== false){
                	location.reload();
                }
                console.log(result);
            },
            error: function () {
                alert("통신에 실패하였습니다.");
            }
        });
    });

    
   

})	//documnet.ready ENd
