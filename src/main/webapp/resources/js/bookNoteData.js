window.onload = function noteData() {
  let today = new Date();
  let year = today.getFullYear();
  let month = today.getMonth() + 1;
  let date = today.getDate();

  let noteToday = year + '/' + month + '/' + date;
  document.getElementById("noteDate").innerText = noteToday;
  /*날짜입력*/

  let testdate = noteToday;
  sessionStorage.setItem('testdate', testdate);

  let selectbooktitle = sessionStorage.getItem('selectbooktitle')
  let selectbookauthor = sessionStorage.getItem('selectbookauthor')
  let selectbookimg = sessionStorage.getItem('selectbookimg')

  document.getElementById("notedb_bookname").innerText = selectbooktitle;
  document.getElementById("notedb_authors").innerText = selectbookauthor;
  document.noteimg.src = selectbookimg;
  
}