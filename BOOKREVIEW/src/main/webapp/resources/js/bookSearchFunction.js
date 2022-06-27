function clickSearch() {
	let checkValue = document.getElementById('inputSearch').value;
	  if (checkValue == '') { console.log("값이 없을 경우") } else {
		  

  let beforeSearch = document.getElementById('article2-1');
  // 검색시 hide 시킬 이주의 신간 div
  let beforeSearch2 = document.getElementById('bfSearch');
  // 검색시 hide 시킬 이주의 신간 heading
  let afterSearch = document.getElementById('article2-2');
  //검색시 틀이 생성되면서 open api를 넣을 div로 비어있음
  let searchBookTitle = document.getElementById('inputSearch').value;

  let checkChildNode = document.getElementById("article2-2").hasChildNodes();
  console.log(checkChildNode);

  beforeSearch.style.display = 'none';
  beforeSearch2.style.display = 'none';
  //이주의 도서 숨기기

  while (afterSearch.hasChildNodes()) {
    afterSearch.removeChild(afterSearch.firstChild);
  }
  //기존 부모 박스에 기존에 검색했던 내용이 있다면 삭제, 없다면 해당 스텝은 패스

  
  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: searchBookTitle },
    dataType: "json",
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function myfunction(data) {
      console.log(data);  //제대로 불러왔는지 확인용
      let datanum = data.total_count;
      console.log(datanum);

      for (i = 0; i < 5; i++) {
        $("#article2-2").append("<div class='article2-2-1'><div class='article2-2-1-1' onclick='testclick'><img class='selectbookimg' src='" + data.documents[i].thumbnail + "'/></div><div class='article2-2-1-2'><div class='article2-2-1-2-1'><p class='fontstyle8 selectbooktitle'>" + data.documents[i].title + "</p><div class='adddiv'><p class='fontstyle9 selectbookpublisher'>" + data.documents[i].publisher + "</p><p class='fontstyle9 selectbookauthor'>" + data.documents[i].authors + "</p></div></div><div class='article2-2-1-2-2'><p class='fontstyle9 selectbookcontents'>" + data.documents[i].contents + "</p></div></div>")
      }
    })
	  }
}
//버튼 클릭시 검색 실행


function enterSearch() {
	let checkValue = document.getElementById('inputSearch').value;
	  if (checkValue == '') { console.log("값이 없을 경우") } else {
  if (window.event.keyCode == 13) {
    let beforeSearch = document.getElementById('article2-1');
    // 검색시 hide 시킬 이주의 신간 div
    let beforeSearch2 = document.getElementById('bfSearch');
    // 검색시 hide 시킬 이주의 신간 heading
    let afterSearch = document.getElementById('article2-2');
    //검색시 틀이 생성되면서 open api를 넣을 div로 비어있음
    let searchBookTitle = document.getElementById('inputSearch').value;

    let checkChildNode = document.getElementById("article2-2").hasChildNodes();
    console.log(checkChildNode);

    beforeSearch.style.display = 'none';
    beforeSearch2.style.display = 'none';
    //이주의 도서 숨기기

    while (afterSearch.hasChildNodes()) {
      afterSearch.removeChild(afterSearch.firstChild);
    }
    //기존 부모 박스에 기존에 검색했던 내용이 있다면 삭제, 없다면 해당 스텝은 패스

    $.ajax({
      method: "GET",
      url: "https://dapi.kakao.com/v3/search/book?target=title",
      dataType: "json",
      data: { query: searchBookTitle },
      headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
    })
      .done(function myfunction(data) {
        console.log(data);  //제대로 불러왔는지 확인용
        let datanum = data.total_count;
        console.log(datanum);

        for (i = 0; i < 5; i++) {
          $("#article2-2").append("<div class='article2-2-1'><div class='article2-2-1-1' onclick='testclick'><img class='selectbookimg' src='" + data.documents[i].thumbnail + "'/></div><div class='article2-2-1-2'><div class='article2-2-1-2-1'><p class='fontstyle8 selectbooktitle'>" + data.documents[i].title + "</p><div class='adddiv'><p class='fontstyle9 selectbookpublisher'>" + data.documents[i].publisher + "</p><p class='fontstyle9 selectbookauthor'>" + data.documents[i].authors + "</p></div></div><div class='article2-2-1-2-2'><p class='fontstyle9 selectbookcontents'>" + data.documents[i].contents + "</p></div></div>")
        }
      });
  }
	  }
}
//엔터 시 검색 실행

$(document).on('click', '.article2-2-1', function () {
  let selectbooktitle = this.querySelector('.selectbooktitle').innerText;
  let selectbookauthor = this.querySelector('.selectbookauthor').innerText;
  let selectbookcontents = this.querySelector('.selectbookcontents').innerText;
  let selectbookpublisher = this.querySelector('.selectbookpublisher').innerText;
  let selectbookimg = this.querySelector('.selectbookimg').src;

  sessionStorage.clear()
  sessionStorage.setItem('selectbooktitle', selectbooktitle);
  sessionStorage.setItem('selectbookauthor', selectbookauthor);
  sessionStorage.setItem('selectbookcontents', selectbookcontents);
  sessionStorage.setItem('selectbookpublisher', selectbookpublisher);
  sessionStorage.setItem('selectbookimg', selectbookimg)
})

$(document).ready(function () {
  $('#bfSearch').animate({ 'opacity': '1' }, 1);
  $('#bfSearch').css({ 'transform': 'translate(0px, 0px)' }, 5);
  $('#article2-1').animate({ 'opacity': '1' }, 1);
  $('#article2-1').css({ 'transform': 'translate(0px, 0px)' }, 5);
});