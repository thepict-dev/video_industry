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

<c:set var="industry_list" value="${fn:indexOf(url, 'industry_list')}"/>
<c:set var="industry_register" value="${fn:indexOf(url, 'industry_register')}"/>

<c:set var="movie_list" value="${fn:indexOf(url, 'movie_list')}"/>
<c:set var="movie_register" value="${fn:indexOf(url, 'movie_register')}"/>

<c:set var="support_list" value="${fn:indexOf(url, 'support_list')}"/>
<c:set var="support_register" value="${fn:indexOf(url, 'support_register')}"/>


<c:set var="support_apply_list" value="${fn:indexOf(url, 'support_apply_list')}"/>
<c:set var="popup_list" value="${fn:indexOf(url, 'popup_list')}"/>
<c:set var="popup_form" value="${fn:indexOf(url, 'popup_form')}"/>

<div class="lnb">
    <nav>
        <div class="nav">
            <div class="depth1 <c:if test="${board_list ne -1 || board_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-feed.png" alt=""></span>
                <a href="#lnk">게시물 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${board_list ne -1}">active</c:if>"><a href="/board/board_list.do">게시물 리스트</a></li>
                <li class="<c:if test="${board_register ne -1}">active</c:if>"><a href="/board/board_register.do">게시물 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${popup_list ne -1 || popup_form ne -1}">active</c:if>">
               <span><img src="/img/admin/lnb_icons/lnb-popup.png" alt=""></span>
               <a href="#lnk">팝업존<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
           </div>
           <ul class="depth2">
               <li class="<c:if test="${popup_list ne -1 || popup_form ne -1}">active</c:if>"><a href="/popup/popup_list.do">팝업 리스트</a></li>
           </ul>
            
            <div class="depth1 <c:if test="${location_list ne -1 || location_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-coarse.png" alt=""></span>
                <a href="#lnk">로케이션 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${location_list ne -1}">active</c:if>"><a href="/location/location_list.do">로케이션 리스트</a></li>
                <li class="<c:if test="${location_register ne -1}">active</c:if>"><a href="/location/location_register.do">로케이션 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${industry_list ne -1 || industry_register ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-coarse.png" alt=""></span>
                <a href="#lnk">산업체 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${industry_list ne -1}">active</c:if>"><a href="/industry/industry_list.do">산업체 리스트</a></li>
                <li class="<c:if test="${industry_register ne -1}">active</c:if>"><a href="/industry/industry_register.do">산업체 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${movie_register ne -1 || movie_list ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-video.png" alt=""></span>
                <a href="#lnk">영화 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${movie_list ne -1}">active</c:if>"><a href="/movie/movie_list.do">영화 리스트</a></li>
                <li class="<c:if test="${movie_register ne -1}">active</c:if>"><a href="/movie/movie_register.do">영화 등록</a></li>
            </ul>
            
            <div class="depth1 <c:if test="${support_register ne -1 || support_list ne -1 || support_apply_list ne -1}">active</c:if>">
                <span><img src="/img/admin/lnb_icons/lnb-doc.png" alt=""></span>
                <a href="#lnk">지원사업 관리<span><img src="/img/admin/lnb_icons/lnb-arr.png" alt=""></span></a>
            </div>
            <ul class="depth2">
                <li class="<c:if test="${support_list ne -1}">active</c:if>"><a href="/support/support_list.do">지원사업 리스트</a></li>
                <li class="<c:if test="${support_register ne -1}">active</c:if>"><a href="/support/support_register.do">지원사업 등록</a></li>
                <li class="<c:if test="${support_apply_list ne -1}">active</c:if>"><a href="/support/support_apply_list.do">지원사업 신청리스트</a></li>
            </ul>
            
            
        </div>
    </nav>
</div>


<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/scripts.js"></script>
<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>