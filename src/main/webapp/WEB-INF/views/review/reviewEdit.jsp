<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
  <title>수정</title>
  <!-- 헤드 부분 인클루드 -->
  <jsp:include page="../include/head.jsp"></jsp:include>
  <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>

  @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

  *{
    font-family: 'Nanum Gothic Coding', monospace;
  }

  .h2{
    font-family: 'Nanum Gothic Coding', monospace;
    font-weight: 400;
    line-height: 110px;
    text-align: center;
    font-size: 1.75em;
    margin-bottom: 0.5714em;
  }
  .button {
    text-decoration: none;
    border-radius: 20px;
    margin: 15px;
    padding: 10px;
    float: right;
    background-color: #1D7151;
    border-color: #1D7151;
    color: #ffffff;
  }

  .button3 {
    text-decoration: none;
    border-radius: 20px;
    margin: 15px;
    padding: 10px;
    float: right;
    background-color: #FFA500;
    border-color: #FFA500;
    color: #ffffff;
  }

  .column1 {
    text-align: center;
    display: block;
    flex-basis: 0;
    flex-grow: 1;
    flex-shrink: 1;
    padding: 0.75rem;
  }

</style>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
  <ul class="mr-5">
    <li><a style="color: black;" href="${path1}"><i class="xi-home is-size-3"></i></a></li>
    <li><a style="color: black;">커뮤니티</a></li>
    <li><a style="color: black; "href="${path1}/review/list.do">후기</a></li>
    <li><a style="color: black; ">후기 수정하기</a></li>
  </ul>
</nav>
<div class="container is-fullhd">
  <div class="content" id="contents">
    <div class="row column1 text-center">
      <h2 class="h2">후기 수정하기</h2>
      <hr>
      <div class="container">
        <form action="${path1 }/review/edit.do" method="post">
          <table id="table1">
            <tbody>
            <tr>
              <th style="background-color:#dcdcdc">제목 </th>
              <td>
                <input type="hidden" name="no" id="no" value="${domain.no }" >
                <input type="text" name="title" id="title" class="input" placeholder="제목 입력" value="${domain.title }" maxlength="98" required>
              </td>
            </tr>
            <tr>
              <th style="background-color:#dcdcdc">내용</th>
              <td>
                <textarea name="content" class="textarea" id="content" placeholder="내용 입력" rows="8" cols="100" maxlength="800"
                          required>
                  ${domain.content }
                </textarea>
                <script>
                  CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/review/imageUpload.do'});
                </script>
              </td>
            </tr>

            <tr>
              <td colspan="2">
                <input type="submit" class="button3" value="수정" >
                <a class="button" href="${path1 }/review/list.do">목록으로</a>
              </td>
            </tr>
            </tbody>
          </table>
        </form>
        <script>
          if (${not empty msg } ) {
            alert("${msg }");
          };
        </script>
      </div>
    </div>
  </div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>