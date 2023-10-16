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
    .container { margin-top: 70px; }
    .column.is-6, .column.is-6-tablet { width: 100%; }
  </style>
</head>
<body>

<jsp:include page="../include/hd.jsp" />

<div class="container">
  <div class="columns">
    <div class="column is-3 ">
      <aside class="menu is-hidden-mobile">
        <p class="menu-label">
          회원관리
        </p>
        <ul class="menu-list">
          <li><a class="is-active">Dashboard</a></li>
          <li><a href="${path1 }/admin/userList.do">회원목록 조회 및 변경</a></li>
        </ul>
        <p class="menu-label">
          수강신청 관리
        </p>
        <ul class="menu-list">
          <li><a>과목 관리</a></li>
          <li>
            <a>수강 내역 관리</a>
            <ul>
              <li><a>내역 1</a></li>
              <li><a>내역 2</a></li>
              <li><a>내역 3</a></li>
              <li><a>내역 4</a></li>
            </ul>
          </li>
          <li><a>Invitations</a></li>
          <li><a>Cloud Storage Environment Settings</a></li>
          <li><a>Authentication</a></li>
          <li><a>Payments</a></li>
        </ul>
        <p class="menu-label">
          무료강의
        </p>
        <ul class="menu-list">
          <li><a>Payments</a></li>
          <li><a>Transfers</a></li>
          <li><a>Balance</a></li>
          <li><a>Reports</a></li>
        </ul>
        <p class="menu-label">
          커뮤니티 관리
        </p>
        <ul class="menu-list">
          <li><a>공지사항 관리</a></li>
          <li><a>자주 묻는 질문 관리</a></li>
          <li><a>질문하기 관리</a></li>
          <li><a>상담소개 관리</a></li>
        </ul>
        <p class="menu-label">
          자료실
        </p>
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
              <table>
                <thead>
                <th>ID</th>
                </thead>
                <tbody>
                <tr>
                  <td>${userList.id }</td>
                </tr>
                </tbody>
              </table>
              <a href="#" class="card-header-icon" aria-label="more options">
                  <span class="icon">
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                  </span>
              </a>
            </header>
          </div>
        </div>
        <jsp:include page="../include/ft.jsp" />
        <script async type="text/javascript" src="${path1 }/resources/js/bulma.js"></script>
</body>
</html>