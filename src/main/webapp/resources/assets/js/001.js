//배경음악
$(document).ready(function() {
    var playing = false;
  
    $('#button12').click(function() {
        $(this).toggleClass("down");
        if (playing == false) {
            document.getElementById('player').play();
            playing = true;
  
        } else {
            document.getElementById('player').pause();
            playing = false;
        }
    });
  });

//현재시간

function printTime() {
    var clock = document.getElementById("clock");            // 출력할 장소 선택
    var now = new Date();                                                  // 현재시간
    var nowTime = now.getFullYear() + "년 " + (now.getMonth()+1) + "월 " + now.getDate() + "일,  " + now.getHours() + "시 " + now.getMinutes()    + "분 " + now.getSeconds() + "초";
    clock.innerHTML = nowTime;           // 현재시간을 출력
    setTimeout("printTime()",1000);         // setTimeout(“실행할함수”,시간) 시간은1초의 경우 1000
}
window.onload = function() {                         // 페이지가 로딩되면 실행
              printTime();
}