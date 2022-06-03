window.onload = function() {
  let menuicon = document.getElementById("header2-2");
  let menu1 = document.getElementById("article-menu");

  menuicon.addEventListener('click', function () {
    if(menu1.style.visibility=='collapse'){
      menu1.style.visibility = 'visible';
    }else{  
      menu1.style.visibility = 'collapse';
    }
})

}