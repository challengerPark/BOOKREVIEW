function clickSearch() {
  let beforeSearch = document.getElementById('article2-1');
  // 검색시 hide 시킬 이주의 신간 div
  let afterSearch = document.getElementById('article2-2');
  //검색시 틀이 생성되면서 open api를 넣을 div로 비어있음
  let searchBookTitle = document.getElementById('inputSearch').value;


  let checkChildNode = document.getElementById("article2-2").hasChildNodes();
  console.log(checkChildNode);

  beforeSearch.style.display = 'none';
  //이주의 도서 숨기기

  if (checkChildNode == true) {
    afterSearch.removeChild(afterSearch.childNodes[0]);
  }
  //기존 부모 박스에 기존에 검색했던 내용이 있다면 삭제, 없다면 해당 스텝은 패스

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: searchBookTitle },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function myfunction(data) {
      console.log(data);  //제대로 불러왔는지 확인용

      $("#article2-2").append("<div class='article2-2-1'><div class='article2-2-1-1'><img src='" + data.documents[0].thumbnail + "'/></div><div class='article2-2-1-2'><div class='article2-2-1-2-1'><p class='fontstyle8'>" + data.documents[0].title + "</p><p class='fontstyle9'>" + data.documents[0].authors + "</p></div><div class='article2-2-1-2-2'><p class='fontstyle9'>" + data.documents[0].contents + "</p></div></div>")

      let testtitle = data.documents[0].title;
      localStorage.setItem('yourbook', testtitle);

      let testauthor = data.documents[0].authors;
      localStorage.setItem('testauthor', testauthor);

      let testcompany = data.documents[0].publisher;
      localStorage.setItem('testcompany', testcompany);

    });
};
//버튼 클릭시 검색 실행


function enterSearch() {
  if (window.event.keyCode == 13) {
    let beforeSearch = document.getElementById('article2-1');
    // 검색시 hide 시킬 이주의 신간 div
    let afterSearch = document.getElementById('article2-2');
    //검색시 틀이 생성되면서 open api를 넣을 div로 비어있음
    let searchBookTitle = document.getElementById('inputSearch').value;


    let checkChildNode = document.getElementById("article2-2").hasChildNodes();
    console.log(checkChildNode);

    beforeSearch.style.display = 'none';
    //이주의 도서 숨기기

    if (checkChildNode == true) {
      afterSearch.removeChild(afterSearch.childNodes[0]);
    }
    //기존 부모 박스에 기존에 검색했던 내용이 있다면 삭제, 없다면 해당 스텝은 패스

    $.ajax({
      method: "GET",
      url: "https://dapi.kakao.com/v3/search/book?target=title",
      data: { query: searchBookTitle },
      headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
    })
      .done(function myfunction(data) {
        console.log(data);  //제대로 불러왔는지 확인용

        $("#article2-2").append("<div class='article2-2-1'><div class='article2-2-1-1'><img src='" + data.documents[0].thumbnail + "'/></div><div class='article2-2-1-2'><div class='article2-2-1-2-1'><p class='fontstyle8'>" + data.documents[0].title + "</p><p class='fontstyle9'>" + data.documents[0].authors + "</p></div><div class='article2-2-1-2-2'><p class='fontstyle9'>" + data.documents[0].contents + "</p></div></div>")

        let testtitle = data.documents[0].title;
      localStorage.setItem('yourbook', testtitle);

      let testauthor = data.documents[0].authors;
      localStorage.setItem('testauthor', testauthor);

      let testcompany = data.documents[0].publisher;
      localStorage.setItem('testcompany', testcompany);

      });

  }
}
//엔터 시 검색 실행

