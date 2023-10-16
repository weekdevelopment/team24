<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <title>개강일정</title>
    <jsp:include page="../include/head.jsp" />

    <style>
        .breadcrumb a { color: #464646; }

        .fc .fc-toolbar-title { font-size: 1.5em; }
        .fc-day-sun a { color: red; }
        .fc-day-sat a { color: blue; }
        .fc .fc-daygrid-day-top { flex-direction: row; }
        .fc th { text-align: center !important; }
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
        <li><a href="${path1}/course/schedule.do">개강일정</a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">개강일정</p>
</nav>

<div class="container">
    <div class="columns is-desktop is-justify-content-center">
        <div class="column is-10-desktop mt-5">
            <div id="calendar">
            </div>
        </div>
    </div>
</div>

<!-- Footer Start -->
<jsp:include page="../include/footer.jsp" />
<!-- Footer Close -->

<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<%-- fullcalendar 언어 설정관련 script --%>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
            headerToolbar : { // 헤더에 표시할 툴 바
                start : 'prev next today',
                center : 'title',
                end : 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            titleFormat : function(date) {
                return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
            },
            //initialDate: '2021-07-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
            selectable : true, // 달력 일자 드래그 설정가능
            droppable : true,
            editable : true,
            nowIndicator: true, // 현재 시간 마크
            locale: 'ko', // 한국어 설정
            dayCellContent: function(e) {
                e.dayNumberText = e.dayNumberText.replace('일', '');
            }
        });
        calendar.render();
    });
</script>
</body>
</html>
