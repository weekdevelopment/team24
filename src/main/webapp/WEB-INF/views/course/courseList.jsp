<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <title>수강신청</title>
    <jsp:include page="../include/head.jsp" />
    <style>
        .breadcrumb a { color: #464646; }
        /*.pagination-link.is-current {
            background-color:#2B3A55;
            border-color: #2B3A55;
        }
        .pagination-link {
            background-color: #ffffff;
        }*/
        /*.select:not(.is-multiple):not(.is-loading)::after {
            border-color: #2B3A55;
        }*/
    </style>

</head>
<body>
<!-- Header Start -->
<jsp:include page="../include/header.jsp" />
<!-- Header Close -->

<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a href="${path1}/course/list.do">강의수강</a></li>
        <li><a href="${path1}/course/list.do">수강신청</a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">수강신청</p>
</nav>

<div class="container">
    <div class="columns is-multiline mt-1 mx-5">
        <div class="column is-4">
            <form action="${path1 }/course/list.do" method="get" class="field has-addons">
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
                    <input type="submit" class="button" value="검색" />
                </p>
            </form>
        </div>
        <div class="column is-2 is-offset-6 has-text-right">
            <c:if test="${sid.equals('admin')}">
                <a class="button is-link is-medium" href="${path1 }/course/insert.do">강의 등록</a>
            </c:if>
        </div>

        <div class="column is-12 border-top">
            <c:forEach items="${courseList }" var="course">
                <article class="columns is-multiline is-justify-content-center mb-3 border-bottom">
                    <div class="column is-3">
                        <img src="${path1 }/resources/upload/${course.imgsrc1 }" alt="강의사진" style="border-radius: 20px; width:300px; max-height: 200px;" >
                    </div>
                    <div class="column is-6" style="display: flex; flex-direction: column; justify-content: center;">
                        <p class="is-size-5" style="margin-top: -12px;">
                            <a href="${path1 }/course/getCourse?cno=${course.cno }">${course.course_name }</a>
                        </p>
                        <span>수강료 : <fmt:formatNumber value="${course.price }" pattern="#,###" />원</span>
                    </div>
                    <div class="column is-3" style="display: flex; flex-direction: column; justify-content: center;">
                        <p style="margin-top: -12px; text-align: center">
                            <a href="${path1 }/course/getCourse?cno=${course.cno }" class="button is-info is-medium" style="border-radius: 100px">
                                <i class="icofont-pencil"> 수강신청</i>
                            </a>
                        </p>
                    </div>
                </article>
            </c:forEach>
        </div>
    </div>
    <br>
</div>

<nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
    <c:if test="${curPage > page.pageCount }">
        <a href="${path1 }/course/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>
    </c:if>
    <c:if test="${page.blockLastNum < page.totalPageCount }">
        <a href="${path1 }/course/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>
    </c:if>

    <ul class="pagination-list">
        <c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
            <c:choose>
                <c:when test="${i == curPage }">
                    <li>
                        <a href="${path1 }/course/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page" >${i }</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a href="${path1 }/course/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </ul>
</nav>

<!-- Footer Start -->
<jsp:include page="../include/footer.jsp" />
<!-- Footer Close -->
</body>
</html>
