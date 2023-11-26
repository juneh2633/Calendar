<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="CSS/elementCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/loginPageCSS.css">
    <title>Document</title>
</head>
<body>
    <main class="loginBox">
            <div class="loginHeader">
                <h2>로그인</h2>
            </div>
            <div class="loginMain">
                <div class="inputBox">
                    <span class="inputBoxText">아이디</span>
                    <input class="inputBoxInput" type='text' maxlength="30" onclick="checkSignup()">
                </div>
                <div class="inputBox">
                    <span class="inputBoxText">비밀번호</span>
                    <input class="inputBoxInput" type='password' maxlength="30">
                </div>

            </div>
            <div class="loginFooter">
                <div class="loginPageTextArea">
                    <div>
                        <a href="findIdPage.html">아이디</a>
                        <a href="findPasswordPage.html">비밀번호</a>
                        찾기
                    </div>
                    <div>
                        <a href="signupPage.html">회원가입</a>
                    </div>
                </div>
                <input type="submit" class="loginButton" value="로그인">
            </div>
    </main>
    <script src="JavaScript/checkException.js"></script>
</body>
</html>