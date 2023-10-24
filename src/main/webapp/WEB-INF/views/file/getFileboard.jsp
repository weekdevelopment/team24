<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <title>자료실 상세보기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%--  <%@ include file="../common.jsp"%>--%>
</head>

<style>

    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

    /*
    *{
        font-family: 'Nanum Gothic Coding', monospace;
    } */

/*    .h2{
        font-family: 'Nanum Gothic Coding', monospace;
        font-weight: 400;
        line-height: 110px;
        text-align: center;
        font-size: 1.75em;
        margin-bottom: 0.5714em;
    }

    .content h2 {
        line-height: 120px;
        font-size: 1.75em;
        margin-bottom: 0.5714em;
    }

    .button {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #008CD6;
        border-color: #008CD6;
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
    .button3 {
        text-decoration: none;
        border-radius: 20px;
        margin: 15px;
        padding: 10px;
        float: right;
        background-color: #FF968A;
        border-color: #FF968A;
        color: #ffffff;
    }*/
    .single-blog-item {
        min-height: 35vh;
    }

    .blog-item-content hr {
        margin-top: 0;
    }

    .blog-item-content p {
        color: black;
        font-size: 1.25rem;
    }

    .btns .button {
        width: 6rem;
    }
</style>

<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a>자료실</a></li>
        <li><a href="${path1}/file/getFileboard.do"> 파일 상세보기 </a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">자료실</p>
</nav>

<div class="container">
    <div class="columns is-multiline mt-1">
        <div class="column is-12 mb-5 border-top">
            <div class="single-blog-item">
                <div class="blog-item-content ml-6 mt-3">
                    <%--<h2 class="mt-4">A place where start new life with peace</h2>--%>
                    <p class="has-text-black has-text-weight-semibold mt-1" style="font-size: 1.75rem;">${fileboard.fileBoard.title }</p>

                    <div class="blog-item-meta py-2 mb-4">
                        <span class="is-size-6 mr-3">작성자
                            <span class="is-size-6 has-text-grey ml-1">관리자</span>
                        </span> |
                        <span class="is-size-6 mx-3">작성일
                            <span class="is-size-6 has-text-grey ml-1">${fileboard.fileBoard.regdate }</span>
                        </span> |
                        <span class="is-size-6 mx-3">조회수
                            <span class="is-size-6 has-text-grey ml-1">${fileboard.fileBoard.visited }</span>
                        </span>
                    </div>
                    <hr>
                    <span>첨부파일</span>
                    <c:forEach var="file" items="${fileboard.fileList}">
                        <li class="px-2" style="display: inline-block;">
                            <a href="${path1}/resources/upload/${file.originFile}" title="${file.fileSize}"
                               download>${file.originFile}</a>
                        </li>
                    </c:forEach>
                    <div class="mt-5">
                        <p>
                            ${fileboard.fileBoard.content }
                        </p>
                    </div>
                </div>
            </div>

            <div class="btns has-text-centered">
                <c:choose>
                    <c:when test="${sid.equals('admin')}">
                        <a class="button mx-1" style="background-color: #2B3A55; color: #fff;" href="${path1 }/file/list.do">목록</a>
                            <a class="button is-info mx-1" href="${path1}/file/modifyFileboard.do?postNo=${fileboard.fileBoard.postNo}">수정</a>
                        <a class="button is-danger mx-1" href="${path1}/file/removeFileboard.do?postNo=${fileboard.fileBoard.postNo}">삭제</a>
                    </c:when>
                    <c:otherwise>
                        <a class="button mx-1" style="background-color: #2B3A55; color: #fff;" href="${path1 }/file/list.do">목록</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>


<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>