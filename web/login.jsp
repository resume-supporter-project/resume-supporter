<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-11
  Time: 오후 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
    <script type="text/javascript">
        function checkFun() {
            var f = document.loginForm;
            if (f.uID.value == "")
            {
                alert("아이디를 입력해 주세요.");
                f.uID.focus();
                return false;
            }
            else if (f.uPW.value == "")
            {
                alert("비밀번호를 입력해 주세요.");
                f.uPW.focus();
                return false;
            }
            else return true;
        }
    </script>
    <style>
        form {
            text-align: center;
        }
        fieldset {
            display: inline-block;
            width: 50%;
            font-weight: bold;
            border-radius: 20px;
            border-color: seagreen;
        }
        input[type=text]:focus, input[type=email]:focus {
            font-size: 120%;
        }
        label {
            display : block; /* 새 라인에서 시작 */
            padding : 10px;
        }
        label span {
            display : inline-block;
            width : 90px;
            text-align : right;
            padding : 10px;
        }
        legend {
            font-size: larger;
        }
        #image {
            text-align: center;
        }
        img {
            width: 700px;
            height: 300px;
            border-radius: 20px;
        }
        .button {
            width: 80px;
            height: 30px;
            background-color: seagreen;
            border-radius: 20px;
            border: none;
        }
        a{
            text-decoration: none;
            text-decoration-color: #000;
        }
    </style>
</head>
<body>
<a href="index.jsp">Home</a> > 로그인
<div id="image">
    <img src="Pictures/resume_1280.png">
</div>
<p></p><p></p>
<form name="loginForm" action="sessionLogin.jsp" method="post" onsubmit="return checkFun()" autocomplete="off">
    <fieldset>
        <legend> 로그인 화면 </legend><p></p>
        <label>
            <span>아이디</span><input type="text" name="uID" placeholder="아이디 2~16자">
        </label>
        <label>
            <span>비밀번호</span><input type="password" name="uPW" placeholder="비밀번호 6자이상">
        </label>
        <br>
        <input class="button" type="reset" value="다시작성" style="color: white;">
        <input class="button" type="submit" value="로그인" style="color: white;">
        <input class="button" type="button" value="회원가입" onclick="location.href='signup.jsp'" style="color: white;">
        <br><br>
    </fieldset>
</form>
</body>
</html>
