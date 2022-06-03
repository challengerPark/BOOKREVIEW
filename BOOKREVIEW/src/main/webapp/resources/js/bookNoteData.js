window.onload = function noteData(){
  let today = new Date();
  let year = today.getFullYear(); 
  let month = today.getMonth() + 1;
  let date = today.getDate();
  
  let noteToday = year + '/' + month + '/' + date;
  document.getElementById("noteDate").innerText = noteToday; 
  /*날짜입력*/

  let testdate = noteToday;
        localStorage.setItem('testdate', testdate);


  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: localStorage.getItem('yourbook') },
    headers: { Authorization: "KakaoAK e8e9b4330ac23c780d6541aca91d9920" }
  })
    .done(function myfunction(data) {

      document.getElementById("notedb_bookname").innerText = data.documents[0].title;

      document.getElementById("notedb_authors").innerText = data.documents[0].authors;
    
      document.noteimg.src =  data.documents[0].thumbnail;
      
    });
    /*제목, 작가, 썸네일 입력*/
  
  }