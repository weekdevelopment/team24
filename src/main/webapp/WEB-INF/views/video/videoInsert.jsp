<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 쓰기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>

    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

    *{
        font-family: 'Nanum Gothic Coding', monospace;
    }

    .h2{
        font-family: 'Nanum Gothic Coding', monospace;
    }

    .button {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #1D7151;
        border-color: #1D7151;
        color: #ffffff;
    }
    .button2 {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #FFA500;
        border-color: #FFA500;
        color: #ffffff;
    }

    .column1 {
        text-align: center;
        display: block;
        flex-basis: 0;
        flex-grow: 1;
        flex-shrink: 1;
        padding: 0.75rem;
    }
</style>

<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a style="color: black;" href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a style="color: black;"href="${path1}/video/list.do">시범강의</a></li>
        <li><a style="color: black; "href="${path1}/video/insert.do">영상 올리기</a></li>
    </ul>
</nav>
<div class="container is-fullhd">
    <div class="content" id="contents">
        <div class="row column1 text-center">
            <h2 class="h2">시범 강의 올리기</h2>
            <hr>
            <div class="container">
                <form action="${path1 }/video/insert.do" method="post" enctype="multipart/form-data">
                    <table id="table1">
                        <tbody>
                        <tr>
                            <th style="background-color:#dcdcdc">제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="input" placeholder="제목 입력" maxlength="98" required>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">List <br> 이미지</th>
                            <td>
                                <input type="file" name="img" id="img" class="input" placeholder="이미지" required>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">영상</th>
                            <td>
                                <input type="file" name="videofile" id="videofile" class="input" accept="video/mp4,video/mkv, video/x-m4v,video/*" placeholder="영상" required>
                                <video id="video"></video>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">내용</th>
                            <td>
                                <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
                                <script>
                                    CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/video/imageUpload.do'});
                                </script>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">선생님</th>
                            <td>
                                <input type="text" name="teacher" id="teacher" class="input" placeholder="선생님 입력" maxlength="98" required>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button2" value="등록" >
                                <a class="button" href="${path1 }/video/list.do">목록으로</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>