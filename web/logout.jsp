<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-14
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
Home > 로그아웃
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
</body>
</html>
