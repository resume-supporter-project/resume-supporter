<%--
  Created by IntelliJ IDEA.
  User: minchan
  Date: 2022-06-11
  Time: 오후 2:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>title입니다</title>
    <style>
        @import url(css/resumeWriteForm.css);
        /* @import */
    </style>
</head>
<body>

<header>

</header>

<section >
    <form method="post" enctype="multipart/form-data">
        <table class="basic" border="1">
            <caption>이 력 서</caption>
            <thead>
            <tr><td colspan="100">인적사항</td></tr>
            </thead>
            <tbody>
            <tr>
                <td class="image" rowspan="5"><img src=""></img><br><input type="file" accept="image/*"></td>
                <td>성 명</td><td><input type="text" name="name" placeholder="한글"></td> <td><input type="text" name="name" placeholder="영 문"></td>
            </tr>
            <tr>
                <td>생년월일</td><td colspan="2"><input type ="text" name="phone" placeholder="1900.01.01"></td>
            </tr>
            <tr>
                <td>연 락 처</td> <td colspan="2"><input type ="text" name="phone" placeholder="010-0000-0000"></td>
            </tr>
            <tr>
                <td>이 메 일</td> <td colspan="2"><input type ="text" name="phone" placeholder="asd@asd.com"></td>
            </tr>
            <tr>
                <td>주 소</td> <td colspan="2"><input type ="text" name="phone" placeholder="d" ></td>
            </tr>

            <tr><td colspan="4"><textarea rows="8" placeholder="자기를 나타내는 말 50자이내"></textarea></td></tr>
            </tbody>
        </table>
        <br>
        <table class="certificate" border="1">
            <thead>
            <tr><td colspan="100">자격사항</td></tr>
            </thead>
            <tbody>
            <tr>
                <td>자격명</td><td>취득일자</td><td>발급기관</td>
            </tr>
            <tr>
                <td><input type="text"></td><td><input type="text"></td><td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td><td><input type="text"></td><td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td><td><input type="text"></td><td><input type="text"></td>
            </tr>
            </tbody>
        </table>
        <br>
        <button type="submit">제출하기</button> <button type="reset">다시작성</button>
    </form>
</section>


<footer>

</footer>
</body>
</html>


