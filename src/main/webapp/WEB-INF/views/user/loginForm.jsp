<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <jsp:include page="../include/head.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="resources/css/normalize.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>

    <style>
        td { height: 40px; margin: 0px;}
        input { width:100%; float:left; margin-bottom: 0px; }
        ul { list-style: none; }
        .logo { margin: 0 auto; text-align: center; }

        .content table td, .content table th { border: none; }

        #content { width: 100%; height: 100%; overflow: hidden; margin: 0px auto; padding: 0px;}
        .container1 { width: 450px; margin: 10px auto; padding: 24px; height:auto; overflow-y:auto; }
        table tbody td { padding: 0px; }

        .find_wrap { width: 100%; text-align: center; }
        /* .find_wrap li { float: left; margin-left: 50px; list-style: none; } */

        .sgbtn { width: 100%; }

    </style>
</head>
<body>

<jsp:include page="../include/header.jsp"></jsp:include>

<div class="container" style="width: 450px; min-height: 60vh; margin-top: 15vh;">
    <div class="login_wrap">
        <div style="text-align: center; ">
            <a href="${path1 }/"><img src="${path1 }/resources/img/haebeop.png"></a>
        </div>
        <form action="${path1 }/user/login" method="post" name="loginForm">

            <div class="field">
                <div class="control">
                    <input class="input" type="text" name="id" id="id" size="100" placeholder="아이디 입력" required>
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <input class="input" type="password" name="pw" id="pw" placeholder="비밀번호 입력" required>
                    <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                </div>
            </div>

            <div class="field is-grouped" style="display: block">
                <div class="control">
                    <button class="button is-info" type="submit" style="width: 100%; border-radius: 5px; height: 40px; ">로그인</button>
                </div>
            </div>

            <div class="find_wrap" style="text-align: center">
                <a href="${path1 }/user/agree">회원가입</a>
                <!-- <ul>
                <li><a href="">아이디 찾기</a></li>
                <li>|</li>
                <li><a href="${path1 }/user/agree">회원가입</a></li>
            </ul> -->
            </div>
        </form>
    </div>
    <script>
        function loginFaiure() {
            alert("로그인 실패");
        }
    </script>
</div>

<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>