<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>마이페이지 - 수강 </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <!-- Bulma Version 0.9.0-->
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.4/css/bulma.min.css" />
    <link rel="stylesheet" type="text/css" href="${path1 }/resources/css/admin.css" />
    <link rel="stylesheet" type="text/css" href="${path1 }/resources/css/hero.css" />
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start;
        }
    </style>
</head>

<body>

<!-- START NAV -->
<jsp:include page="../include/header.jsp"></jsp:include>

<!-- END NAV -->
<div class="container">
    <div class="columns" style="min-height:100vh">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <ul class="menu-list">
                    <li>
                        <a>수강 현황</a>
                        <ul>
                            <li><a href="${path1 }/course/mypageCourse?complete=0">수강 중인 과정</a></li>
                            <li><a href="${path1 }/course/mypageCourse?complete=1">종료된 과정</a></li>
                        </ul>
                    </li>
                </ul>
            </aside>
        </div>
        <div class="column is-9">
            <section class="hero is-info welcome is-small">
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title">
                            Hello, ${user.name }님!!
                        </h1>
                        <h2 class="subtitle">
                            I hope you are having a great day!
                        </h2>
                    </div>
                </div>
            </section>
<%--            <section class="info-tiles">--%>
<%--                <div class="tile is-ancestor has-text-centered">--%>
<%--                    <div class="tile is-parent">--%>
<%--                        <article class="tile is-child box">--%>
<%--                            <p class="title">439k</p>--%>
<%--                            <p class="subtitle">Users</p>--%>
<%--                        </article>--%>
<%--                    </div>--%>
<%--                    <div class="tile is-parent">--%>
<%--                        <article class="tile is-child box">--%>
<%--                            <p class="title">59k</p>--%>
<%--                            <p class="subtitle">Products</p>--%>
<%--                        </article>--%>
<%--                    </div>--%>
<%--                    <div class="tile is-parent">--%>
<%--                        <article class="tile is-child box">--%>
<%--                            <p class="title">3.4k</p>--%>
<%--                            <p class="subtitle">Open Orders</p>--%>
<%--                        </article>--%>
<%--                    </div>--%>
<%--                    <div class="tile is-parent">--%>
<%--                        <article class="tile is-child box">--%>
<%--                            <p class="title">19</p>--%>
<%--                            <p class="subtitle">Exceptions</p>--%>
<%--                        </article>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </section>--%>
            <div class="columns" style="margin:0; padding:0">
                <div class="columns features" style="margin:0; padding:0">
                    <div class="card-container">
                    <c:forEach var="enroll" items="${getEnrollList }">
                    <div class="column is-4">
                        <div class="card is-shady">
                            <div class="card-image">
                                <figure class="image is-4by3">
                                    <img src="https://images.unsplash.com/photo-1515555230216-82228b88ea98?auto=format&amp;fit=crop&amp;w=900&amp;q=60" alt="Placeholder image" class="modal-button" data-target="modal-image2">
                                </figure>
                            </div>
                            <div class="card-content">
                                <div class="content">
                                    <h4>${enroll.course_name }</h4>
                                    <h4>수강 종료일 | ${enroll.end_date }</h4>
                                    <form action="${path1 }/course/complete" method="post">
                                        <button class="button is-link modal-button" data-target="modal-image2">수강 완료</button>
                                        <input type="hidden" id="eno" name="eno" value="${enroll.eno }" >
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </div>
                    <c:if test="${empty getEnrollList}">
                        <tr>
                            <td colspan="4">수강 중인 강좌가 없습니다.</td>
                        </tr>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script async type="text/javascript" src="${path1 }/resources/js/bulma.js"></script>
</body>

</html>