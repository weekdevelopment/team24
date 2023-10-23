<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
    <title>글 쓰기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp" />
    <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
    .breadcrumb a { color: #464646; }

    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

    /*
    *{
        font-family: 'Nanum Gothic Coding', monospace;
    } */

    .table th {
        white-space: nowrap;
        vertical-align: middle;
    }
    .table input[type="file"] {
        width: 28rem;
    }
</style>

<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a href="${path1}/video/list.do">시범강의</a></li>
        <li><a href="${path1}/video/insert.do">영상 업로드</a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">시범강의</p>
</nav>

<div class="container">
    <div class="columns">
        <div class="column is-10 is-offset-1">
            <form action="${path1 }/video/insert.do" method="post" enctype="multipart/form-data">
                <input type="hidden" name="site" value="${site}" />
                <table class="table is-centered is-fullwidth">
                    <tbody>
                    <tr class="border-top">
                        <th class="has-text-centered">제목</th>
                        <td>
                            <input type="text" name="title" id="title" class="input" placeholder="제목" maxlength="98" required>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">이미지</th>
                        <td>
                            <input type="file" name="img" id="img" class="input" placeholder="이미지" required>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">영상</th>
                        <td>
                            <input type="file" name="videofile" id="videofile" class="input" accept="video/mp4,video/mkv, video/x-m4v,video/*" placeholder="영상" required>
                            <%--<video id="video"></video>--%>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">내용</th>
                        <td>
                            <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
                            <script>
                                CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/video/imageUpload.do'});
                            </script>
                        </td>
                    </tr>
                    <tr class="border-bottom">
                        <th class="has-text-centered">선생님</th>
                        <td>
                            <input type="text" name="teacher" id="teacher" class="input" placeholder="선생님" maxlength="98" style="width: 13.6rem;" required>
                        </td>
                    </tr>
                    <%--<tr>
                        <td colspan="2">
                            <input type="submit" class="button2" value="등록" >
                            <a class="button" href="${path1 }/video/list.do">목록으로</a>
                        </td>
                    </tr>--%>
                    </tbody>
                </table>
                <div class="has-text-centered">
                    <button type="submit" class="button is-link mb-5 p-5" style="border-radius: 1.5rem;">등록하기</button>
                </div>
            </form>
        </div>
        <div class="column is-1"></div>
    </div>
</div>


<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>