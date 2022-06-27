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
  //입력하지 않은 내용이 있으면 경고창과 함께 return false


  //이하는 백단으로 데이터 넘기는 내용
  let bookThumnail= sessionStorage.getItem('selectbookimg');
  let booktitle= sessionStorage.getItem('selectbooktitle');
  let uploaddate= sessionStorage.getItem('testdate');
  let bookauthor= sessionStorage.getItem('selectbookauthor');
  let userinform= document.getElementById("userinform").innerText;
  
  let bookcompany= sessionStorage.getItem('selectbookpublisher'); 
  //종혁씨 요청으로 추가


  /*
  let userinform= document.getElementById("userinform").firstChild.nodeValue;
  let username= document.getElementById("username").firstChild.nodeValue;
  //userinform과 username은 혹시 몰라서 임시 추가. 필요없으면 삭제하기
*/
  
  let reviewtitle = document.getElementById("noteTitle").value;
  let reviewimportant1 = document.getElementById("noteOpinion1").value;
  let reviewimportant2 = document.getElementById("noteOpinion2").value;
  let reviewimportant3 = document.getElementById("noteOpinion3").value;
  let reviewimportant4 = document.getElementById("noteOpinion4").value;
  let reviewimportant5 = document.getElementById("noteOpinion5").value;
  let noteSynop = document.getElementById("noteSynop").value;
  let noteFree = document.getElementById("noteFree").value;

  let reviewimportantAll = reviewimportant1+","+reviewimportant2+","+reviewimportant3+","+reviewimportant4+","+reviewimportant5;

  $.ajax({
    url: "insertReview.re",
    type: "POST",
    data: {
      reviewTitle: reviewtitle,    //리뷰제목
      reviewImportent: reviewimportantAll,  //감상1
      reviewContent: noteSynop,    //줄거리
      reviewFeel: noteFree,      //느낀점
      reviewDate: uploaddate,     //제출날짜
      bookImg: bookThumnail,    //책썸네일
      bookName: booktitle,   //책제목
      bookWriter: bookauthor,   //작가
      bookCompany: bookcompany
    },
    success: function (data) {
      alert("저장했습니다.");
      if(!data==""){location.replace('mainForStudent.me')};
    },
    error: function () {
      alert("통신에 실패하였습니다.");
    }
  });

};
  /*독서록 페이지의 제출하기 버튼 누를 시 실행*/