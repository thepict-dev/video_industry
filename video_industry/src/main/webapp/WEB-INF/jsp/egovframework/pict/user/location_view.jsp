<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/location-db-detail.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <main class="container">
        <div class="content-header">
            <a href="location_db_list.do">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 40 40" fill="none">
                    <mask id="mask0_86_3625" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40"
                        height="40">
                        <rect width="40" height="40" fill="#D9D9D9" />
                    </mask>
                    <g mask="url(#mask0_86_3625)">
                        <path
                            d="M12.2883 21.25L21.7821 30.7437L20 32.5L7.5 20L20 7.5L21.7821 9.25625L12.2883 18.75H32.5V21.25H12.2883Z"
                            fill="#1C1B1F" />
                    </g>
                </svg>
            </a>
            <div class="summary">
                <p>공공/기관</p>
                <h1>SW융합 해커톤 대회 강원지역 참가팀 모집 공고</h1>
            </div>
        </div>
        <div class="grid-container">
            <div class="img-grid-container">
                <div class="main-img-container">
                    <img src="/img/user_img/main.webp" alt="" srcset="">
                </div>
                <div class="sub-img-container">
                    <img src="/img/user_img/main.webp" alt="" srcset="">

                </div>
                <div class="sub-img-container">
                    <img src="/img/user_img/main.webp" alt="" srcset="">

                </div>
                <div class="sub-img-container">
                    <img src="/img/user_img/main.webp" alt="" srcset="">

                </div>
            </div>
            <div class="content-container">
                <ul class="navigator">
                    <li class="active">
                        <a href="#lnk">장소 소개</a>
                    </li>
                    <li>
                        <a href="#lnk">촬영컨디션</a>
                    </li>
                    <li>
                        <a href="#lnk">촬영작품</a>
                    </li>
                </ul>
                <!-- 테이블 일 때 -->
                <div class="view-info-container table active">
                    <div class="table-row">
                        <div class="table-head">주소</div>
                        <div class="table-data">강원특별자치도 춘천시 신동면 김유정로 1430-14</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">연락처</div>
                        <div class="table-data">033-261-4650</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">영업시간</div>
                        <div class="table-data">09:30~18:00 / 매주 월요일 휴무</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">규모</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">엘리베이터</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">주차공간</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">반려동물</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">화장실</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">대관비용</div>
                        <div class="table-data">-</div>
                    </div>
                </div>
                <!-- 테이블 일 때 -->
                <div class="view-info-container table">
                    <div class="table-row">
                        <div class="table-head">채광</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">주변 소음</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">대기실</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">조명설치</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">드론 촬영</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">야간 촬영</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">휴관일 촬영</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">보유 기자재</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">전기 사용</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">와이파이</div>
                        <div class="table-data">-</div>
                    </div>
                    <div class="table-row">
                        <div class="table-head">인원 통제</div>
                        <div class="table-data">-</div>
                    </div>
                </div>
                <div class="view-info-container poster-container">
                    <div class="poster">
                        <div class="img-container">
                            <img src="/img/user_img/poster.png" alt="" srcset="">
                        </div>
                        <div class="movie-info">
                            <div class="info-box">
                                <span class="date">2024.02.07 개봉</span>
                                <h6>도그데이즈</h6>
                                <p class="text">
                                    깔끔한 성격의 계획형 싱글남 ‘민상’(유해진). 영끌까지 모아 산 건물을 개똥밭으로 만드는 세입자 수의사 ‘진영’(김서형) 때문에 매일 머리가 아프다.
                                    오늘도
                                    ‘진영’과
                                    티격태격하던 ‘민상’은 동물병원에서 한 성격하는 할머니를 만나는데, 다름 아닌 세계적 건축가 ‘민서’(윤여정)! 진행 중인 프로젝트를 위해 ‘민서’의
                                    도움이 절실한
                                    ‘민상’은 ‘민서’에게 잘 보이기 위해 ‘진영’과 그녀의 반려견 ‘차장님’을 공략하기 시작한다. 갑자기 길에서 쓰러지게 되며 유일한 가족인 반려견
                                    ‘완다’를 잃어
                                    버리고만
                                    ‘민서’. 동네에 살고 있는 케이팝 작곡가 ‘선용’(정성화)과 ‘정아’(김윤진) 가족이 완다를 보살피고 있다는 사실을 모르는 ‘민서’는 자신을 구해준
                                    MZ 배달
                                    라이더
                                    ‘진우’(탕준상)와 함께 완다를 찾아 나선다. 한편 ‘선용’의 후배인 밴드 리더 ‘현’(이현우)은 자리를 비운 여친의 반려견 ‘스팅’을 돌보던 중
                                    스팅의 대디를
                                    자청하며
                                    나타난 여친의 전남친 ‘다니엘’(다니엘 헤니)의 등장에 기가 막힐 따름인데…! 특별한 단짝 덕분에 엮이게 된 이들의 기분 좋은 갓생 스토리가 시작된다!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 촬영 데이터 없을 때 -->
                <!-- <div class="table">
                    <div class="table-row no-data">
                        <div class="table-data">아직 해당 공간에서 촬영한 작품이 없어요</div>
                    </div>
                </div> -->
            </div>
            <button class="active-form">
                <span>로케이션 신청하기</span>
                <i>
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                        <mask id="mask0_20_1968" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                            width="24" height="24">
                            <rect width="24" height="24" fill="#D9D9D9" />
                        </mask>
                        <g mask="url(#mask0_20_1968)">
                            <path
                                d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
                                fill="black" />
                        </g>
                    </svg>
                </i>
            </button>
        </div>
    </main>
    <!-- 폼 -->
    <div class="form-outter">
        <div class="form-container">
            <div class="form-header">
                <h2>로케이션 신청하기</h2>
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
                            <h4>로케이션명</h4>
                            <input type="text" disabled value="애니메이션 박물관" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="input">
                            <h4>로케이션 신청일 신청일</h4>
                            <div class="date-range-container">
                                <div class="date-container">
                                    <input type="date" name="start_date" id="start_date">
                                    <span class="seleced_start_date not-seleced">시작 날짜</span>
                                    <button class="select_start_date">
                                        <i>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20"
                                                viewBox="0 0 18 20" fill="none">
                                                <path
                                                    d="M2.55775 19.5576C2.05258 19.5576 1.625 19.3826 1.275 19.0326C0.925 18.6826 0.75 18.2551 0.75 17.7499V4.36538C0.75 3.86022 0.925 3.43263 1.275 3.08263C1.625 2.73263 2.05258 2.55763 2.55775 2.55763H3.94225V0.442383H5.48075V2.55763H13.0577V0.442383H14.5577V2.55763H15.9423C16.4474 2.55763 16.875 2.73263 17.225 3.08263C17.575 3.43263 17.75 3.86022 17.75 4.36538V17.7499C17.75 18.2551 17.575 18.6826 17.225 19.0326C16.875 19.3826 16.4474 19.5576 15.9423 19.5576H2.55775ZM2.55775 18.0576H15.9423C16.0192 18.0576 16.0898 18.0256 16.1538 17.9614C16.2179 17.8974 16.25 17.8269 16.25 17.7499V8.36538H2.25V17.7499C2.25 17.8269 2.28208 17.8974 2.34625 17.9614C2.41025 18.0256 2.48075 18.0576 2.55775 18.0576ZM2.25 6.86538H16.25V4.36538C16.25 4.28838 16.2179 4.21788 16.1538 4.15388C16.0898 4.08972 16.0192 4.05763 15.9423 4.05763H2.55775C2.48075 4.05763 2.41025 4.08972 2.34625 4.15388C2.28208 4.21788 2.25 4.28838 2.25 4.36538V6.86538ZM9.25 12.1346C9.00517 12.1346 8.7965 12.0484 8.624 11.8759C8.45167 11.7035 8.3655 11.4949 8.3655 11.2499C8.3655 11.005 8.45167 10.7964 8.624 10.6239C8.7965 10.4515 9.00517 10.3654 9.25 10.3654C9.49483 10.3654 9.7035 10.4515 9.876 10.6239C10.0483 10.7964 10.1345 11.005 10.1345 11.2499C10.1345 11.4949 10.0483 11.7035 9.876 11.8759C9.7035 12.0484 9.49483 12.1346 9.25 12.1346ZM5.25 12.1346C5.00517 12.1346 4.7965 12.0484 4.624 11.8759C4.45167 11.7035 4.3655 11.4949 4.3655 11.2499C4.3655 11.005 4.45167 10.7964 4.624 10.6239C4.7965 10.4515 5.00517 10.3654 5.25 10.3654C5.49483 10.3654 5.7035 10.4515 5.876 10.6239C6.04833 10.7964 6.1345 11.005 6.1345 11.2499C6.1345 11.4949 6.04833 11.7035 5.876 11.8759C5.7035 12.0484 5.49483 12.1346 5.25 12.1346ZM13.25 12.1346C13.0052 12.1346 12.7965 12.0484 12.624 11.8759C12.4517 11.7035 12.3655 11.4949 12.3655 11.2499C12.3655 11.005 12.4517 10.7964 12.624 10.6239C12.7965 10.4515 13.0052 10.3654 13.25 10.3654C13.4948 10.3654 13.7035 10.4515 13.876 10.6239C14.0483 10.7964 14.1345 11.005 14.1345 11.2499C14.1345 11.4949 14.0483 11.7035 13.876 11.8759C13.7035 12.0484 13.4948 12.1346 13.25 12.1346ZM9.25 16.0576C9.00517 16.0576 8.7965 15.9714 8.624 15.7989C8.45167 15.6265 8.3655 15.418 8.3655 15.1731C8.3655 14.9281 8.45167 14.7195 8.624 14.5471C8.7965 14.3746 9.00517 14.2884 9.25 14.2884C9.49483 14.2884 9.7035 14.3746 9.876 14.5471C10.0483 14.7195 10.1345 14.9281 10.1345 15.1731C10.1345 15.418 10.0483 15.6265 9.876 15.7989C9.7035 15.9714 9.49483 16.0576 9.25 16.0576ZM5.25 16.0576C5.00517 16.0576 4.7965 15.9714 4.624 15.7989C4.45167 15.6265 4.3655 15.418 4.3655 15.1731C4.3655 14.9281 4.45167 14.7195 4.624 14.5471C4.7965 14.3746 5.00517 14.2884 5.25 14.2884C5.49483 14.2884 5.7035 14.3746 5.876 14.5471C6.04833 14.7195 6.1345 14.9281 6.1345 15.1731C6.1345 15.418 6.04833 15.6265 5.876 15.7989C5.7035 15.9714 5.49483 16.0576 5.25 16.0576ZM13.25 16.0576C13.0052 16.0576 12.7965 15.9714 12.624 15.7989C12.4517 15.6265 12.3655 15.418 12.3655 15.1731C12.3655 14.9281 12.4517 14.7195 12.624 14.5471C12.7965 14.3746 13.0052 14.2884 13.25 14.2884C13.4948 14.2884 13.7035 14.3746 13.876 14.5471C14.0483 14.7195 14.1345 14.9281 14.1345 15.1731C14.1345 15.418 14.0483 15.6265 13.876 15.7989C13.7035 15.9714 13.4948 16.0576 13.25 16.0576Z"
                                                    fill="#8B96A2" />
                                            </svg>
                                        </i>
                                    </button>
                                </div>
                                <div class="dash">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="2" viewBox="0 0 13 2"
                                        fill="none">
                                        <path d="M0.75 1H12.75" stroke="#8B96A2" />
                                    </svg>
                                </div>
                                <div class="date-container">
                                    <input type="date" name="end_date" id="end_date">
                                    <span class="seleced_end_date not-seleced">종료 날짜</span>
                                    <button class="select_end_date">
                                        <i>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20"
                                                viewBox="0 0 18 20" fill="none">
                                                <path
                                                    d="M2.55775 19.5576C2.05258 19.5576 1.625 19.3826 1.275 19.0326C0.925 18.6826 0.75 18.2551 0.75 17.7499V4.36538C0.75 3.86022 0.925 3.43263 1.275 3.08263C1.625 2.73263 2.05258 2.55763 2.55775 2.55763H3.94225V0.442383H5.48075V2.55763H13.0577V0.442383H14.5577V2.55763H15.9423C16.4474 2.55763 16.875 2.73263 17.225 3.08263C17.575 3.43263 17.75 3.86022 17.75 4.36538V17.7499C17.75 18.2551 17.575 18.6826 17.225 19.0326C16.875 19.3826 16.4474 19.5576 15.9423 19.5576H2.55775ZM2.55775 18.0576H15.9423C16.0192 18.0576 16.0898 18.0256 16.1538 17.9614C16.2179 17.8974 16.25 17.8269 16.25 17.7499V8.36538H2.25V17.7499C2.25 17.8269 2.28208 17.8974 2.34625 17.9614C2.41025 18.0256 2.48075 18.0576 2.55775 18.0576ZM2.25 6.86538H16.25V4.36538C16.25 4.28838 16.2179 4.21788 16.1538 4.15388C16.0898 4.08972 16.0192 4.05763 15.9423 4.05763H2.55775C2.48075 4.05763 2.41025 4.08972 2.34625 4.15388C2.28208 4.21788 2.25 4.28838 2.25 4.36538V6.86538ZM9.25 12.1346C9.00517 12.1346 8.7965 12.0484 8.624 11.8759C8.45167 11.7035 8.3655 11.4949 8.3655 11.2499C8.3655 11.005 8.45167 10.7964 8.624 10.6239C8.7965 10.4515 9.00517 10.3654 9.25 10.3654C9.49483 10.3654 9.7035 10.4515 9.876 10.6239C10.0483 10.7964 10.1345 11.005 10.1345 11.2499C10.1345 11.4949 10.0483 11.7035 9.876 11.8759C9.7035 12.0484 9.49483 12.1346 9.25 12.1346ZM5.25 12.1346C5.00517 12.1346 4.7965 12.0484 4.624 11.8759C4.45167 11.7035 4.3655 11.4949 4.3655 11.2499C4.3655 11.005 4.45167 10.7964 4.624 10.6239C4.7965 10.4515 5.00517 10.3654 5.25 10.3654C5.49483 10.3654 5.7035 10.4515 5.876 10.6239C6.04833 10.7964 6.1345 11.005 6.1345 11.2499C6.1345 11.4949 6.04833 11.7035 5.876 11.8759C5.7035 12.0484 5.49483 12.1346 5.25 12.1346ZM13.25 12.1346C13.0052 12.1346 12.7965 12.0484 12.624 11.8759C12.4517 11.7035 12.3655 11.4949 12.3655 11.2499C12.3655 11.005 12.4517 10.7964 12.624 10.6239C12.7965 10.4515 13.0052 10.3654 13.25 10.3654C13.4948 10.3654 13.7035 10.4515 13.876 10.6239C14.0483 10.7964 14.1345 11.005 14.1345 11.2499C14.1345 11.4949 14.0483 11.7035 13.876 11.8759C13.7035 12.0484 13.4948 12.1346 13.25 12.1346ZM9.25 16.0576C9.00517 16.0576 8.7965 15.9714 8.624 15.7989C8.45167 15.6265 8.3655 15.418 8.3655 15.1731C8.3655 14.9281 8.45167 14.7195 8.624 14.5471C8.7965 14.3746 9.00517 14.2884 9.25 14.2884C9.49483 14.2884 9.7035 14.3746 9.876 14.5471C10.0483 14.7195 10.1345 14.9281 10.1345 15.1731C10.1345 15.418 10.0483 15.6265 9.876 15.7989C9.7035 15.9714 9.49483 16.0576 9.25 16.0576ZM5.25 16.0576C5.00517 16.0576 4.7965 15.9714 4.624 15.7989C4.45167 15.6265 4.3655 15.418 4.3655 15.1731C4.3655 14.9281 4.45167 14.7195 4.624 14.5471C4.7965 14.3746 5.00517 14.2884 5.25 14.2884C5.49483 14.2884 5.7035 14.3746 5.876 14.5471C6.04833 14.7195 6.1345 14.9281 6.1345 15.1731C6.1345 15.418 6.04833 15.6265 5.876 15.7989C5.7035 15.9714 5.49483 16.0576 5.25 16.0576ZM13.25 16.0576C13.0052 16.0576 12.7965 15.9714 12.624 15.7989C12.4517 15.6265 12.3655 15.418 12.3655 15.1731C12.3655 14.9281 12.4517 14.7195 12.624 14.5471C12.7965 14.3746 13.0052 14.2884 13.25 14.2884C13.4948 14.2884 13.7035 14.3746 13.876 14.5471C14.0483 14.7195 14.1345 14.9281 14.1345 15.1731C14.1345 15.418 14.0483 15.6265 13.876 15.7989C13.7035 15.9714 13.4948 16.0576 13.25 16.0576Z"
                                                    fill="#8B96A2" />
                                            </svg>
                                        </i>
									</button>
                                </div>
                            </div>
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
                        <a href="#lnk" class="go-list">선택취소</a>
                        <a href="#lnk" class="go-form">신청하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/location-db-detail.js"></script>
	<script>
		$('.active-form').click(function(){
			$('.form-outter').css('display', 'flex');
		});
		$('.form-header>button').click(function(){
			$('.form-outter').css('display', 'none');
		});
		$('.go-list').click(function(){
			$('.form-outter').css('display', 'none');
		});
	</script>
</body>
</html>