<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 
<%
    String id = (String)session.getAttribute("id");
    if(id == null){
        out.print("<script>alert('로그인 해주세요.'); window.location.href='loginPage.html';</script>");
    }
    String phonenumber = (String)session.getAttribute("phonenumber");
    String name = (String)session.getAttribute("name");
    String grade = (String)session.getAttribute("grade");
    String team = (String)session.getAttribute("team");
    String gradeKr ="팀원";
    String teamKr ="";
    if(grade.equals("leader")){
        gradeKr = "팀장";
    }
    if(team.equals("develope")){
        teamKr = "개발팀";
    }
    else if(team.equals("design")){
        teamKr = "디자인팀";
    }
    Class.forName("com.mysql.jdbc.Driver");
    Date currentDate = new Date();
    Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/calendar", "juneh","2633");
    String sql = "SELECT * FROM schedule WHERE id = ?";
    
    PreparedStatement query = connect.prepareStatement(sql);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="CSS/elementCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/mainPageCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/navigationCSS.css">
    <link type="text/css" rel="stylesheet" href="CSS/modalPageCSS.css">
    <title>Document</title>
</head>
<body>
    <header>
        <div class="headerHigh">
            <div class="nameAreaId"><%=id%></div>
            <div class="nameAreaName"><%=name%></div>
            <div class="yearButtonArea">
                <input class="yearButtonUp" type="button" value="↑" onclick="yearUp()">
                <input class="yearButtonDown" type="button" value="↓" onclick="yearDown()">
            </div>
            <div id="yearArea" class="yearArea">2024년</div>
            <div id="monthArea" class="monthArea"></div>
            <input class="navAppearButton" type="button" value="메뉴" onclick="navAppearEvent()">
        </div>
        <div class="headerLow">
            <input id="saveCheck" type="text" value="0" style="display: none;">
            <input class="monthBox" type="button" value="1" onclick="makeDateBoxEvent(1)">
            <input class="monthBox" type="button" value="2" onclick="makeDateBoxEvent(2)">
            <input class="monthBox" type="button" value="3" onclick="makeDateBoxEvent(3)">
            <input class="monthBox" type="button" value="4" onclick="makeDateBoxEvent(4)">
            <input class="monthBox" type="button" value="5" onclick="makeDateBoxEvent(5)">
            <input class="monthBox" type="button" value="6" onclick="makeDateBoxEvent(6)">
            <input class="monthBox" type="button" value="7" onclick="makeDateBoxEvent(7)">
            <input class="monthBox" type="button" value="8" onclick="makeDateBoxEvent(8)">
            <input class="monthBox" type="button" value="9" onclick="makeDateBoxEvent(9)">
            <input class="monthBox" type="button" value="10" onclick="makeDateBoxEvent(10)">
            <input class="monthBox" type="button" value="11" onclick="makeDateBoxEvent(11)">
            <input class="monthBox" type="button" value="12" onclick="makeDateBoxEvent(12)">
        </div>
    </header>
    <main id="calendarBox" class="calendarBox">
        <div class="daysBox"></div>
        <div class="daysBox"></div>
        <div class="daysBox"></div>
        <div class="daysBox"></div>
        <div class="daysBox"></div>
        <div class="daysBox"></div>
        <div class="daysBox"></div>
    </main>
    <nav id="navigation">
        <input class="disappearButton" type="button" value="X" onclick="navDisappearEvent()">
        <div class="infoArea">
            <div class="infoBox">
                <div class="infoTextBox">아이디</div>
                <div class="infoOutputBox"><%=id%></div>
            </div>
            <div class="infoBox">
                <div class="infoTextBox">이름</div>
                <div class="infoOutputBox"><%=name%></div>
            </div>
            <div class="infoBox">
                <div class="infoTextBox">직급</div>
                <div class="infoOutputBox"><%=gradeKr%></div>
            </div>
            <div class="infoBox">
                <div class="infoTextBox">부서</div>
                <div class="infoOutputBox"><%=teamKr%></div>
            </div>
            <div class="infoBox">
                <div class="infoTextBox">전화번호</div>
                <div class="infoOutputBox"><%=phonenumber%></div>
            </div>
            <div class="infoButtonBox">
                <input class="infoButton" type="button" value="내 정보 수정" onclick="location.href='infoUpdatePage.jsp'">
                <input class="infoButton" type="button" value="로그아웃">
            </div>
            <div class="infoButtonBox">
                <input class="myInfoButton" type="button" value="내 일정 보기">
            </div>
        </div>
        <div class="myTeamArea">
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div><div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div><div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div><div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
            <div class="teamBox">
                <div class="teamIdBox"></div>
                <div class="teamNameBox"></div>
            </div>
        </div>
    </nav>
    <div id="modalPage">
        <div class="modalHeader">
            <input class="disappearButton" type="button" value="X" onclick="modalDisappearEvent()">
            <div id="modalDate" class="modalDateBox"></div>
        </div>
        <div class="modalMain">
            <div class="modalMainInput">
                <input class="modalInputTime" type="time">
                <input class="modalInputSchedule" type="text" maxlength="50">
            </div>
            <input class="modalInputButton" type="submit" value="추가">
        </div>
        <div class="modalFooter">
            <div class="scheduleBox">
                <div class="scheduleTime">오전 9:00</div>
                <div class="scheduleText">정수론1</div>
                <input class="scheduleUpdate" type="button" value="수정">
                <input class="scheduleDelete" type="button" value="삭제">
            </div>
            <div class="scheduleBox">
                <div class="scheduleTime">오전 9:00</div>
                <div class="scheduleText">정수론1</div>
                <input class="scheduleUpdate" type="button" value="수정" onclick="">
                <input class="scheduleDelete" type="button" value="삭제">
            </div>
            <div class="scheduleUpdateBox" style="display: none;">
                <input class="scheduleTime" type="time">
                <input class="scheduleTextUpdate" type="text" maxlength="50">
                <input class="scheduleUpdate" type="button" value="확인" onclick="">
                <input class="scheduleDelete" type="button" value="취소">
            </div>

        </div>

    </div>
    <script src="JavaScript/makeCalendarJS.js"></script>
    <script src="JavaScript/navJS.js"></script>
    <script src="JavaScript/modalJS.js"></script>
    <script src="JavaScript/updateScheduleJS.js"></script>
</body>

</html>