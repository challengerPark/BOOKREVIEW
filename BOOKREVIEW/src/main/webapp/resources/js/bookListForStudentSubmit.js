function editMode() {
	let checkNum = document.getElementById("checkNum").innerText;

	console.log(checkNum);
	if (checkNum === '2') {
		alert('확인 완료된 독서록은 수정할 수 없습니다\n담당 선생님께 문의하세요!')
		$("#btn3").attr('disabled','disabled');
	} else {
		let userText = $("input[type='text']");
		let userTextArea = $('textarea');
	
		
		$("#btn3").css('display','block');
		
		for (i = 0; i < userText.length; i++) {
			userText[i].readOnly=false;
			userText[i].style.cssText = 'border:1px solid black;';
		}
		
		for (i = 0; i < userTextArea.length; i++) {
			userTextArea[i].readOnly=false;
			userTextArea[i].style.cssText = 'border:1px solid black;';
		}
	}

}

function submitnote() {
	let userText = document.getElementsByTagName("input");
	let userTextArea = document.getElementsByTagName("textarea");

	for (i = 0; i < userText.length; i++) {
		if (userText[i].value == "") {
			alert('내용을 전부 입력하세요')
			return false;
		}
	}

	for (i = 0; i < userTextArea.length; i++) {
		if (userTextArea[i].value == "") {
			alert('내용을 전부 입력하세요')
			return false;
		}
	}
	// 입력하지 않은 내용이 있으면 경고창과 함께 return false

	// 이하는 백단으로 데이터 넘기는 내용
	let reviewtitle = document.getElementById("noteTitle").value;
	let reviewimportant1 = document.getElementById("noteOpinion1").value;
	let reviewimportant2 = document.getElementById("noteOpinion2").value;
	let reviewimportant3 = document.getElementById("noteOpinion3").value;
	let reviewimportant4 = document.getElementById("noteOpinion4").value;
	let reviewimportant5 = document.getElementById("noteOpinion5").value;
	let noteSynop = document.getElementById("noteSynop").value;
	let noteFree = document.getElementById("noteFree").value;
	let reviewNum = document.getElementById("reviewNum").innerText;

	let reviewimportantAll = reviewimportant1 + "," + reviewimportant2 + ","
			+ reviewimportant3 + "," + reviewimportant4 + ","
			+ reviewimportant5;

	$.ajax({
		url : "changeReview.re",
		type : "POST",
		data : {
			reviewTitle : reviewtitle, // 리뷰제목
			reviewImportent : reviewimportantAll, // 감상1
			reviewContent : noteSynop, // 줄거리
			reviewFeel : noteFree, // 느낀점
			reviewNo:reviewNum
		},
		success : function(data) {
			alert("저장했습니다.");
			if (!data == "") {
				location.replace('studentReviewList.re')
			}
			;
		},
		error : function() {
			alert("모든 내용을 입력하세요.");
		}
	});

};
/* 독서록 페이지의 제출하기 버튼 누를 시 실행 */
