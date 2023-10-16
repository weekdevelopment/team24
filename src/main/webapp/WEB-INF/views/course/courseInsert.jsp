<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>강의 등록</title>
  <jsp:include page="../include/head.jsp" />
  <style>
    .breadcrumb a {
      color: #464646;
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
    <form action="${path1 }/course/insert.do" method="post" enctype="multipart/form-data">
      <div class="field">
        <label class="label" for="title">강의명</label>
        <div class="control">
          <input type="text" name="title" id="title" placeholder="강의명" class="input" maxlength="98" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="content">강의 내용</label>
        <textarea name="content" id="content" placeholder="강의 내용" class="textarea" rows="7" cols="100" maxlength="1400" required></textarea>
      </div>

      <div class="field">
        <label class="label" for="price">강의 가격</label>
        <div class="control">
          <input type="number" name="price" id="price" placeholder="강의 가격" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="start_date">개강일</label>
        <div class="control">
          <input type="date" name="start_date" id="start_date" placeholder="개강일" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="end_date">종강일</label>
        <div class="control">
          <input type="date" name="end_date" id="end_date" placeholder="종강일" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="total_num">총 인원 수</label>
        <div class="control">
          <input type="number" name="total_num" id="total_num" placeholder="총 인원 수" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="teacher_name">강사명</label>
        <div class="control">
          <input type="text" name="teacher_name" id="teacher_name" placeholder="강사명" class="input" maxlength="98" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="book_name">교재명</label>
        <div class="control">
          <input type="text" name="book_name" id="book_name" placeholder="교재명" class="input" maxlength="98" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="book_price">교재 가격</label>
        <div class="control">
          <input type="number" name="book_price" id="book_price" placeholder="교재 가격" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="imgsrc1">강의 사진</label>
        <div class="control">
          <input type="file" name="imgsrc1" id="imgsrc1" placeholder="강의 사진" accept=".jpg, .png" class="input" required>
        </div>
      </div>

      <div class="field">
        <label class="label" for="imgsrc2">교재 사진</label>
        <div class="control">
          <input type="file" name="imgsrc2" id="imgsrc2" placeholder="교재 사진" accept=".jpg, .png" class="input" required>
        </div>
      </div>

      <button type="submit" class="button is-info">글 등록</button>
    </form>
  </div>
</div>


<%--<section class="mt-6">
</section>--%>

<!-- Footer Start -->
<jsp:include page="../include/footer.jsp" />
<!-- Footer Close -->
</body>
</html>
