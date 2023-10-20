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
    <title>${course.course_name } 수강신청</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
            background-color: rgb(127, 140, 141);;
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
        .agree_fr { width: auto; white-space:pre-wrap; margin: 75px auto;
            padding: 24px; height:300px; overflow-y:auto; }
        .form-check {
            margin: 0 30px 0px 30px;
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
                    <span class="title" style="color: #ffffff; ">${course.course_name } 결제하기 </span>
                </div>
            </div>
            <div class="card article">
                <div class="card-content">
                    <div class="media">
                        <div class="media-content has-text-centered">
                            <span class="title article-title">${course.course_name } 수강신청</span>
                        </div>
                    </div>
                    <hr>

                    <div class="content article-body" style="min-height: 220px">
                        <article class="agree_fr">
                            <strong style="font-size: 30px;">[이용약관]</strong>
                            제 1 조 (목적)
                            이 약관은 (주)진수어학원(이하 “회사”라 함)이 제공하는 제반 서비스의 이용에 관한 조건 및 절차에 관한 기본적인 사항과 기타 필요한 사항을 규정함을 목적으로 한다.

                            제 2 조 (정의)
                            ① 이 약관에서 사용하는 용어의 정의는 다음과 같다.
                            1.서비스 : 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 회사에서 제공하는 관련 제반 서비스를 의미한다.
                            2.회 원 : 회사의 서비스에 접속하여 이 약관에 따라 회사와 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 고객을 말한다.
                            3.아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미한다.
                            4.비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미한다.
                            5.콘텐츠 : 회사이 웹사이트에서 제공하는 회사가 저작권을 일체 가지고 있는 온라인 강좌 및 기타 관련 모든 정보를 의미한다.
                            6.운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람을 의미한다.
                            7.해 지 : 회사 또는 회원이 서비스 개통 이후 이용계약을 종료시키는 의사 표시를 의미한다.
                            ② 제1항의 용어를 제외한 용어의 정의는 거래 관행 및 관계 법령에 따른다.
                            제 3 조 (약관의 게시와 개정)
                            ①회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시한다.
                            ②회사는 ‘약관의 규제에 관한 법률’, ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 “정보통신망법”이라 함)’ 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.
                            ③회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지한다. 단 회원의 권리, 의무에 중대한 영향을 주는 변경이 아닌 경우에는 적용일자 7일 전부터 공지하도록 한다.
                            ④제3항에 따라 시행일 이후에 회원이 서비스를 이용하는 경우에는 개정약관에 동의한 것으로 간주한다. 회원은 변경된 약관에 동의하지 않을 경우 이용계약을 해지할 수 있다.
                            ⑤유료서비스를 이용하는 회원이 이 약관의 개정에 대해 동의하지 않아 이용계약을 해지할 경우에는 유료서비스약관이 정한 환불정책에 따른다.
                            제 4 조 (약관의 해석)
                            ①회사는 유료서비스 및 개별서비스에 대해서는 별도의 이용약관 및 정책(이하 “유료서비스약관 등”이라 함)을 둘 수 있으며, 해당 내용이 이 약관과 상충할 경우에는 유료서비스약관 등이 우선하여 적용된다.
                            ②이 약관에서 정하지 아니한 사항이나 해석에 대해서는 유료서비스약관 등 및 관계법령 또는 관례에 따른다.
                            제 5 조 (이용계약 체결)
                            ①이용계약은 회원이 되고자 하는 자(이하 “가입신청자”이라 함)가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙함으로써 체결된다.
                            ②회사는 가입신청자의 신청에 대하여 서비스 이용을 승낙함을 원칙으로 한다. 다만, 회사는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있다.
                            1.가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우다만, 회원자격 상실 후 1년이 경과한 자로서 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 함.
                            2.실명이 아니거나 타인의 명의를 이용한 경우
                            3.허위의 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우
                            4.14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우
                            5.이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우
                            ③제1항에 따른 신청에 있어 회사는 회원의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있다.
                            ④회사는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있다.
                            ⑤제2항과 제4항에 따라 회원가입 신청의 승낙을 하지 아니하거나 유보한 경우, 회사는 원칙적으로 이를 가입신청자에게 알리도록 한다.
                            ⑥이용계약의 성립 시기는 회사는 신청절차 상 가입완료를 한 시점으로 한다.
                            ⑦회사는 회원에 대해 정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있다.
                            ⑧회사는 회원에 대하여 ‘영화 및 비디오물의 진흥에 관한 법률’ 및 ‘청소년 보호법’ 등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있다.
                            제 6 조 (회원정보의 변경)
                            ①회원은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있다. 다만, 서비스 관리를 위해 필요한 실명, 주민등록번호, 아이디 등은 수정이 불가능하다.
                            ②회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 등 기타 방법으로 회사에 대하여 그 변경사항을 알려야 한다.
                            ③제2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않는다.
                            제 7 조 (개인정보보호 의무)
                            회사는 정보통신망법 등 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력한다. 개인정보의 보호 및 사용에 대해서는 관련법 및 회사의 개인정보취급방침이 적용된다. 다만, 회사의 공식 사이트 이외의 링크된 사이트에서는 회사의 개인정보취급방침이 적용되지 않는다.

                            제 8 조 ("회원"의 "아이디" 및 "비밀번호"의 관리에 대한 의무)
                            ①회원의 아이디와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는 안 된다.
                            ②회사는 회원의 아이디가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인할 우려가 있는 경우, 해당 아이디의 이용을 제한할 수 있다.
                            ③회원은 아이디 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 회사의 안내에 따라야 한다.
                            ④제3항의 경우에 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임지지 않는다.
                            제 9 조 ("회원"에 대한 통지)
                            ①회사가 회원에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 회원이 지정한 전자우편주소, 서비스 내 전자메모 등으로 할 수 있다.
                            ②회사는 회원 전체에 대한 통지의 경우 7일 이상 회사의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있다.
                            제 10 조 ("학교"의 의무)
                            ①회사는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 서비스를 제공하기 위하여 최선을 다하여 노력한다.
                            ②회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수한다.
                            ③회사는 회원 개인의 정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않는 것을 원칙으로 한다. 단, 아래 사항에 해당하는 겨우는 예외로 인정한다.
                            1.정보통신망법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
                            2.범죄에 대해 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우
                            3.기타 관계법령이 정한 절차에 따른 요청이 있는 경우
                            ④회사는 서비스 이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 한다. 회원이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 회원에게 처리과정 및 결과를 전달한다.
                            제 11 조 ("회원"의 의무)
                            ①회원은 서비스를 이용할 때 다음의 행위를 하여서는 안 된다.
                            1.신청 또는 변경 시 허위내용의 등록
                            2.타인의 정보도용
                            3.회사가 게시한 정보의 변경
                            4.회사와 기타 제3자의 저작권 등 지적재산권에 대한 침해
                            5.회사 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
                            6.외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 서비스에 공개 또는 게시하는 행위
                            7.회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위
                            8.서비스의 이용권한, 기타 이용 계약상 지위 및 권리를 타인에게 양도, 증여하는 행위
                            9.다른 회원의 개인정보를 수집, 저장, 공개하는 행위
                            10.법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 포함)의 전송 또는 게시하는 행위
                            11.회사의 직원이나 운영자를 사칭하거나 타인의 명의를 도용하여 글을 게시 하거나 메일을 발송하는 행위
                            12.컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스 및 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 전송하는 행위
                            13.기타 불법적이거나 부당한 행위
                            ②회원은 관계법, 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안 된다.
                            제 12 조 ("서비스"의 제공 등)
                            ①회사는 회원에게 아래와 같은 서비스를 제공한다.
                            1.온라인 교육 콘텐츠
                            2.기타 회사가 추가 개발하거나 저작권을 가진 디지털 컨텐츠 및 창작물 등 회원에게 제공하는 일체의 서비스
                            ②회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있다. 다만, 이러한 경우에는 그 내용을 사전에 공지한다.
                            ③서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 한다.
                            ④회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있다. 이 경우 회사는 제9조(회원에 대한 통지)에 정한 방법으로 회원에게 통지한다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있다.
                            ⑤회사는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스 제공화면에 공지한 바에 따른다.
                            제 13 조 ("서비스"의 변경)
                            ①회사는 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경할 수 있다.
                            ②서비스의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전 7일 이상 해당 서비스 초기화면에 게시하여야 한다.
                            ③회사는 무료로 제공되는 서비스의 일부 또는 전부를 학교의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않는다.
                            제 14 조 (정보의 제공 및 광고의 게재)
                            ①회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 등의 방법으로 회원에게 제공할 수 있다. 다만, 회원은 관련법에 따른 거래관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편 등에 대해서 수신 거절을 할 수 있다.
                            ②제1항의 정보를 전화 및 모사전송기기에 의하여 전송하려고 하는 경우에는 회원의 사전 동의를 받아서 전송한다. 다만, 회원의 거래관련 정보 및 고객문의 등에 대한 회신에 있어서는 제외된다.
                            ③회사는 서비스의 운영과 관련하여 서비스화면, 홈페이지, 전자우편, 카카오톡 플러스친구 등에 광고를 게재할 수 있다. 광고가 게재된 전자우편 등을 수신한 회원은 수신거절을 회사에게 할 수 있다.
                            제 15 조 (수강 승인)
                            ①회사는 규정한 결제방법을 사용하여 이용요금을 납입한 사실이 확인되면 지체없이 수강신청을 승인한다.
                            ②회사는 아래에 해당하는 경우 수강 신청에 대한 승인을 제한할 수 있고, 그 사유가 해소될 때까지 승인을 유보할 수 있다.
                            1.이용요금을 납입하지 않은 경우
                            2.이용요금 입금 금액 총액이 신청 금액 총애게 미달되는 경우
                            3.기타 회사가 필요하다고 인정되는 경우
                            ③제2항에 의하여 수강 신청의 승인을 유보하거나 승인하지 아니하는 경우, 회사는 이를 수강 신청자에게 알려야 한다.
                            제 16 조 (수강 취소 및 환불)
                            1. 단과(정규과정) 상품 환불정책
                            1–1.단과(정규과정)
                            ① 수강시작 후 7일 미만 & 5강 미만 수강 시에는 100% 환불 가능
                            ② 수강시작 후 7일 이상 또는 5강 이상 수강 시에는 잔여일에 대한 일할 계산 환불 가능
                            ③ 수강시작 후 수강기간 또는 수강한 강의수가 전체의 50% 이상 경과한 경우 환불 불가
                            ※ 환불금액 = 결제금액 – {정상가*(실제 수강일/전체 수강일)}
                            단, 할인적용 등록 시 정상가를 기준으로 환불됨을 숙지해주세요.
                            ※ 전체 수강일은 복습기간을 제외한 수강일입니다.
                            정상수강 예시) 판매가격 104,000원 [카르페디엠1] 결제하고, 전체 수강일 30일 중 18일을 수강 하였을 경우,
                            – 환불금액 = 104,000 – {104,000*(18일/30일)}
                            – 최종 환불 금액 = 41,600원(십원 단위 버림)
                            할인수강 예시) 정상가격 104,000원에 20%할인 83,200원에 [카르페디엠1] 결제하고, 전체 수강일 30일 중 18일을 수강 하였을 경우,
                                – 환불금액 = 83,200 – {104,000*(18일/30일)}
                                – 최종 환불 금액 = 20,800원(십원 단위 버림)
                                2. 단기완성(패키지) 상품 환불정책
                                ① 수강시작 후 7일 미만, 5강 미만 수강 시에는 100% 환불 가능
                                ② 수강시작 후 7일 이상 또는 5강 이상 수강 시 잔여일에 대한 환불이 가능
                                ※ 환불금액 = 결제금액 – {정상가*(실제 수강일/전체 수강일)}
                                *패키지 상품의 경우 할인율이 선적용 되어 있는 상품으로
                                환불시에는 정상가가 적용됨을 필히 숙지부탁드립니다
                                ※ 전체 수강일은 복습기간을 제외한 수강일입니다.
                                [단기완성(패키지) 상품 수강기간 정책]
                                진수어학원 인강에서 판매하는 단기완성(패키지) 상품의 총 학습기간은 기본적으로 수강기간 30일로 이루어져 있으며,
                                이벤트와 기타 사유로 연장된 추가 학습기간 등은 무료 학습기간으로 제공 됩니다.
                                최대 3회/총 60일 동안에 걸쳐 강의 일시정지(휴강신청)가 가능합니다
                                ※ 판매중인 각 단기완성(패키지)별 수강기간은 [수강신청] – [전체 강좌 보기] 메뉴 및 각 상품 페이지 하단의 유의사항에서 필히 확인해주세요.
                                * 판촉물이 포함된 상품의 환불요청 시에는 받아보신 추가 제공된 판촉물의 금액을 차감 하거나 새제품이 아닌 훼손된 상태일 때에는 해당 금액 역시 차감됩니다.
                                3. 도서 반품 안내(추가 항목)
                                ① 출고 전 상품은 100% 환불이 가능합니다.
                                ② 출고 후 15일 이전 입고 확인 후 100% 환불이 가능합니다. 다만 교재에 사용한 흔적이 있거나 훼손된 경우에는 반품이 불가합니다.(반품 시 왕복 배송료 5,000원 회원 부담)
                                ③ 출고 후 15일 경과 후에는 환불이 불가합니다
                                ※ 도서는 다른 상품과 달리 외형보다 그 속에 담겨있는 내용에 가치가 있는 것이기 때문에 반품기간이 정해져 있습니다. 구매 후 복사 또는 촬영 등의 내용 훼손이 이루어질 가능성이 있으므로, 반품기간을 15일로 규정합니다.(소비자 보호원 및 공정거래위원회 규정 표준약관에 근거)
                                4. 환불 요청 시 및 반품 안내
                                당일 오후 3시 이전에 결제 → 당일 오후 3시 이전에 취소 요청
                                당일 오후 3시 이후에 결제 → 익일 오후 3시 이전에 취소 요청
                                * 교재는 매일 오후 3시에 발송되며 이미 발송된 후 환불 요청을 해주시면 물건 반품, 왕복 배송비 5,000원을 추가 차감 후 환불 됩니다.
                                * 홈페이지 1:1문의 게시판이나 카카오톡플친으로 요청하시는 경우는 순차적으로 답변해 드리고 있기 때문에 접수가 늦어질 수 있으니 환불 요청의 경우 드림팩토리(042-484–9050)로 연락 주시면 빠른 처리 도와 드리도록 하겠습니다.
                                5. 가상계좌(무통장 입금), 실시간 계좌이체 결제 시
                                회원님께서 요청하시는 계좌로 환불이 가능합니다. 드림팩토리(042-484–9050)나 1:1문의 게시판, 카카오톡 플러스친구 문의 등으로 환불요청과 함께 환불 받으실 은행명과 예금주, 계좌번호를 알려주시면 영업일 기준 7~10일 내에 해당 계좌로 환불 금액을 입금해 드리도록 하겠습니다.
                                6. 신용카드 결제 시
                                결제하신 내역에 대한 카드 승인취소 처리는 바로 가능하며 카드사의 사정에 따라 입금까지는 며칠 소요되실 수 있는 점 참고 부탁드립니다.
                                7. 기타 유의사항
                                ※ 수강일은 수강 시작일부터 환불 접수 발생 시점을 기준으로 산출됩니다.
                                ※ 구매하신 강의 및 교재 상품 외 제공받은 사은품, 장학금은 기타소득으로 분류되며 소득세를 원천징수할 의무가 있습니다. 50,000원을 초과하는 기타소득의 경우 22%에 해당하는 금액을 제외 후 지급해드리고 있으며, 소득세 신고를 위한 신분증 사본 제출을 요청드리고 있습니다.
                                [수강권 상품 환불정책]
                                    - 구매 후 수령한 수강권은 구매하신 구매처 청약철회기간 내 사용하여 이상 여부를 확인해보시길 권장드립니다.
                                    - 미등록된 수강권에 대해서는 발송일 + 상품의 학습기간 동안 등록 유예기간을 제공해드립니다. 유예 기간 이후에는 사용된 수강권으로 간주되니 이점 유의하시고 관련 문의 사항이 있는 경우 드림팩토리로 연락주시기 바랍니다.
                                    (ex. 기본 수강기간 1년, 미션 수행 시 평생 수강 가능한 상품의 경우 수강권 등록 유예기간 = 수강권 발송일+수강기간 1년(365일) / 수강권 발송일+366일째 되는 날 부터는 사용한 수강권으로 간주)
                                    제 17 조 (게시물의 저작권)
                                    ①서비스에 대한 저작권 및 지적재산권은 회사에 귀속된다. 단, 회원의 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외한다.
                                    ②회원이 서비스 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속된다.
                                    ③회원이 서비스 내에 게시하는 게시물은 검색결과 내지 서비스 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 편집되어 게시될 수 있다. 이 경우, 회원은 언제든지 고객센터를 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있다.
                                    ④회사는 제3항 이외의 방법으로 회원의 게시물을 이용하고자 하는 경우에는 전화, 팩스, 전자우편 등을 통해 사전에 회원의 동의를 얻어야 한다.
                                    제 18 조 (게시물의 관리)
                                    ①회원의 게시물이 정보통신망법 및 저작권법등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취하여야 한다.
                                    ②회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 학교 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있다.
                                    ③회사는 회원이 게재 또는 등록한 내용물이 다음 각 호에 해당된다고 판단되는 경우에 회원의 동의 없이 그 내용을 삭제할 수 있다.
                                    1.다른 회원 또는 제 3자를 비방하거나 중상모략 함으로써 타인의 명예를 훼손시킨 경우
                                    2.공공질서 및 미풍양속에 위반되는 경우
                                    3.범죄적 행위에 결부된다고 인정되는 경우
                                    4.제 3자의 저작 등 기타 권리를 침해하는 경우
                                    5.기타 관계 법령이나 회사가 정한 규정에 위배되는 경우
                                    제 19 조 (계약 해지)
                                    ①회원은 언제든지 서비스 초기화면의 고객센터 또는 내 정보 관리 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, 회사는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 한다.
                                    ②회원이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 아래와 같이 회사가 관계법령규정 또는 교육이력 유지를 위한 최소한의 개안정보(이름, 주민등록번호 등) 등 보존할 필요가 있는 경우를 제외하고는 해지 즉시 회원의 모든 데이터는 소멸된다.
                                    1.사용료 결제 및 콘텐츠 서비스 등의 공급에 관한 기록
                                    -보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률
                                    -보존기간 : 5년
                                    2.계약 또는 청약철회에 관한 기록
                                    -보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률
                                    -보존기간 : 5년
                                    3.소비자의 불만 또는 분쟁처리에 관한 기록
                                    -보존근거 : 전자상거래 등에서의 소비자보호에 관한 법률
                                    -보존기간 : 3년
                                    4.신용정보의 수집, 처리 및 이용 등에 관한 기록
                                    -보존근거 : 신용정보의 이용 및 보호에 관한 법률
                                    -보존기간 : 3년
                                    5.방문에 관한 기록
                                    -보존근거 : 통신비밀보호법
                                    -보존기간 : 3개월
                                    ③회원이 계약을 해지하는 경우, 회원이 작성한 게시물 중 메일, 블로그 등과 같이 본인 계정에 등록된 게시물 일체는 삭제된다. 다만, 타인에 의해 담기, 스크랩 등이 되어 재게시되거나, 공용게시판에 등록된 게시물 등은 삭제되지 않으니 사전에 삭제 후 탈퇴하여야 한다.
                                    제 20 조 (이용제한)
                                    ①회사는 회원이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 서비스 이용을 단계적으로 제한할 수 있다.
                                    ②회사는 전항에도 불구하고, 주민등록법을 위반한 명의도용 및 결제도용, 저작권법 및 컴퓨터프로그램보호법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망법을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있다. 본 항에 따른 영구이용정지 시 서비스 이용을 통해 획득한 쿠폰 및 기타 혜택 등도 모두 소멸되며, 회사는 이에 대해 별도로 보상하지 않는다.
                                    ③회사는 회원이 계속해서 6개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있다.
                                    ④회사는 본 조의 이용제한 범위 내에서 제한의 조건 및 세부내용은 이용제한정책 및 개별 서비스상의 운영정책에서 정하는 바에 의한다.
                                    ⑤본 조에 따라 서비스 이용을 제한하거나 계약을 해지하는 경우에는 회사는 제9조[회원에 대한 통지]에 따라 통지한다.
                                    ⑥회원은 본 조에 따른 이용제한 등에 대해 회사가 정한 절차에 따라 이의신청을 할 수 있다. 이 때 이의가 정당하다고 회사가 인정하는 경우 회사는 즉시 서비스의 이용을 재개한다.
                                    제 21 조 (책임제한)
                                    ①회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제된다.
                                    ②회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않는다.
                                    ③회사는 회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않는다.
                                    ④회사는 회원 간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임이 면제된다.
                                    ⑤회사는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않는다.
                                    제 22 조 (준거법 및 재판관할)
                                    ①회사와 회원 간 제기된 소송은 대한민국법을 준거법으로 한다.
                                    ②회사와 회원 간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소한다.
                                    제 23 조 (규정의 준용)
                                    이용약관에 명시되지 않은 사항에 대해서는 전자상거래 등에서의 소비자 보호에 관한 법률 등 관계 법령에 의하며, 법에 명시 되지 않은 사안에 대해서는 관례에 따른다.

                                    부칙
                                    ①이 약관은 2019년 06월 24일부터 적용된다.
                        </article>
                        <article class="agree_fr">
                            <strong style="font-size: 30px;">[환불규정]</strong>
                            1.단과(정규과정)
                            ① 수강시작 후 7일 미만 & 5강 미만 수강 시에는 100% 환불 가능
                            ② 수강시작 후 7일 이상 또는 5강 이상 수강 시에는 잔여일에 대한 일할 계산 환불 가능
                            ③ 수강시작 후 수강기간 또는 수강한 강의수가 전체의 50% 이상 경과한 경우 환불 불가
                            ※ 환불금액 = 결제금액-{정상가*(실제 수강일/전체 수강일)}
                            단, 할인적용 등록 시 정상가를 기준으로 환불됨을 숙지해주세요.
                            ※전체 수강일은 복습기간을 제외한 수강일입니다.
                            정상수강 예시) 판매가격 104,000원 [카르페디엠1] 결제하고, 전체 수강일 30일 중 14일을 수강 하였을 경우,
                            -환불금액 = 104,000 - {104,000*(14일/30일)}
                            -최종 환불 금액 = 55,500원(십원 단위 버림)
                            할인수강 예시) 정상가격 104,000원에 20%할인 83,200원에 [카르페디엠1] 결제하고, 전체 수강일 30일 중 14일을 수강 하였을 경우,
                                -환불금액 = 83,200 - {104,000*(14일/30일)}
                                -최종 환불 금액 = 34,700원(십원 단위 버림)
                                2. 단기완성(패키지) 상품 환불정책
                                ① 수강시작 후 7일 미만, 5강 미만 수강 시에는 100% 환불 가능
                                ② 수강시작 후 7일 이상 또는 5강 이상 수강 시 잔여일에 대한 환불이 가능
                                ※ 환불금액 = 결제금액 - {정상가*(실제 수강일/전체 수강일)}
                                *패키지 상품의 경우 할인율이 선적용 되어 있는 상품으로
                                환불시에는 정상가가 적용됨을 필히 숙지부탁드립니다
                                ※ 전체 수강일은 복습기간을 제외한 수강일입니다.
                                [단기완성(패키지) 상품 수강기간 정책]
                                진수어학원 인강에서 판매하는 단기완성(패키지) 상품의 총 학습기간은 기본적으로 수강기간 45일로 이루어져 있으며,
                                이벤트와 기타 사유로 연장된 추가 학습기간 등은 무료 학습기간으로 제공 됩니다.
                                최대 3회/총 40일 동안에 걸쳐 강의 일시정지(휴강신청)가 가능합니다
                                ※ 판매중인 각 단기완성(패키지)별 수강기간은 [수강신청] - [전체 강좌 보기] 메뉴 및 각 상품 페이지 하단의 유의사항에서 필히 확인해주세요.
                                * 판촉물이 포함된 상품의 환불요청 시에는 받아보신 추가 제공된 판촉물의 금액을 차감 하거나 새제품이 아닌 훼손된 상태일 때에는 해당 금액 역시 차감됩니다.
                                3. 도서 반품 안내(추가 항목)
                                ① 출고 전 상품은 100% 환불이 가능합니다.
                                ② 출고 후 15일 이전 입고 확인 후 100% 환불이 가능합니다.
                                다만 교재에 사용한 흔적이 있거나 훼손된 경우에는 반품이 불가합니다.(반품 시 왕복 배송료 5,000원 회원 부담)
                                ③ 출고 후 15일 경과 후에는 환불이 불가합니다
                                ※ 도서는 다른 상품과 달리 외형보다 그 속에 담겨있는 내용에 가치가 있는 것이기 때문에 반품기간이 정해져 있습니다.
                                구매 후 복사 또는 촬영 등의 내용 훼손이 이루어질 가능성이 있으므로, 반품기간을 15일로 규정합니다.(소비자 보호원 및 공정거래위원회 규정 표준약관에 근거)
                                4. 환불 요청 시 및 반품 안내
                                당일 오후 3시 이전에 결제 → 당일 오후 3시 이전에 취소 요청
                                당일 오후 3시 이후에 결제 → 익일 오후 3시 이전에 취소 요청
                                * 교재는 매일 오후 3시에 발송되며 이미 발송된 후 환불 요청을 해주시면 물건 반품, 왕복 배송비 5,000원을 추가 차감 후 환불 됩니다.
                                * 홈페이지 1:1문의 게시판이나 카카오톡플친으로 요청하시는 경우는 순차적으로 답변해 드리고 있기 때문에 접수가 늦어질 수 있으니 환불 요청의 경우
                                드림팩토리(042-484-9050)로 연락 주시면 빠른 처리 도와 드리도록 하겠습니다.
                                5. 가상계좌(무통장 입금), 실시간 계좌이체 결제 시
                                회원님께서 요청하시는 계좌로 환불이 가능합니다. 드림팩토리(042-484-9050)나 1:1문의 게시판, 카카오톡 플러스친구 문의 등으로
                                환불요청과 함께 환불 받으실 은행명과 예금주, 계좌번호를 알려주시면 영업일 기준 7~10일 내에 해당 계좌로 환불 금액을 입금해 드리도록 하겠습니다.
                                6. 신용카드 결제 시
                                결제하신 내역에 대한 카드 승인취소 처리는 바로 가능하며 카드사의 사정에 따라 입금까지는 며칠 소요되실 수 있는 점 참고 부탁드립니다.
                                7. 기타 유의사항
                                ※ 수강일은 수강 시작일부터 환불 접수 발생 시점을 기준으로 산출됩니다.
                                ※ 구매하신 강의 및 교재 상품 외 제공받은 사은품, 장학금은 기타소득으로 분류되며 소득세를 원천징수할 의무가 있습니다.
                                50,000원을 초과하는 기타소득의 경우 22%에 해당하는 금액을 제외 후 지급해드리고 있으며, 소득세 신고를 위한 신분증 사본 제출을 요청드리고 있습니다.
                                [수강권 상품 환불정책]
                                    -구매 후 수령한 수강권은 구매하신 구매처 청약철회기간 내 사용하여 이상 여부를 확인해보시길 권장드립니다.
                                    -미등록된 수강권에 대해서는 발송일 + 상품의 학습기간 동안 등록 유예기간을 제공해드립니다.
                                    유예 기간 이후에는 사용된 수강권으로 간주되니 이점 유의하시고 관련 문의 사항이 있는 경우 드림팩토리로 연락주시기 바랍니다.
                                    (ex. 기본 수강기간 1년, 미션 수행 시 평생 수강 가능한 상품의 경우 수강권 등록 유예기간 = 수강권 발송일+수강기간 1년(365일) / 수강권 발송일+366일째 되는 날 부터는 사용한 수강권으로 간주)
                        </article>
                        <p style="padding: 20px 100px; min-height: 100px; font-size: 18px;">
                            ${course.content }
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <div class="column is-4">
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
                                <b id="sum_price"><fmt:formatNumber value="${course.price }" pattern="#,###" />원</b>
                            </p>
                            <p>
                                <i>교재금액</i>
                                <b id="book_price">
                                    <c:if test="${book == 1}">
                                        <fmt:formatNumber value="${course.book_price }" pattern="#,###" />원
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
                            <p style="border-top: 1px solid #ddd;"><i style="margin-top: 8px; margin-right: 16px;">총 결제금액</i><span class="pointColor price" style="float: right; ">
                                <strong id="total_price" class="eng">
                                    <c:if test="${book == 1}">
                                        <fmt:formatNumber value="${course.book_price +course.price }" pattern="#,###" />원
                                    </c:if>
                                    <c:if test="${book == 0}">
                                        <fmt:formatNumber value="${course.price }" pattern="#,###" />원
                                    </c:if>
                                </strong></span></p>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="ck_item1" name="ck_item" class="form-check-input">
                            <label for="ck_item1" class="form-check-label">이용약관에 동의합니다.</label><br><br>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" id="ck_item2" name="ck_item2" class="form-check-input">
                            <label for="ck_item2" class="form-check-label">환불규정에 동의합니다.</label><br><br>
                        </div>
                        <!-- 신청 버튼-->
                        <form action="${path1 }/course/signIn" method="post" id="applyForm">
                            <div class="applyBtn">
                                <a href="${path1 }/course/getCourse?cno=${course.cno }" class="cart pointColor pointBorder"><i class="fa-solid fa-cart-shopping"></i>취소</a>
                                <button id="apply" class="apply bgColor"><i class="icofont-credit-card"></i> 결제하기</button>
                            </div>
                            <!-- hidden으로 form 넘기기 -->
                            <c:if test="${book == 1}">
                                <input type="hidden" id="enroll_price" name="enroll_price" value="${course.book_price +course.price }">
                                <input type="hidden" id="pt" name="pt" value="${user.pt -  (course.book_price +course.price)}">
                            </c:if>
                            <c:if test="${book == 0}">
                                <input type="hidden" id="enroll_price" name="enroll_price" value="${course.price }">
                                <input type="hidden" id="pt" name="pt" value="${user.pt - course.price}">
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
    var ck_item1 = document.getElementById("ck_item1");
    var ck_item2 = document.getElementById("ck_item2");
    var apply = document.getElementById("apply");
    apply.addEventListener("click", function(){
        if(ck_item1.checked && ck_item2.checked){
            if (${book == 1 }) {
                if (${user.pt >= course.book_price +course.price }) {
                    document.getElementById("applyForm").submit();
                } else {
                    alert("포인트가 부족합니다.");
                    event.preventDefault();
                    window.location.href = window.location.href;
                }
            } else {
                if (${user.pt >= course.price }) {
                    document.getElementById("applyForm").submit();
                } else {
                    alert("포인트가 부족합니다.");
                    event.preventDefault();
                    window.location.href = window.location.href;
                }
            }
        } else {
            alert("약관 및 개인정보처리 방침에 동의하지 않으셨습니다.");
            event.preventDefault();
            window.location.href = window.location.href;
        }
    });
    function protocol() {
        if (allagr.checked) {
            ck_item1.checked = true;
            ck_item2.checked = true;
        } else {
            ck_item1.checked = false;
            ck_item2.checked = false;
        }
    }
    $(".form-check").click(function () {
        if(ck_item1.checked && ck_item2.checked){
            $("#apply").css("background-color","#0078e7");
        } else {
            $("#apply").css("background-color","#7f8c8d");
        }
    });
</script>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>

