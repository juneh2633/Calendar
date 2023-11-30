<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 

<% 
    request.setCharacterEncoding("utf-8"); //전페이지 request 
    String idValue = request.getParameter("idValue");
    String passwordValue = request.getParameter("passwordValue");
    String passwordCheckValue = request.getParameter("passwordCheckValue");
    String phonenumberValue = request.getParameter("phonenumberValue");
    String nameValue = request.getParameter("nameValue");
    String gradeValue = request.getParameter("gradeValue");
    String teamValue = request.getParameter("teamValue");
    idValue = idValue.replaceAll("\\s", "");
    passwordValue = passwordValue.replaceAll("\\s", "");
    phonenumberValue = phonenumberValue.replaceAll("\\s", "");
    nameValue = nameValue.replaceAll("\\s", "");

    if(idValue.length() <= 5){
        return;       
    }
    if(idValue.length()>30){
        return;       
    }
    if(passwordValue.length()<=5){
        return;
    }
    if(passwordValue.length()>30){
        return;
    }
    if (!passwordValue.equals(passwordCheckValue)) {        
        return;
    }
    if(phonenumberValue.length()!=11){
        return;
    }
    if(nameValue.length()==0){
        return;
    }
    if(nameValue.length()>30){
        return;
    }
    Class.forName("com.mysql.jdbc.Driver");
    Date currentDate = new Date();
    Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/calendar", "juneh","2633");
    String sql = "INSERT INTO user (id, password, phonenumber, name, grade, team, user_deleted) VALUES (?, ?, ?, ?, ?, ? , 0)";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, passwordValue);
    query.setString(3, phonenumberValue);
    query.setString(4, nameValue);
    query.setString(5, gradeValue);
    query.setString(6, teamValue);
    //  query 전송

    try{
        query.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('오류'); history.back();</script>");
        return;
    }
    query.close();
    connect.close();
    %>
    <script>console.log("well")</script>
    <%
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>loading</div>
    <script>
        console.log("hi");
        alert("회원가입에 성공하였습니다. 로그인 해주세요.")
        location.href="../loginPage.jsp"
    </script>
</body>