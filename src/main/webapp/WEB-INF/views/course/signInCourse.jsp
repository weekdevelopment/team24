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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <title>${course.course_name } 수강신청</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        .content ul {
            list-style-type: none;
        }
        .content ul >li {
            list-style-type: none;
        }
        .icon {
            color: #2B3A55;
        }
        .pagination-link.is-current {
            background-color:#2B3A55;
            border-color: #2B3A55;
        }
        .pagination-link {
            background-color: #ffffff;
        }
        .select:not(.is-multiple):not(.is-loading)::after {
            border-color: #2B3A55;
        }
        form.field.has-addons.has-addons-right {
            float: right;
            padding-top: 3px;
        }
        aside.menu {
            width: 100%;
        }
        .card {
            border-radius: 20px;
            border: 1px solid #008CD6;
        }
        .menu .box {
            border: 1px solid #008CD6;
            border-radius: 20px;
            padding: 10px;
            color: black;
            width: 93%;
            margin: -10px 30px;
            background-color: #fff;
        }
        .view_info h4 {
            font-size: 1.294rem;
            color: #222;
            font-weight: 500;
            letter-spacing: -0.7pt;
            line-height: 1;
            margin: 0 0 22px;
        }
        .view_info dl {
            display: table;
            width: 100%;
            margin: 0 0 17px;
            padding: 0px 30px;
        }
        .view_info dl dt {
            display: table-cell;
            font-weight: 400;
            color: #222;
            letter-spacing: -0.5pt;
            width: 85px;
            vertical-align: top;
            line-height: 1;
        }
        .view_info dl dd {
            letter-spacing: -0.5pt;
            display: table-cell;
            width: calc(100% - 85px);
            vertical-align: top;
            line-height: 1;
            color: black;
            text-align: left;
            padding-left: 21px;
        }
        .conwrap .box {
            margin-bottom: 50px;
            background-color: #008CD6;
        }
        .card:hover {
            transform: initial;
            border-top: 0;
        }
        .price_h4 {
            position: relative;
            font-weight: 400;
            letter-spacing: -0.7pt;
            line-height: 1;
            color: #222;
            margin: 15px 12px 20px;
        }
        #price{
            text-align: right;
            margin: 0 0 20px;
            font-size: 1rem;
            letter-spacing: -0.5pt;
            font-weight: 400;
            line-height: 1;
            display: block;
            color: #008CD6;
        }
        .price_in {
            padding: 30px 30px 0px 30px;
        }
        #course_price {
            color: #008CD6;
        }
        .total {
            background: #fff;
            padding: 25px 30px;
            border-radius: 20px;
            text-align: right;
            margin: 0 30px 30px 30px;
        }
        .total p {
            display: block;
            text-align: left;
            padding: 0;
            border: 0;
            font-size: 0;
            margin: 0 0 14px;
        }
        .total i {
            display: inline-block;
            font-size: 1rem;
            width: 115px;
            font-style: normal;
            line-height: 1;
            letter-spacing: -0.5pt;
            text-align: left;
            vertical-align: top;
        }
        .total p b {
            display: inline-block;
            margin: 0;
            width: calc(100% - 115px);
            text-align: right;
            line-height: 1;
            vertical-align: top;
            font-size: 1rem;
        }
        .total h4 {
            font-size: 0;
            padding: 15px 0 0;
            margin: 15px 0 0;
            border-top: 1px solid #ddd;
        }
        .total h4 .pointColor .price {
            display: inline-block;
            font-size: 1rem;
            width: calc(100% - 115px);
            text-align: right;
            margin-left: 0;
        }
        #total_price {
            font-size: 1.14rem;
            color: #008CD6;
        }
        .applyBtn {
            clear: both;
            margin: 13px 0;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .menu-list .applyBtn a {
            clear: both;
            width: 115px;
            height: 47px;
            line-height: 32px;
            border-radius: 55px;
            vertical-align: middle;
            background-repeat: no-repeat;
            box-sizing: border-box;
            letter-spacing: -0.5pt;
            font-weight: bold;
            background-color: #fff;
            color: #008CD6;
            white-space: nowrap;
            font-size: 16px;
        }
        .applyBtn a.cart {
            margin-right: 4px;
        }
        .applyBtn button.apply {
            margin-right: 4px;
            background-color: #008CD6;
            color: #fff;
            clear: both;
            width: 115px;
            height: 47px;
            line-height: 32px;
            border-radius: 55px;
            vertical-align: middle;
            background-repeat: no-repeat;
            box-sizing: border-box;
            letter-spacing: -0.5pt;
            font-weight: bold;
            white-space: nowrap;
            font-size: 16px;
            border:0;
        }
        .breadcrumb a {
            color: #464646;
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
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a href="${path1}/course/list.do">수강신청</a></li>
        <li><a href="${path1 }/course/getCourse?cno=${course.cno }" aria-current="page">수강신청</a></li>
        <li><a href="${path1}/course/signIn?cno=${course.cno}&book=${book }" aria-current="page">결제하기</a></li>
    </ul>

    <p class="title has-text-centered mt-1 mb-2">결제하기</p>
</nav>
<div class="container is-fullhd" style="min-height: 1000px;">
    <div class="columns">
        <div class="column is-8">
            <div class="conwrap">
                <div class="box">
                    <span class="title" style="color: #ffffff; ">${course.course_name }</span>
                </div>
            </div>
            <div class="card article">
                <div class="card-content">
                    <div class="media">
                        <div class="media-content has-text-centered">
                            <h1 class="title article-title">${course.course_name } 수강신청</h1>
                        </div>
                    </div>
                    <hr>

                    <div class="content article-body" style="min-height: 220px">
                        <p style="padding: 20px 100px; min-height: 100px; font-size: 18px;">
                            결제 항목
                            <br>
                            ${course.course_name }  |  ${course.teacher_name } 강사
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <div class="column is-4" style="padding-top:0px;">
            <aside class="menu">
                <!-- <span class="box has-text-white has-text-weight-semibold has-text-centered is-size-5" style="color: black;">
                    과정정보
                </span> -->
                <ul class="menu-list">
                    <li>
                        <!-- 수강료 안내 -->
                        <div class="price_in">
                            <div class="price_scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
                                <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
                                    <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                        <p class="price_h4">결제상세</p>
                                        <span class="pointColor price" id="price"><strong id="course_price" class="eng"></strong></span>
                                    </div>
                                    <!--<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
                                        <div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
                                            <div class="mCSB_dragger_bar" style="line-height: 30px;">
                                            </div>
                                        </div>
                                            <div class="mCSB_draggerRail">
                                            </div>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                        <!-- 최종 금액 -->
                        <div class="total">
                            <p>
                                <i>강의금액</i>
                                <b id="sum_price">${course.price }원</b>
                            </p>
                            <p>
                                <i>교재금액</i>
                                <b id="book_price">
                                    <c:if test="${book == 1}">
                                        ${course.book_price }원
                                    </c:if>
                                    <c:if test="${book == 0}">
                                        0원
                                    </c:if>
                                </b>
                            </p>
                            <!--<p>
                                <i>할인금액</i>
                                <b id="discount_price" class="red">0원</b>
                            </p>-->
                            <h4><i style="margin-top: 8px; margin-right: 16px;">총 결제금액</i><span class="pointColor price">
                                <strong id="total_price" class="eng">
                                    <c:if test="${book == 1}">
                                        ${course.book_price +course.price }원
                                    </c:if>
                                    <c:if test="${book == 0}">
                                        ${course.price }원
                                    </c:if>
                                </strong></span></h4>
                        </div>
                        <!-- 신청 버튼-->
                        <form action="${path1 }/course/signIn" method="post">
                            <div class="applyBtn">
                                <a href="${path1 }/course/getCourse?cno=${course.cno }" class="cart pointColor pointBorder"><i class="fa-solid fa-cart-shopping"></i>취소</a>
                                <button id="apply" class="apply bgColor"><i class="icofont-credit-card"></i> 결제하기</button>
                            </div>
                            <!-- hidden으로 form 넘기기 -->
                            <c:if test="${book == 1}">
                                <input type="hidden" id="enroll_price" name="enroll_price" value="${course.book_price +course.price }">
                            </c:if>
                            <c:if test="${book == 0}">
                                <input type="hidden" id="enroll_price" name="enroll_price" value="${course.price }">
                            </c:if>
                            <input type="hidden" id="book" name="book" value="${book }">
                            <input type="hidden" id="cno" name="cno" value="${course.cno }">
                            <input type="hidden" id="id" name="id" value="${sid }">
                            <input type="hidden" id="book_name" name="book_name" value="${course.book_name }">
                        </form>
                    </li>
                </ul>
            </aside>
        </div>
    </div>
</div>
<script>

</script>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>

