<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>메인</title>
  <jsp:include page="../include/head.jsp" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
  <!-- Bulma Version 0.9.0-->
  <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.4/css/bulma.min.css" />
  <link rel="stylesheet" type="text/css" href="${path1 }/resources/css/admin.css">

  <style>
  </style>
</head>
<body>
<jsp:include page="../include/header.jsp" />
    <div class="container">
      <div class="columns">
        <div class="column is-3 ">
          <aside class="menu is-hidden-mobile">
            <p class="menu-label">
              회원관리
            </p>
            <ul class="menu-list">
          <li><a href="/admin/" class="is-active">Dashboard</a></li>
             <li><a href="${path1 }/admin/userList.do">회원목록 조회 및 변경</a></li>
<%--          <li>--%>
<%--            <a>수강 내역 관리</a>--%>
<%--            <ul>--%>
<%--              <li><a>내역 1</a></li>--%>
<%--              <li><a>내역 2</a></li>--%>
<%--              <li><a>내역 3</a></li>--%>
<%--              <li><a>내역 4</a></li>--%>
<%--            </ul>--%>
<%--          </li>--%>
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
              <li><a href="${path1 }/admin/notice/list.do">공지사항 관리</a></li>

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
                    통계, 작업 예정 중
                </header>
                <div>
                    <p>
                        총 회원수
                    </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <script async type="text/javascript" src="${path1 }/resources/js/bulma.js"></script>
    </div>
<jsp:include page="../include/footer.jsp" />
</body>
</html>