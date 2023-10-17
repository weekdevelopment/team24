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
    <link rel="stylesheet" href="${path0}/resources/css/styles2.css" />
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
            min-width: 100%;
        }
        p {
            font-size: 1.294rem;
            color: #222;
            font-weight: 500;
            letter-spacing: -0.7pt;
            line-height: 1;
            margin: 0 0 22px;
        }
        .menu-list li{
            padding: 5px;
            border: 1px solid #ccc;
            margin: 1px 0;
            border-radius: 20px;
            background-color: #f1f4f9;
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
            <section class="info-tiles">
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
                <c:if test="${enrollNum ne null}">
                    <p>학습 현황 그래프</p>
                    <progress class="progress is-large is-success" style="height:2rem;" value="${enrollNum*size }" max="100"></progress>
                    <c:if test="${enrollNum*size >= 100 }">
                        <p>❤️👍💖💫모든 강좌를 수강완료하였습니다!💝🎉🎊🎇</p>
                    </c:if>
                </c:if>
            </section>
            <div class="columns" style="margin:0; padding:0">
                <div class="columns features" style="margin:0; padding:0">
                    <div class="card-container">
                        <c:forEach var="enroll" items="${getEnrollList }">
                            <div class="column is-4">
                                <div class="card is-shady">
                                    <div class="card-image">
                                        <figure class="image is-4by3">
                                            <img src="${path1 }/resources/upload/${enroll.imgsrc1 }" alt="Placeholder image" class="modal-button" data-target="modal-image2">
                                        </figure>
                                    </div>
                                    <div class="card-content">
                                        <div class="content">
                                            <h4>${enroll.course_name }</h4>
                                            <h4>수강 종료일 | ${enroll.end_date }</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:if test="${empty getEnrollList }">
                            <tr>
                                <td colspan="4">수강 종료된 강좌가 없습니다.</td>
                            </tr>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script async type="text/javascript" src="${path1 }/resources/js/bulma.js"></script>
</body>

</html>