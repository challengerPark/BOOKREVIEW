$(function click() {
  for (i = 1; i <= 6; i++) {
    $('#article2-1')
    .append('<a href="bookNote.re"><div class="article2-1-1 product' + i + '"></div></a>');
  }

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "채소 마스터 클래스" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product1").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "하루 한 문장, 나의 10년 다이어리" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product2").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "노바" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product3").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "오늘밤, 세계에서 이 사랑이 사라진다해도" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product4").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "패자의 생명사" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product5").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });


  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "꽃으로 박완서를 읽다" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product6").append("<img class='selectbookimg' src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8 selectbooktitle">' + data.documents[0].title + '</p>').append('<p class="fontstyle9 selectbookauthor">' + data.documents[0].authors + '</p><p class="fontsltyleOpacity00 selectbookpublisher">'+ data.documents[0].publisher +'</p><p class="fontsltyleOpacity00 selectbookcontents">'+ data.documents[0].contents + '</p>');
    });
});



$(document).on('click', '.article2-1-1', function () {
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