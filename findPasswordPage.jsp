<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="CSS/elementCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/findPageCSS.css">
    <title>Document</title>
</head>

<body>
    <main class="findBox">
        <div class="findHeader">
            <h2>비밀번호 찾기</h2>
        </div>
        <div class="findPasswordMain">
            <div class="inputBox">
                <span class="inputBoxText">아이디</span>
                <input name="idValue" class="inputBoxInput" type='text' placeholder="6~30 한글,영어" maxlength="30">
            </div>
            <div class="inputBox">
                <span class="inputBoxText">이름</span>
                <input name="nameValue" class="inputBoxInput" type='text' placeholder="6~30 한글,영어" maxlength="30">
            </div>
            <div class="inputBox">
                <span class="inputBoxText">전화번호</span>
                <input name="phonenumberValue" class="inputBoxInput" type='text' placeholder="(-)없이 11자리 숫자"
                    maxlength="11">
            </div>

        </div>
        <div class="findFooter">
            <input type="submit" class="findButton" value="찾기">
            <input type="button" class="findButton" value="뒤로가기" onclick="history.back()">
        </div>
    </main>
</body>

</html>