<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 
<% //jsp 작성 
    request.setCharacterEncoding("utf-8");
    String idValue = request.getParameter("idValue");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/calendar", "juneh","2633");

    String sql = "SELECT * FROM user where id= ?";
    PreparedStatement query = connect.prepareStatement(sql);
    ResultSet result = query.executeQuery();
    query.setString(1, postUid);

    if(!loginCheck){
        out.println("<script>alert('아이디가 존재합니다.'); history.back();</script>");
        return;
    }
      
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div>loading</div>
    <script>
        alert("사용가능한 아이디입니다.")
        var idInputBox=document.getElementById("idValue");
        idInputBox.disabled = true;
        idInputBox.style.backgroundColor = "white";
        idInputBox.style.color = "black";
        history.back()
        document.getElementById("doubleCheck").value=1;
    </script>
</body>