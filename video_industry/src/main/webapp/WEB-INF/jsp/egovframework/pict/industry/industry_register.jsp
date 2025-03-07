<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="산업체 등록"/>
    </c:import>
    <body>
	    
		<%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="산업체 관리"/>
	    	<c:param name="subtitle" value="산업체 등록"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	            	<form action="" id="register" name="register" method="post" enctype="multipart/form-data" class="induForm">
	            		<div class="flexContainer">
		                    <div class="inputsContainer">
		                        <div class="inputBox">
		                            <p class="inputCaption">업체명*</p>
		                            <input type="text" name="title" id="title" placeholder="내용을 입력하세요…" value="${pictVO.title}" class="lgThinInput">
		                        </div>
		                    </div>
		                    
		                    <div class="inputsContainer">
		                        <div class="inputBox">
		                            <p class="inputCaption">대표자명*</p>
		                            <input type="text" name="ceo" id="ceo" placeholder="내용을 입력하세요…" value="${pictVO.ceo}" class="lgThinInput">
		                        </div>
		                    </div>
	                   	</div>
	                    <div class="flexContainer">
	   		            	<div class="inputsContainer">
		                        <div class="inputBox">
		                            <p class="inputCaption">기업 형태*</p>
		                            <select name="category" id="category" class="lgThinInput">
		                                <option value="1" ${pictVO.scale eq '1' ? 'selected' : ''}>법인</option>
		                                <option value="2" ${pictVO.scale eq '2' ? 'selected' : ''}>개인</option>
		                                <option value="3" ${pictVO.scale eq '3' ? 'selected' : ''}>협동조합</option>
		                            </select>
		                        </div>
		                    </div>
		                    
		                    <div class="inputsContainer">
		                        <div class="inputBox">
		                            <p class="inputCaption">설립일*</p>
		                            <input type="text" name="establishment_date" id="establishment_date" placeholder="내용을 입력하세요…" value="${pictVO.establishment_date}" class="lgThinInput">
		                        </div>
		                    </div>
		                    
		                    <div class="inputsContainer">
		                        <div class="inputBox">
		                            <p class="inputCaption">연락처*</p>
		                            <input type="text" name="tel" id="tel" placeholder="내용을 입력하세요…" value="${pictVO.tel}" class="lgThinInput">
		                        </div>
		                    </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">회사 주소*</p>
	                            <input type="text" name="address" id="address" placeholder="내용을 입력하세요…" value="${pictVO.address}" style="width: 632px;">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">주력 제품*</p>
	                            <input type="text" name="introduce" id="introduce" placeholder="내용을 입력하세요…" value="${pictVO.introduce}" style="width: 632px;">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">인증 현황*</p>
	                            <input type="text" name="certificate" id="certificate" placeholder="내용을 입력하세요…" value="${pictVO.certificate}" style="width: 632px;">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">인증 현황 검색 필터*</p>
		                        <ul class="selector-container">
		                            <li>
		                                <label for="certificate_category1">
		                                    <input type="checkbox" name="certificate_category1" id="certificate_category1" value="1" <c:if test="${pictVO.certificate_category1 eq '1'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>중소기업인증</span>
		                                </label>
		                            </li>
		                            <li>
		                                <label for="certificate_category2">
		                                    <input type="checkbox" name="certificate_category2" id="certificate_category2" value="2" <c:if test="${pictVO.certificate_category2 eq '2'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>비디오물제작업</span>
		                                </label>
		                            </li>
		                            <li>
		                                <label for="certificate_category3">
		                                    <input type="checkbox" name="certificate_category3" id="certificate_category3" value="3" <c:if test="${pictVO.certificate_category3 eq '3'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>벤처기업인증</span>
		                                </label>
		                            </li>
		                            <li>
		                                <label for="certificate_category4">
		                                    <input type="checkbox" name="certificate_category4" id="certificate_category4" value="4" <c:if test="${pictVO.certificate_category4 eq '4'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>이노비즈인증</span>
		                                </label>
		                            </li>
		                            <li>
		                                <label for="certificate_category5">
		                                    <input type="checkbox" name="certificate_category5" id="certificate_category5" value="5" <c:if test="${pictVO.certificate_category5 eq '5'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>직접생산확인</span>
		                                </label>
		                            </li>
		                            <li>
		                                <label for="certificate_category6">
		                                    <input type="checkbox" name="certificate_category6" id="certificate_category6" value="6" <c:if test="${pictVO.certificate_category6 eq '6'}">checked</c:if>>
		                                    <i class="checkbox">
		                                        <svg class="selected-false" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513ZM2.03513 18.3544H17.9649C18.0623 18.3544 18.1516 18.3138 18.2326 18.2326C18.3138 18.1516 18.3544 18.0623 18.3544 17.9649V2.03513C18.3544 1.93766 18.3138 1.84842 18.2326 1.7674C18.1516 1.68618 18.0623 1.64557 17.9649 1.64557H2.03513C1.93766 1.64557 1.84842 1.68618 1.76741 1.7674C1.68618 1.84842 1.64557 1.93766 1.64557 2.03513V17.9649C1.64557 18.0623 1.68618 18.1516 1.76741 18.2326C1.84842 18.3138 1.93766 18.3544 2.03513 18.3544Z"
		                                                fill="#8B96A2" />
		                                        </svg>
		                                        <svg class="selected-true" xmlns="http://www.w3.org/2000/svg" width="20"
		                                            height="20" viewBox="0 0 20 20" fill="none">
		                                            <path
		                                                d="M8.38608 14.1187L15.5038 7.03259L14.3282 5.85696L8.38608 11.7674L5.6962 9.10918L4.52057 10.2848L8.38608 14.1187ZM2.03513 20C1.4653 20 0.98365 19.8033 0.59019 19.4098C0.19673 19.0163 0 18.5347 0 17.9649V2.03513C0 1.4653 0.19673 0.983651 0.59019 0.590191C0.98365 0.196731 1.4653 0 2.03513 0H17.9649C18.5347 0 19.0163 0.196731 19.4098 0.590191C19.8033 0.983651 20 1.4653 20 2.03513V17.9649C20 18.5347 19.8033 19.0163 19.4098 19.4098C19.0163 19.8033 18.5347 20 17.9649 20H2.03513Z"
		                                                fill="#583D94" />
		                                        </svg>
		                                    </i>
		                                    <span>기타</span>
		                                </label>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">홈페이지 링크</p>
	                            <input type="text" name="homepage_url" id="homepage_url" placeholder="내용을 입력하세요…" value="${pictVO.homepage_url}" style="width: 632px;">
	                        </div>
	                    </div>
	 
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">로고 이미지
	                                <label for="logo_url">파일추가</label>
	                                <input type="file" id="logo_url" name="logo_url" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">메인 이미지
	                                <label for="main_img_url">파일추가</label>
	                                <input type="file" id="main_img_url" name="main_img_url" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">회사정보 이미지1
	                                <label for="img_1">파일추가</label>
	                                <input type="file" id="img_1" name="img_1" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">회사정보 이미지2
	                                <label for="img_2">파일추가</label>
	                                <input type="file" id="img_2" name="img_2" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">회사정보 이미지3
	                                <label for="img_3">파일추가</label>
	                                <input type="file" id="img_3" name="img_3" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="btnContainer">
	                        <a href="/location/location_list.do" class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="button1_click()" class="basicButton blue"><img src="/img/admin/add2.png" alt="완료">완료</a>
	                    </div>
	                    
	                    <input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
						<input type='hidden' name="idx" id="idx" value='${pictVO.idx}' /> 
	                </form>
	            </div>
	        </div>
	    </div>
	    <script>
	    
		    $(document).ready(function() {
		        // 첨부파일 관련 코드
		        var fileInputs = ['attach_file', 'attach_file1', 'attach_file2', 'attach_file3'];
	
		        $.each(fileInputs, function(index, inputId) {
		            var $fileInput = $('#' + inputId);
		            var $fileList = $fileInput.closest('.inputBox').find('.fileList');
		            var $fileName = $fileList.find('p');
		            var $deleteButton = $fileList.find('button');
	
		            $fileInput.on('change', function() {
		                if (this.files.length > 0) {
		                    var fileName = this.files[0].name;
		                    $fileName.text(fileName);
		                    $fileList.css('display', 'flex');
		                }
		            });
	
		            $deleteButton.on('click', function(e) {
		                e.preventDefault();
		                $fileName.text('');
		                $fileInput.val('');
		                $fileList.hide();
		            });
	
		            // 초기 상태에서 fileList 숨김
		            $fileList.hide();
		        });
		    });
	
		    function button1_click() {
		        var title = $('#title').val();
		        
		        if (title == "" || title == undefined) {
		            window.alert("제목을 입력해주세요.");
		            $('#title').focus();
		            return false;
		        }
	
		        var saveType = $('#saveType').val();
		        var text = saveType === 'update' ? "수정하시겠습니까?" : "등록하시겠습니까?";
		        
		        oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
		        if (confirm(text)) {
		            $("#register").attr("action", "/location/location_save.do");
		            $("#register").submit();
		        }
		    }
		</script>
	</body>
	
</html>