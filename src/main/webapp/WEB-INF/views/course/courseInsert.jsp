<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>강의 등록</title>
  <jsp:include page="../include/head.jsp" />
  <style>
    .breadcrumb a {
      color: #464646;
    }
    .table th {
      white-space: nowrap;
    }
    .table input[type="number"], .table input[type="date"]  {
      width: 13.6rem;
    }
    .table input[type="file"] {
      width: 28rem;
    }

  </style>

</head>
<body>
<!-- Header Start -->
<jsp:include page="../include/header.jsp" />
<!-- Header Close -->

<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
  <ul class="mr-5">
    <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
    <li><a href="${path1}/course/list.do">수강신청</a></li>
    <li><a href="${path1}/course/list.do">수강신청</a></li>
  </ul>
  <p class="title has-text-centered mt-1 mb-2">강의 등록</p>
</nav>

<div class="container">
  <div class="columns">
    <div class="column is-8 is-offset-2">
      <form action="${path1 }/course/insert.do" method="post" enctype="multipart/form-data">
        <table class="table is-centered is-fullwidth">
          <tbody>
          <tr>
            <th>강의명</th>
            <td>
              <input type="text" name="title" id="title" placeholder="강의명" class="input" maxlength="98" required>
            </td>
          </tr>
          <tr>
            <th>강의 내용</th>
            <td>
              <textarea name="content" id="content" placeholder="강의 내용" class="textarea" rows="7" cols="100" maxlength="1400" required></textarea>
            </td>
          </tr>
          <tr>
            <th>강의 가격</th>
            <td>
              <input type="number" name="price" id="price" placeholder="강의 가격" class="input" style="width: 13.6rem" required>
            </td>
          </tr>
          <tr>
            <th>개강일</th>
            <td>
              <input type="date" name="start_date" id="start_date" placeholder="개강일" class="input" required>
            </td>
          </tr>
          <tr>
            <th>종강일</th>
            <td>
              <input type="date" name="end_date" id="end_date" placeholder="종강일" class="input" required>
            </td>
          </tr>
          <tr>
            <th>총 인원</th>
            <td>
              <input type="number" name="total_num" id="total_num" placeholder="총 인원 수" class="input" required>
            </td>
          </tr>
          <tr>
            <th>강사명</th>
            <td>
              <input type="text" name="teacher_name" id="teacher_name" placeholder="강사명" class="input" maxlength="98" style="width: 13.6rem;" required>
            </td>
          </tr>
          <tr>
            <th>교재명</th>
            <td>
              <input type="text" name="book_name" id="book_name" placeholder="교재명" class="input" maxlength="98" style="width: 28rem;" required>
            </td>
          </tr>
          <tr>
            <th>교재 가격</th>
            <td>
              <input type="number" name="book_price" id="book_price" placeholder="교재 가격" class="input" required>
            </td>
          </tr>
          <tr>
            <th>강의 사진</th>
            <td>
              <input type="file" name="imgsrc1" id="imgsrc1" placeholder="강의 사진" accept=".jpg, .png" class="input" required>
            </td>
          </tr>
          <tr>
            <th>교재 사진</th>
            <td>
              <input type="file" name="imgsrc2" id="imgsrc2" placeholder="교재 사진" accept=".jpg, .png" class="input" required>
            </td>
          </tr>
          <%--<tr>
            <td colspan="2">
              <input type="submit" class="button2" value="등록" >
              <a class="button" href="${path1 }/video/list.do">목록으로</a>
            </td>
          </tr>--%>
          </tbody>
        </table>
        <button type="submit" class="button is-link mb-5">글 등록</button>
      </form>
    </div>
    <div class="column is-2"></div>
  </div>
</div>


<%--<section class="mt-6">
</section>--%>

<!-- Footer Start -->
<jsp:include page="../include/footer.jsp" />
<!-- Footer Close -->
</body>
</html>