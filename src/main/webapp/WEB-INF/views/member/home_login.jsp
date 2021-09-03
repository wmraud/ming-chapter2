<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
     <title>The seungha alone project</title>
     <br><br><br><br>
     <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href = "/resources/assets/css/main.css">
    </head>
    <body>
        <nav>

        <div class = "now_clock"><span id="clock"></span></div></nav>
        <center> <button id = 'mainmingreset' onclick="location.href='/'">Knowing nothing, ming2 of Story Storage</button> </center>
        <br><br><br><br>
        <hr style="border : 1px inset #1b1b1b"><br><br><br><br>
        
        <form action="login" method="post">
        
        <c:if test="${member == null}"><div><center>
        <input class="ming2" id = "userId" name = "userId" type = "text" placeholder="아이디를 입력해주세요">
        <br><br>
        <input class="ming2" id = "userPass" name = "userPass" type = "password" placeholder="비밀번호를 입력해주세요">
        <br><br>
        </center></div>
        <center>
        <div class="login_button-container-3">
        <button type="submit" name="Hover" id="sudmit">로그인</button>
        </div></center></c:if>
        
        <c:if test="${member != null }"><center>
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button class="logoutbutton" id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
		</center>
		</form>
		<center>
		<div class="new_join_idpwfind_button-container-3">
        <button type="button" name="Hover" onclick="location.href='cuser'">회원가입</button>
        </div>
        <div class="new_join_idpwfind_button-container-3">
        <button type="button" name="Hover" onclick="location.href='idfind'">아이디 찾기</button>
        </div>
        <div class="new_join_idpwfind_button-container-3">
        <button type="button" name="Hover" onclick="location.href='pwfind'">비밀번호 찾기</button>
        </div></center>
        
    
        <br><br><br><br><br><br><br><br><br><br><br><br>

        <footer id = 'mainfoott'>
        <p>Copyright &copy; 2021 ALL Right Reserved    @The Simple / Ming2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        </footer>
        </center>
        </div>

         <!-- script-->
     
        <script src="/resources/assets/js/jquery.min.js"></script>
        <script src="/resources/assets/js/main.js"></script>
        <script src="/resources/assets/js/member.js"></script>

    </body>
</html>