<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="CSS/elementCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/signupPageCSS.css">
    <title>Document</title>
</head>
<body>
    <main class="signupBox">
        <form action="#">
            <div class="signupHeader">
                <h2>내 정보 수정</h2>
            </div>
            <div class="signupMain">
                
                <div class="signupMainLeft">
                    <div class="inputBox">
                        <span class="inputBoxText">아이디</span>
                        <input name="idValue" class="inputBoxInput" type='text' placeholder="6~30 영어,숫자" maxlength="30">
                    </div>
                    <div class="inputBox">
                        <span class="inputBoxText">비밀번호</span>
                        <input name="passwordValue" class="inputBoxInput" type='password' placeholder="6~30 영어,숫자" maxlength="30">
                    </div>
                    <div class="inputBox">
                        <span class="inputBoxText">확인</span>
                        <input name="passwordCheckValue" class="inputBoxInput" type='password' placeholder="6~30 영어,숫자" maxlength="30">
                    </div>
                    <div class="inputBox">
                        <span  class="inputBoxText">전화번호</span>
                        <input name="phonenumberValue" class="inputBoxInput" type='text' placeholder="(-)없이 11자리 숫자" maxlength="11">
                    </div>
                    <div class="inputBox">
                        <span  class="inputBoxText">이름</span>
                        <input name="nameValue" class="inputBoxInput" type='text' placeholder="6~30 한글,영어" maxlength="30">
                    </div>
                </div>
                <div class="signupMainRight">
                    <div class="inputBox">
                        <span class="inputBoxText">직급</span>
                        <div class="radioText">팀장</div>
                        <input name="grade" type='radio' value="팀장">
                        <div class="radioText">팀원</div>
                        <input name="grade" type='radio' value="팀원" checked>
                    </div>
                    <div class="inputBox">
                        <span class="inputBoxText">부서</span>
                        <select class="selectBox" name="team">
                            <option value="develop">개발팀</option>
                            <option value="design">디자인팀</option>
                        </select>
                    </div>
                    <div class="signupButtonBox">
                        <input type="submit" class="signupButton" value="수정하기">
                        <input type="button" class="signupButton" value="뒤로가기" onclick="history.back()">
                    </div>
                </div>

            </div>
        </form>
        
    </main>
    



</body>
</html>