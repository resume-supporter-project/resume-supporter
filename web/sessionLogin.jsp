<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-14
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션 로그인</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String u_id = request.getParameter("uID");
    String u_pw = request.getParameter("uPW");

    session.setAttribute("u_id", u_id);
    session.setAttribute("u_pw", u_pw);

    response.sendRedirect("index.jsp");
%>
</body>
</html>
