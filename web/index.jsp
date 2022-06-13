<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-11
  Time: 오후 6:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<div id="top-bar">
  <div id="shadows" class="force-3d"></div>
  <div class="container wrapper top-wrapper"> <!-- 상단 모양 조절 -->
    <span class="searcher pull-left"> <!--  면접자 페이지 왼쪽 여백 -->
            </span>
    <span class="logo">
      <span class="txt-center blog-title"><a id="this-blog" href="/">면접자 페이지</a></span>
    </span>
    <span id="navigation" class="nav"> <!-- 상단 모양 조절 -->
      <span class="closer pull-right">
        <button id="btn-closer" class="icon-cancel"></button>
      </span>

  <ul><br>
    <li><a href=""><strong>회원 가입 </strong></a></li>
    <li><a href=""><strong>로그인 </strong></a></li>
    <li><a href=""><strong> 로그아웃</strong></a></li>
    <li><a href=""><strong> 탈퇴 </strong></a></li>
    <li><a href=""><strong> 마이페이지 </strong></a></li>
    <li><a href=""><strong> 전체 이력서 확인 </strong></a></li>
  </ul>
</div>
</body>
</html>
