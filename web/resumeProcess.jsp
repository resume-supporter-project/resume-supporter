<%--
  Created by IntelliJ IDEA.
  User: minchan
  Date: 2022-06-13
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<%
    String name = request.getParameter("name");
    String enName = request.getParameter("enName");
    String phone = request.getParameter("phone");
    String birth = request.getParameter("birth");
    String add = request.getParameter("add");
    String introduce = request.getParameter("introduce");

    String qualName = request.getParameter("qualName");
    String qualDate = request.getParameter("qualDate");
    String qualAgency = request.getParameter("qualAgency");

    String sql = "INSERT INTO Users(users_name, users_enname, users_phone, users_birth, users_address, users_introduce, qual_name, qual_date, qual_agency) VALUES";
    sql += "('"+ name + "','"+enName+" ',' "+phone+" ',' "+birth+" ',' "+add+" ',' "+introduce+" ',' "+qualName+" ',' "+qualDate+" ',' "+qualAgency+" ')";

    Statement sm = conn.createStatement();
    int count =  sm.executeUpdate(sql);


    if( count ==1 ){
//        response.sendRedirect("index.jsp");
        out.println("성공!");

    }else{
        out.println("실패 ㅠㅠ");
    }
    sm.close();
    conn.close();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
  
  </body>
</html>
