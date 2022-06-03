$(function click() {
  for (i = 1; i <= 6; i++) {
    $('#article2-1')
    .append('<div class="article2-1-1 product' + i + '"></div>');
  }

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "2의 세계" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product1").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "해리포터" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product2").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "구의 증명" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product3").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "오늘밤, 세계에서 이 사랑이 사라진다해도" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product4").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "달러구트 꿈 백화점" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product5").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    });


  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "천개의 파랑" },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function (data) {
      $("#article2-1 .product6").append("<img src='" + data.documents[0].thumbnail + "'/>").append('<p class="fontstyle8">' + data.documents[0].title + '</p>').append('<p class="fontstyle9">' + data.documents[0].authors + '</p>');
    })
});



