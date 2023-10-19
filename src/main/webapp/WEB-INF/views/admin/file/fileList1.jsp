<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자료실 관리자 페이지</title>
    <jsp:include page="../../include/head.jsp"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <!-- Bulma Version 0.9.0-->
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.4/css/bulma.min.css"/>
    <link rel="stylesheet" type="text/css" href="${path1 }/resources/css/admin.css">

    <style>
        .column.is-6, .column.is-6-tablet {
            width: 100%;
        }
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
            border-top: 2px solid #666;
        }

        .box_wrap thead th {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: center;
        }

        .box_wrap tbody td {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: center;
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

        .paginate {
            list-style-type: none;
            width: 100%;
            margin-top: 40px;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
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

        .item1, .item2, .item3, .item4 {
            font-size: 18px;
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

        #tb1 { width:980px; margin:40px auto; }
        #tb1 th { background-color: #00A2FF; color: #fff; font-size: 20px; }
        .item1 { width:10%; }
        .item2 { width:65%; }
        .item3 { width:10%; }
        .item4 { width:15%; }
        #page-nation1 { width: 960px; margin: 20px auto; }
    </style>
</head>
<body>

<jsp:include page="../../include/header.jsp"/>

<div class="container">
        <div class="container">
            <div class="columns">
                <div class="column is-3 ">
                    <aside class="menu is-hidden-mobile">
                        <p class="menu-label">
                            회원관리
                        </p>
                        <ul class="menu-list">
                            <li><a href="${path1 }/admin/userList.do">회원목록 조회 및 변경</a></li>
                        </ul>
                        <p class="menu-label">
                            수강신청 관리
                        </p>
                        <ul class="menu-list">
                            <li><a>수강신청 관리</a></li>
                            <li><a>개강일정 관리</a></li>
                        </ul>
                        <p class="menu-label">
                            시범강의 관리
                        </p>
                        <ul class="menu-list">
                            <li><a>시범강의 관리</a></li>
                        </ul>
                        <p class="menu-label">
                            커뮤니티 관리
                        </p>
                        <ul class="menu-list">
                            <li><a>공지사항 관리</a></li>
                            <li><a>자주 묻는 질문 관리</a></li>
                            <li><a>후기 관리</a></li>
                        </ul>
                        <p class="menu-label">
                            자료실 관리
                        </p>
                        <ul class="menu-list">
                            <li><a>자료실 관리</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="column is-9">
                    <section class="hero is-info welcome is-small">
                        <div class="hero-body">
                            <div class="container">
                                <h1 class="title">
                                    관리자 페이지
                                </h1>
                                <h2 class="subtitle">
                                    관리자 페이지에 오신 것을 환영합니다.
                                </h2>
                            </div>
                        </div>
                    </section>
                    <div class="columns">
                        <div class="column is-6">
                            <div class="card events-card">
                                <header class="card-header">
                                    <p class="card-header-title">
                                        회원 목록
                                    </p>
                                    <div>
                                        <table>
                                            <thead>
                                            <tr>
                                                <th>ID</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>${userList.id }</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <a href="#" class="card-header-icon" aria-label="more options">
                  <span class="icon">
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                  </span>
                                    </a>
                                </header>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <h2 class="title">자료실 목록</h2>
                        <h3 class="contents">강의 및 교재에 대한 자료를 등록하는 곳입니다.</h3>
                        <br>
                        <form action="${path1 }/file/filelist1.do" method="get" class="field has-addons has-addons-right" style="margin-right: 315px;">
                            <p class="control">
            <span class="select">
                <select id="type" name="type">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
            </span>
                            </p>
                            <p class="control">
                                <input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">
                            </p>
                            <p class="control">
                                <input type="submit" class="button is-mainColor" value="검색" />
                            </p>
                        </form>
                        <br>
                        <div class="box_wrap">
                            <table class="notice-list" id="tb1">
                                <thead>
                                <tr>
                                    <th class="item1">번호</th>
                                    <th class="item2">제목</th>
                                    <th class="item3">아이디</th>
                                    <th class="item4">등록일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="board" items="${fileboardList}" varStatus="status">
                                    <tr>
                                        <td class="item1">${board.fileBoard.postNo}</td>
                                        <td class="item2">
                                            <a href="${path1}/file/getFileboard.do?postNo=${board.fileBoard.postNo}" class="al">${board.fileBoard.title}</a>
                                        </td>
                                        <td class="item3">${file.id }</td>
                                        <td class="item4">${file.regdate}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <c:if test="${sid.equals('admin')}">
                                <div class="button-group">
                                    <a class="button2" href="${path1}/file/fileupload1.do">파일 자료 등록</a>
                                </div>
                            </c:if>
                        </div>
                    </div>

                    <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                        <c:if test="${curPage > page.pageCount }">
                            <a href="${path1 }/file/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>
                        </c:if>
                        <c:if test="${page.blockLastNum < page.totalPageCount }">
                            <a href="${path1 }/file/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>
                        </c:if>

                        <ul class="pagination-list">
                            <c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
                                <c:choose>
                                    <c:when test="${i == curPage }">
                                        <li>
                                            <a href="${path1 }/file/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page" >${i }</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li>
                                            <a href="${path1 }/file/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </ul>
                    </nav>
                </div>
                </div>
            </div>
        </div>
        <script>
            function checkLogin() {
                var confirmLogin = confirm("글 작성은 로그인이 필요해요! 로그인하시겠어요?");
                if (confirmLogin) {
                    location.href = '${path1 }/user/loginForm';
                }
            }
        </script>
                <script async type="text/javascript" src="${path1 }/resources/js/bulma.js"></script>
</body>
</html>