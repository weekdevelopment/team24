<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자료실</title>
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

        * {
            font-family: 'Nanum Gothic Coding', monospace;
        }

        .title {
            font-family: 'Nanum Gothic Coding', monospace;
            margin-top: 55px;
            text-align: center;
            font-weight: 700;
        }

        .contents {
            font-family: 'Nanum Gothic Coding', monospace;
            text-align: center;
            font-weight: 200;
        }

        .container {
            max-width: 1280px;
            border-radius: 5px;
            text-align: center; /* 컨테이너 내부의 요소들을 가운데 정렬 */
        }

        .box_wrap {
            margin-top: 15px;
        }

        .review-list th:nth-child(1) {
            width: 12%;
        }

        .box_wrap {
            border-top: #000 2px solid;
        }

        *, *:before, *:after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        .box_wrap thead th {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: center;
        }

        .box_wrap tbody td {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: left; /* Adjusted to left-align content */
        }

        .item2 .al {
            text-decoration: none;
            color: black;
            display: block;
            text-overflow: ellipsis;
            max-height: 2.8em;
            line-height: 3.4em;
            word-wrap: break-word;
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            word-break: keep-all;
        }

        .paginate .page-item {
            margin: 0 5px;
        }

        .paginate .page-link {
            display: inline-block;
            width: 34px;
            height: 34px;
            border: 1px solid #ddd;
            background-color: #f8f9fa;
            color: #333;
            font-size: 14px;
            line-height: 32px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }

        .paginate .page-link:hover {
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }

        .button2 {
            text-decoration: none;
            border-radius: 20px;
            margin: 15px;
            padding: 10px;
            float: right;
            background-color: #008CD6;
            border-color: #008CD6;
            color: #ffffff;
        }
        table {
            table-layout: fixed;
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
        }

        tbody {
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }

        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }

        /* Bulletin Board Style Modifications */
        .container {
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .box_wrap {
            border-top: 2px solid #007bff; /* Adjusted border color */
        }

        .box_wrap thead th {
            text-align: center;
        }

        .box_wrap tbody td {
            padding: 10px 5px; /* Reduced padding for a compact look */
            border-bottom: none; /* Removed the border-bottom */
        }

        .box_wrap a {
            text-decoration: none;
            color: #007bff; /* Link color adjusted */
        }

        .box_wrap a:hover {
            text-decoration: underline; /* Underline on hover for links */
        }
    </style>
</head>
<body>

<!-- Header Start -->
<jsp:include page="../include/header.jsp" />
<!-- Header Close -->

<!-- Content Start -->
<div class="container">
    <h2 class="title">파일 자료 상세보기</h2>
    <h3 class="contents">강의 및 교재에 대한 자료를 등록하는 곳입니다.</h3>
    <br>
    <div class="container">
        <table class="box_wrap">
            <tbody>
            <tr>
                <th>글 번호</th>
                <td>${fileboard.fileBoard.postNo}</td>
            </tr>
            <tr>
                <th>글 제목</th>
                <td>${fileboard.fileBoard.title}</td>
            </tr>
            <tr>
                <th>글 내용</th>
                <td>${fileboard.fileBoard.content}</td>
            </tr>
            <tr>
                <th>첨부 파일</th>
                <td>
                    <c:forEach var="file" items="${fileboard.fileList}">
                        <a href="${path1}/resources/upload/${file.originFile}" title="${file.fileSize}" download>${file.originFile}</a>
                    </c:forEach>
                    <c:if test="${empty fileboard.fileList}">
                        첨부된 파일이 없습니다.
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${fileboard.fileBoard.regdate}</td>
            </tr>
            <tr>
                <th>조회수</th>
                <td>${fileboard.fileBoard.visited}</td>
            </tr>
            <tr>
                <td style="align-items: center">
                    <a href="${path1}/file/list.do" class="button2">파일 자료 목록</a>
                    <c:if test="${sid.equals('admin')}">
                        <a href="${path1}/file/removeFileboard.do?postNo=${fileboard.fileBoard.postNo}" class="button2">자료 삭제</a>

                        <a href="${path1}/file/modifyFileboard.do?postNo=${fileboard.fileBoard.postNo}" class="button2">자료 수정</a>
                    </c:if>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</div>
<!-- Content Close -->

<!-- Add Bootstrap JS and jQuery script links here -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Footer Start -->
<jsp:include page="../include/footer.jsp" />
<!-- Footer Close -->
</body>
</html>
