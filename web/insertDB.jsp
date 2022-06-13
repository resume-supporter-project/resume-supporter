<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-11
  Time: 오후 6:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>

<%
    String u_id = request.getParameter("userID");
    String u_pw = request.getParameter("userPW");
    String u_name = request.getParameter("userNAME");
    String u_mail = request.getParameter("userMAIL");

    String sql = "INSERT INTO Signup(users_name, users_id, users_password, users_email) VALUES";
    sql += "('"+u_name+"','"+u_id+"','"+u_pw+"','"+u_mail+"')";

    Statement sm = conn.createStatement();

    int count = sm.executeUpdate(sql);
    if(count == 1){
        response.sendRedirect("index.jsp");
    }
    else{
        out.println("회원가입 실패!");
        response.sendRedirect("signup.jsp");
    }
    sm.close();
    conn.close();
%>

