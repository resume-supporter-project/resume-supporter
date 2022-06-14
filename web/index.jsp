<%--
  Created by IntelliJ IDEA.
  User: minchan
  Date: 2022-06-14
  Time: 오전 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>면접자 페이지</title> <!-- link rel로 외부 리소스 불러옴 -->
    <link rel="stylesheet" href="https://tistory3.daumcdn.net/tistory/1620939/skin/images/NotoSansCJKKR-Subset.css">
    <link rel="stylesheet" href="https://tistory3.daumcdn.net/tistory/1620939/skin/images/tasty.css">
    <link rel="stylesheet" href="https://tistory3.daumcdn.net/tistory/1620939/skin/style.css?_T_=1594719102">
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Lato:300,400' type='text/css'>
    <link rel="stylesheet" href="https://tistory3.daumcdn.net/tistory/1620939/skin/images/fontello.css">
</head>

<body>
<header style="float: right">
    <%
        String u_id = (String)session.getAttribute("u_id");
    %>
    <%=u_id %>님이 로그인 중입니다.
</header>

<%
    request.setCharacterEncoding("UTF-8");
    ResultSet rs            = null;
    PreparedStatement pstmt = null;


    try {


        String sql="select * from Users"; // 유저 테이블 select
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

%>


<div id="">
    <div id="shadows" class="force-3d"></div>
    <div class="container wrapper top-wrapper"> <!-- 상단 모양 조절 -->
        <span class="searcher pull-left"> <!--  면접자 페이지 왼쪽 여백 --></span>
        <span class="logo">
            <span class="txt-center blog-title"><a id="this-blog" href="index.jsp">면접자 페이지</a></span>
        </span>
        <span id="navigation" class="nav"> <!-- 상단 모양 조절 -->
        <span class="closer pull-right">
            <button id="btn-closer" class="icon-cancel"></button>
        </span>

  <ul><br>
    <li><a href="login.jsp"><strong>로그인 </strong></a></li>
    <li><a href="logout.jsp"><strong> 로그아웃</strong></a></li>
    <li><a href=""><strong> 탈퇴 </strong></a></li>
    <li><a onfocus=blur() href=# onclick="window.open('resumeWriteForm.jsp','이력서작성','left=400, top=50, width=1120,height=900,resizable=yes,scrollbars=yes')"><strong> 이력서 작성하기 </strong></a></li>
  </ul>
    </div>
    <div>
        <table style="width:100%;margin-top:20px;">
            <%

                if(!rs.next()){ // 조회된 데이터가 없을 때
            %>
            <tr>
                <td style="text-align:center;">데이터가 없습니다.</td>
            </tr>
            <%
            }else{
            %>
            <tr align="center" style="margin-top:20px;">
                <%
                    int i = 0;
                    while(rs.next()){
                        if(i!=0 && i % 3 == 0){
                %>
            </tr>
            <tr align="center" style="margin-top:20px;">
                <%
                    }
                %>

                <td>
                    <a href="/resumeWriteForm.jsp"> <!-- 자격증 세부 페이지 링크 넣는 곳 -->
                        <img src="/images/image.png" width="125px;"/><br/>
                        성   명 : <%=rs.getString("users_name") %> <br/>
                        연 락 처 : <%=rs.getString("users_phone") %><br/>
                        자 격 증 : <%=rs.getString("qual_name") %>
                </td>
                <%
                        i++;
                    }
                %>
            </tr>
            <%
                }
            %>
        </table>
    </div>
        <%
   }catch(SQLException ex){
      if(rs != null) try{rs.close();} catch(SQLException ex1) {}
      if(pstmt != null) try{pstmt.close();} catch(SQLException ex2) {}
      if(conn != null) try{conn.close();} catch(SQLException ex3) {}
   }
%>

</body>
</html>