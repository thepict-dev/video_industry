<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	String url = request.getRequestURL().toString();
	pageContext.setAttribute("url", url);
	
%>
<c:set var="board_list" value="${fn:indexOf(url, 'board_list')}"/>
<c:set var="board_register" value="${fn:indexOf(url, 'board_register')}"/>

<c:set var="location_list" value="${fn:indexOf(url, 'location_list')}"/>
<c:set var="location_register" value="${fn:indexOf(url, 'location_register')}"/>

<div class="lnb">
    <nav>
        <div class="nav">
            <div class="depth1 <c:if test="${board_list ne -1 || board_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/user.png" alt=""></span>
                <a href="#lnk">게시물 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${board_list ne -1}">active</c:if>"><a href="/board/board_list.do">게시물 리스트</a></li>
                <li class="<c:if test="${board_register ne -1}">active</c:if>"><a href="/board/board_register.do">게시물 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${feed_list ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-feed.png" alt=""></span>
                <a href="#lnk">로케이션 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${location_list ne -1}">active</c:if>"><a href="/location/location_list.do">로케이션 리스트</a></li>
                <li class="<c:if test="${location_register ne -1}">active</c:if>"><a href="/location/location_register.do">로케이션 등록</a></li>
            </ul>
            
            <!-- 
            <div class="depth1 <c:if test="${history_list ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-history.png" alt=""></span>
                <a href="#lnk">코스이력 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${history_list ne -1}">active</c:if>"><a href="/history/history_list.do">코스이력 리스트</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${event_list ne -1 || event_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-event.png" alt=""></span>
                <a href="#lnk">행사 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${event_list ne -1}">active</c:if>"><a href="/event/event_list.do">행사 리스트</a></li>
                <li class="<c:if test="${event_register ne -1}">active</c:if>"><a href="/event/event_register.do">행사 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${course_list ne -1 || course_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-coarse.png" alt=""></span>
                <a href="#lnk">코스 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${course_list ne -1}">active</c:if>"><a href="/course/course_list.do">코스 리스트</a></li>
                <li class="<c:if test="${course_register ne -1}">active</c:if>"><a href="/course/course_register.do">코스 등록</a></li>
            </ul>
             -->
        </div>
    </nav>
</div>


<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/scripts.js"></script>
<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>