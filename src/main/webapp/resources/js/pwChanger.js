	

$(document).on('click', '.articleBook', function () {
  let selectbooktitle = this.querySelector('.selectbooktitle').innerText;
  let selectbookauthor = this.querySelector('.selectbookauthor').innerText;
  let selectbookpublisher = this.querySelector('.selectbookpublisher').innerText;
  let selectbookimg = this.querySelector('.selectbookimg').src;
  let selectbookcontents = this.querySelector('.selectbookcontents').innerText;

  sessionStorage.clear()
  sessionStorage.setItem('selectbooktitle', selectbooktitle);
  sessionStorage.setItem('selectbookauthor', selectbookauthor);
  sessionStorage.setItem('selectbookcontents', selectbookcontents);
  sessionStorage.setItem('selectbookpublisher', selectbookpublisher);
  sessionStorage.setItem('selectbookimg', selectbookimg)
})

document.addEventListener("DOMContentLoaded", function() {

$("#Change_pw").click(function(){
	let New_pw = document.getElementById("pwCheck");
	let New_pwChk = document.getElementById("pwRecheck");
	
	
	console.log(New_pw.value);

	if(New_pw.value == New_pwChk.value){
	   $.ajax({
	         // 비밀번호 변경 요청
	         type: "POST",
	         url: "changePwd.me",
	         cache: "false",
	         data: {
	        	 changePwd: New_pw.value
	         },
	         
	         
	         success: function(e) {
	        $('#modal_Close').trigger("click");
	        if(e==1){
	        	alert("변경이 완료되었습니다.\n 로그인창으로 이동됩니다.")
	        	location.href ="logout.me";
	        }
	         } 
	     })
	 }else{
		 alert("비밀번호가 일치하지 않습니다.")
	 }
})

});