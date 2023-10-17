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
    .column.is-6 { width:100%; }
    .card-header { font-size: 1.2em; font-family: "Nanum Gothic Coding"; font-weight: bolder; color:#00A2FF; margin-top:20px; margin-bottom: 20px; }
    .table td, .table th { font-size: 0.8em; }
    .hero.welcome .title, .hero.welcome .subtitle { font-family: "Nanum Gothic Coding";  }

    .item1 { width : 10%; }
    .item2 { width : 10%; }
    .item3 { width : 10%; }
    .item4 { width : 10%; }
    .item5 { width : 15%; }
    .item6 { width : 25%; }
    .item7 { width : 10%; }
    .item8 { width : 10%; }
    .item9 { width : 10%; }
    .item10 { width : 5%; }
    .item11 { width : 5%; }

  </style>
</head>
<body>
<jsp:include page="../include/header.jsp" />
<div class="container">
  <div class="columns">
    <div class="column is-3 ">
      <%-- 관리자 네비게이션 바 --%>
      <jsp:include page="../include/asideBar.jsp" />
    </div>
    <div class="column is-9">
      <section class="hero is-info welcome is-small">
        <div class="hero-body">
          <div class="container">
            <h1 class="title">
              관리자 페이지
            </h1>
            <h2 class="subtitle">

            </h2>
          </div>
        </div>
      </section>
      <div class="columns">
        <div class="column is-6">
          <header class="card-header">
            회원 목록
          </header>
          <div class="card events-card">
            <div>
              <p>
              <table class="table">
                <thead>
                  <th>번호</th>
                  <th>아이디</th>
                  <th>이름</th>
                  <th>이메일</th>
                  <th>전화번호</th>
                  <th>주소</th>
<%--                  <th>가입일</th>--%>
<%--                  <th>생년월일</th>--%>
                  <th>포인트</th>
                  <th>회원수정</th>
                  <th>회원삭제</th>

                </thead>
                <tbody>
                <c:forEach var="user" items="${userList }" varStatus="status">
                  <c:if test="${(user.id != 'admin') }">
                  <tr>
                    <td class="item1">${status.count -1 }</td>
                    <td class="item2">
                      ${user.id }
                    </td>
                    <td class="item3">${user.name }</td>
                    <td class="item4">${user.email }</td>
                    <td class="item5">${user.tel }</td>
                    <td class="item6">(${user.postcode }) ${user.addr1 } ${user.addr2 } </td>
<%--                    <td class="item7">${user.regdate }</td>--%>
<%--                    <td class="item8">${user.birth }</td>--%>
                    <td class="item9">${user.pt }</td>
                    <td class="item10"><a href="${path1 }/admin/aGetUser?id=${user.id }"><button class="button is-primary is-rounded" style="scale: 70%;">수정</button></a></td>
                    <td class="item11"><a href="${path1 }/admin/userDelete.do?id=${user.id }"><button class="button is-danger is-rounded" style="scale: 70%;">삭제</button></a></td>
                    <td></td>
                  </tr>
                  </c:if>
                </c:forEach>
                </tbody>
              </table>
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