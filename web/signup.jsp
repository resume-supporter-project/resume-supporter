<%--
  Created by IntelliJ IDEA.
  User: chanmyeongwoo
  Date: 2022-06-11
  Time: 오후 6:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
    <script type="text/javascript">
        function checkFun() {
            var f = document.user_info;
            if (f.userID.value.length < 2 || f.userID.value.length > 16) {
                alert("아이디는 2~16자 이내로 입력해야 합니다.");
                f.userID.focus();
                return false;
            }
            else if (f.userPW.value.length < 6)
            {
                alert("비밀번호는 6자 이상으로 입력해야 합니다.");
                f.userPW.focus();
                return false;
            }
            else if (f.userNAME.value == "")
            {
                alert("이름은 반드시 입력해야 합니다.");
                f.userNAME.focus();
                return false;
            }
            else if (f.userMAIL.value == "")
            {
                alert("이메일은 반드시 입력해야 합니다.");
                f.userMAIL.focus();
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
            height: 250px;
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
<a href="index.jsp">Home</a> > 회원가입
<div id="image">
    <img src="Pictures/career_1920.png">
</div>
<p></p><p></p>
<form action="insertDB.jsp" name="user_info" method="post" onsubmit="return checkFun()" autocomplete="off">
    <fieldset>
        <legend> 회원가입 화면 </legend><p></p>
        <label>
            <span>이름</span><input type="text" name="userNAME" placeholder="이름">
        </label>
        <label>
            <span>아이디</span><input type="text" name="userID" placeholder="아이디 2~16자">
        </label>
        <label>
            <span>비밀번호</span><input type="password" name="userPW" placeholder="비밀번호 6자이상">
        </label>
        <label>
            <span>이메일</span><input type="email" name="userMAIL" placeholder="이메일">
        </label>
        <br>
        <input class="button" type="reset" value="다시작성" style="color: white;">
        <input class="button" type="submit" value="가입하기" style="color: white;">
        <br><br>
    </fieldset>
</form>
</body>
</html>
