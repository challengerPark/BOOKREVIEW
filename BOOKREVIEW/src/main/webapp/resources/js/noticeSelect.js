function noticeSelect(e){
	
	console.log(e)
	

	 var noticeNo = $(e).attr('id');

	$.ajax({
	        url: "selectNotice.no",
	        data: {
	            noticeNo: noticeNo,    //리뷰제목
	        },
	        success: function (data) {
	        	
	        	var dataDate = new Date(data.createDate);
	        
	        	var year = dataDate.getFullYear();
	        	
	        	var month = (1+ dataDate.getMonth());
	        	month = month >= 10 ? month : '0' + month;
	        	var day = dataDate.getDate();
	        	day = day >= 10 ? day : '0' + day;
	        	
	        	var date = year + "-" + month + "-" + day ;
	        	
	                $("#articla1-1-4").append("<div id='notice-modal'><div class='modal fade' id='Test_notice' tabindex='-1' aria-labelledby='exampleModalLabel' aria-hidden='true'><div class='modal-dialog modal-dialog-centered'><div class='modal-content'><div class='modal-header'><button type='button' onclick='modalClose();'class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button></div><div class='modal-body'><p style='text-align:center;'class='fontstyle6'>공지사항</p><div class='col-sm-10'><p style='width:100%; font-size:1.5rem;' class='col-sm-2 col-form-label'>제목 :<span style='font-size: 1.8rem;'> "+data.noticeTitle+"</span></p></div><div class='col-sm-10'><p  style='width:100%; font-size:1.5rem;'  class='col-sm-2 col-form-label'>작성일 : <span style='font-size: 1.6rem;'>" + date + "</span></p></div><div style='width:100%;' class='col-sm-10'><p style='width:100%; font-size:1.5rem;margin: 5px 0;' class='col-sm-2 col-form-label'>공지내용</p><textarea style='width:100%;height:200px;resize:none; padding:0 5px;font-size:1.5rem;' readonly>"+ data.noticeContent +"</textarea></div></div><div class='modal-footer'><button type='button' id='modal_Close' onclick='modalClose();'class='btn btn-secondary' data-bs-dismiss='modal'>닫기</button></div></div></div></div></div>")
	        	
	        },
	        error: function () {
	        }
	    });
	
}

function modalClose(){
	$("#articla1-1-4").empty();
}


