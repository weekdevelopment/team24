<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <title>후기 남기기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<style>

    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

    /*
    *{
        font-family: 'Nanum Gothic Coding', monospace;
    } */


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
    .button2 {
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
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a>커뮤니티</a></li>
        <li><a href="${path1}/review/list.do">후기</a></li>
        <li><a href="${path1}/review/insert.do">후기 남기기</a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">후기 남기기</p>
</nav>
<div class="container is-fullhd">
    <div class="content" id="contents">
        <div class="row column1 text-center">
            <%--<h2 class="h2">후기 남기기</h2>
            <hr>--%>
            <div class="container">
                <form action="${path1 }/review/insert.do" method="post" >
                    <table id="table1">
                        <tbody>
                        <tr>
                            <th style="background-color:#dcdcdc">제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="input" value="${title }" placeholder="제목 입력" maxlength="98" required>
                            </td>
                        </tr>
                        <tr>
                            <th style="background-color:#dcdcdc">내용</th>
                            <td>
                                <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required>${content }</textarea>
                                <script>
                                    CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/review/imageUpload.do'});
                                </script>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button2" value="등록" >
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
<%--                <script>--%>
<%--                    function bdck(f) {--%>
<%--                        var review = {--%>
<%--                            title : $("#title").val(),--%>
<%--                            content : $("#content").val()--%>
<%--                        }--%>
<%--                        $.ajax({--%>
<%--                            url:"${path2 }/review/bdCheck",	// 제목, 내용이 전송되어질 곳--%>
<%--                            type:"post",		//전송방식--%>
<%--                            dataType:"json",	//데이터 반환 방식--%>
<%--                            data:review,		//전송방식이 post인 경우 객체로 묶어서 전송--%>
<%--                            success:function(result){--%>
<%--                                console.log(result);--%>
<%--                                var bdCk = result;	//true 또는 false를 받음--%>
<%--                                if(bdCk==false){	// 비속어로 인해 사용할 수 없는 제목 또는 내용--%>
<%--                                    alert("비속어는 제목 또는 내용으로 사용할 수 없습니다.");--%>
<%--                                    $("#title").focus()--%>
<%--                                    return false;--%>
<%--                                }--%>
<%--                            }--%>
<%--                        });--%>
<%--                    }--%>
<%--                </script>--%>
            </div>
        </div>
    </div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>