<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오시는 길</title>
  <jsp:include page="../include/head.jsp" />

  <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
<%--  <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">--%>

  <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
  <link rel="stylesheet" href="../google.css">
  <link rel="stylesheet" href="../fonts.css">

  <!-- 필요한 플러그인 연결 -->
  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <style>
    /* 본문 영역 스타일 */
    .wrap { background-color: #fffcf2; }
    .title { width: 450px; margin: 10px auto; font-size: 2em; font-weight: bold; text-align: center; color:#00A2FF; padding-top:20px; padding-bottom:34px; }

    .content { padding-top: 60px; }

    .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }

  </style>
  <style>
    body { background:white; }
    #kk-map {
      position: relative;
      bottom: 10px;
      left: 860px;
      margin: 20px;
    }
    .mapBtn {
      display: inline-block;
      padding: 10px;
      background-color: #007BFF;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
      margin-left: -34px;
    }
    .mapBtn:hover {
      background-color: #0056b3;
    }
  </style>
  <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
  <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
  <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
</head>

<body>
<div class="wrap">
  <header class="hd" id="hd">
    <jsp:include page="../include/hd.jsp" />
  </header>
  <div class="content container" id="content">
    <h2 class="title">오시는 길</h2>

    <div class="page_wrap">
      <div class="maparea">
        <div id="map" style="margin: 0 auto; text-align: center; width:800px;height:600px; background:white; "></div>
        <script>
          var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                  mapOption = {
                    center: new daum.maps.LatLng(37.4676446,126.8876698), // 지도의 중심좌표
                    level: 2 // 지도의 확대 레벨
                  };
          var map = new daum.maps.Map(mapContainer, mapOption);
          // 마커가 표시될 위치입니다
          var markerPosition  = new daum.maps.LatLng(37.4676446,126.8876698);
          // 마커를 생성합니다
          var marker = new daum.maps.Marker({
            position: markerPosition
          });
          // 마커가 지도 위에 표시되도록 설정합니다
          marker.setMap(map);
          var iwContent = '<div style="padding:5px;">스마트 해법 본원<br><a href="" style="color:blue" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                  iwPosition = new daum.maps.LatLng(37.4676446,126.8876698); //인포윈도우 표시 위치입니다
          // 인포윈도우를 생성합니다
          var infowindow = new daum.maps.InfoWindow({
            position : iwPosition,
            content : iwContent
          });
          // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
          infowindow.open(map, marker);
        </script>
        <script type="text/javascript" src="http://m1.daumcdn.net/tiara/js/td.min.js"></script>
        <script type="text/javascript">
          var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
          window._tiq = _tiq;
          _tiq.push(['__trackPageview']);
        </script>
        <script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js">
        </script>
      </div>
      <div id="kk-map">
        <a href="https://map.kakao.com/?urlX=475439&urlY=1104677&urlLevel=3&itemId=8419265&q=%EC%B2%9C%EC%9E%ACit%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&srcid=8419265&map_type=TYPE_MAP" target="_blank" class="mapBtn">지도 자세히보기</a>
      </div>
    </div>
  </div>
  <footer class="ft" id="ft">
    <jsp:include page="../include/ft.jsp" />
  </footer>
</div>
</body>
</html>