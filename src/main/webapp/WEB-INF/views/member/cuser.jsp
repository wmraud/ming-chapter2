<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <title>The seungha alone project</title>
         <head>
             <meta charset="utf-8">
             <link rel="stylesheet" type="text/css" href = "/resources/assets/css/main.css">
         </head>
    <body>
        <nav>

            <div class = "now_clock"><span id="clock"></span></div></nav>
        <div>
            <button id = 'mainming22' type="button" onclick="location.href='home_login'">로그인</button>
            </div><br><br>
             <center> <button id = 'mainmingreset' onclick="location.href='/'">Knowing nothing, ming2 of Story Storage</button> </center>
        <br>
        <hr style="border : 1px inset #1b1b1b">
        <br><br><br><br>
      <!--  <div><center>
                <input id = 'new_join_ming1' type = "text" maxlength="16" placeholder="아이디를 입력해주세요">&nbsp;&nbsp;&nbsp;
                <input id = 'new_join_ming1' type = "password" maxlength="20" placeholder="비밀번호를 입력해주세요"><br><br><br>
                <input id = 'new_join_ming1' type = "text" maxlength="10" placeholder="이름 입력해주세요">&nbsp;&nbsp;&nbsp;
                <select id = 'new_join_ming1_5' name = "gender">
                    <option value selected>성별을 선택해주세요</option>
                    <option value="M">남자</option>
                    <option value="U">여자</option>
                    <option value="U">선택 안함</option>
                </select><br><br><br>
                <div>
                    <input id = 'new_join_ming2' type = "text" maxlength="4" placeholder="년도를 입력해주세요">
                <select id = 'new_join_ming2_5' name = "month">
                    <option value selected>월을 선택하세요</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                <input id = 'new_join_ming2_7' type = "text" maxlength="2" placeholder="일를 입력해주세요">
            </div><br><br>
                <input id = 'new_join_ming3' type = "text" placeholder="이메일 입력해주세요"><br><br><br>
                <input id = 'new_join_ming3_5' type = "text" placeholder="주소를 입력해주세요"> -->
                
        <form action="/cuser" method="post">
                <div class="new_join_ming1"><center>
                <input id = "userId" name = "userId" type = "text" maxlength="16" placeholder="아이디를 입력해주세요" /><br><br><br>
                <input id = "userPass" name = "userPass" type = "password" maxlength="20" placeholder="비밀번호를 입력해주세요" /><br><br><br>
                <input id = "userName" name = "userName" type = "text" maxlength="10" placeholder="이름 입력해주세요" /><br><br><br>
                
                
                <div class="new_join_idpwfind_button-container-3">
                    <button id = "submit" type="submit" name="Hover">회원가입</button>
                </div>

            </center></div></form>
            <br>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br>
            <center></div>
            <footer id = 'mainfoott'>
                <p>Copyright &copy; 2021 ALL Right Reserved    @The Simple / Ming2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            </footer>
        </center>

         <!-- script-->
     
    <script src="/resources/assets/js/jquery.min.js"></script>
    <script src="/resources/assets/js/main.js"></script>
    <script src="/resources/assets/js/member.js"></script>

    </body>
</html>