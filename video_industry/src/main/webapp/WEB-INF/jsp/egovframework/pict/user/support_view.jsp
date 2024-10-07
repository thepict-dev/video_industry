<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/support-project-detail.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <main class="container">
        <div class="content-header">
            <h1>SW융합 해커톤 대회 강원지역 참가팀 모집 공고</h1>
            <p>2024.07.15</p>
        </div>
        <div class="content">
            <p>본문내용</p>
        </div>
        <div class="addFile">
            <a href="#lnk" download>
                <img src="/img/user_img/file.png" alt="">
                파일이름ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
            </a>
        </div>
        <div class="buttons">
            <a href="/support.do" class="go-list">목록으로</a>
            <button id="goForm" class="go-form">신청하기</button>
        </div>
    </main>

    <div class="form-outter">
        <div class="form-container">
            <div class="form-header">
                <h2>지원사업 신청하기</h2>
                <button class="close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                        <mask id="mask0_20_1381" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                            width="30" height="30">
                            <rect width="30" height="30" fill="#D9D9D9" />
                        </mask>
                        <g mask="url(#mask0_20_1381)">
                            <path
                                d="M9.05375 21.3075L8 20.2538L13.6 14.6538L8 9.05375L9.05375 8L14.6537 13.6L20.2537 8L21.3075 9.05375L15.7075 14.6538L21.3075 20.2538L20.2537 21.3075L14.6537 15.7075L9.05375 21.3075Z"
                                fill="white" />
                        </g>
                    </svg>
                </button>
            </div>
            <div class="scroll-container">
                <div class="form">
                    <div class="row">
                        <div class="input">
                            <h4>사업명</h4>
                            <input type="text" disabled value="로케이션 스카우팅 및 촬영지원" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>지원 신청일</h4>
                            <input type="text" disabled value="로케이션 스카우팅 및 촬영지원" />
                        </div>
                        <div class="input">
                            <h4>신청인</h4>
                            <input type="text" placeholder="이름을 입력하세요" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>전화번호</h4>
                            <input type="text" placeholder="전화번호를 입력하세요" />
                        </div>
                        <div class="input">
                            <h4>이메일</h4>
                            <input type="text" placeholder="이메일을 입력하세요" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>소속</h4>
                            <input type="text" placeholder="소속을 입력하세요" />
                        </div>
                        <div class="input">
                            <h4>직책</h4>
                            <input type="text" placeholder="직책을 입력하세요" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>구분</h4>
                            <div class="radio-container">
                                <label class="custom" for="type_1">
                                    <input type="radio" id="type_1" name="type">
                                    <div class="custom-radio"></div>
                                    <span>제작사</span>
                                </label>
                                <label class="custom" for="type_2">
                                    <input type="radio" id="type_2" name="type">
                                    <div class="custom-radio"></div>
                                    <span>배급사</span>
                                </label>
                                <label class="custom" for="type_3">
                                    <input type="radio" id="type_3" name="type">
                                    <div class="custom-radio"></div>
                                    <span>개인</span>
                                </label>
                                <label class="custom" for="type_4">
                                    <input type="radio" id="type_4" name="type">
                                    <div class="custom-radio"></div>
                                    <span>업체</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>작품명</h4>
                            <input type="text" placeholder="작품명을 입력하세요" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>첨부파일</h4>
                            <div class="file-tap">
                                <label for="file" class="custom-file">
                                    <input id="file" type="file" />
                                    <div class="file-name"></div>
                                    <button class="attach-file">파일추가</button>
                                </label>
                                <div class="texts">
                                    ∙ 첨부파일의 용량은 50메가바이트(mb)를 넘을 수 없습니다.<br />
                                    ∙ 지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-footer">
                    <div class="checkbox-container">
                        <label for="agree">
                            <input type="checkbox" name="agree" id="agree">
                            <span>개인정보사용에 동의합니다</span>
                        </label>
                    </div>
                    <div class="buttons agree">
                        <button class="go-list">선택취소</button>
                        <a href="#lnk" class="go-form">신청하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/support-project-detail.js"></script>
</body>
</html>
