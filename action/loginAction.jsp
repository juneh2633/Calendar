<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<!-- 시간 -->
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %> 
<% //jsp 작성 
    request.setCharacterEncoding("utf-8");
    String idValue = request.getParameter("idValue");
    String passwordValue = request.getParameter("passwordValue");
    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/calendar", "juneh","2633");

    String sql = "SELECT * FROM user WHERE id = ? ";
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    ResultSet result = query.executeQuery();
    boolean loginCheck = false;
    if(result.next()&&passwordValue.equals( result.getString(2)) ){      
        loginCheck = true;
        out.println("<script>alert('dld'); </script>");

        session.setAttribute("id", result.getString(1));
        session.setAttribute("phonenumber", result.getString(3));
        session.setAttribute("name", result.getString(4));
        session.setAttribute("grade", result.getString(5));
        session.setAttribute("team", result.getString(6));
    }
    if(!loginCheck){
        out.println("<script>alert('아이디 또는 비밀번호가 잘못되었습니다.'); history.back();</script>");
        return;
    }
    query.close();
    connect.close();
%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div>loading</div>
    <script>
        alert("환영합니다.")

        location.href = "../mainPage.jsp"
    </script>
</body>