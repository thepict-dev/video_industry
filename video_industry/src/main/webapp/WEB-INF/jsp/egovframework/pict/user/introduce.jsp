<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/introduce.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1066a83bf5ee02ca0e84dd88546b4c42&libraries=services"></script>
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="visual-section">
        <div class="opacity-back"></div>
        <div class="content">
            <h2>센터소개</h2>
            <h1 class="pc">'영화특별시'로의 도약,<br /> 춘천시영산산업지원센터가 중추적인 역할을 수행합니다.</h1>
            <h1 class="mb">'영화특별시'로의 도약,<br /> 춘천시영산산업지원센터가<br /> 중추적인 역할을 수행합니다.</h1>
        </div>
    </div>
    <div class="main-section">
        <h3 class="section-title">인사말</h3>
        <div class="greetings-container">
            <p class="main">
                춘천시 영상산업지원센터는 <br />
                2019년 8월 ‘영화특별시’로 도약하기 위한<br />
                중추적인 역할을 수행하기 위하여 설립, 출범하게 되었습니다.
            </p>
            <p class="sub">
                최근 영화‧영상산업은 새로운 플랫폼의 등장으로 기획, 제작, 배급까지 전 분야가 급변하고 있습니다. 장르, 포맷, 제작 퀄리티 사이의 경계가 사라지면서 콘텐츠의 형태도 그 어느 때보다
                다양하게 변화하고 있습니다.
                <br />
                <br />
                춘천시 영상산업지원센터는 ‘뉴 미디어’ 시대를 맞아 춘천시의 미래 영상인을 육성하고, 콘텐츠 제작뿐만 아니라 콘텐츠를 기획하는 영상제작 생태계를 확대 조성하여 시민과 지역 공동체가 함께하는 춘천시 영상‧영화 산업의 기반을 다져 나가겠습니다.<br>
				앞으로 춘천시민들과 영상산업‧문화를 잇는 튼튼한 다리가 될 수 있도록 많은 관심과 격려 부탁드립니다.
                <br />
                <br />
                감사합니다.
            </p>
        </div>
        <h3 class="section-title">직원/업무</h3>
        <div class="grid-container">
            <h4>영상산업지원팀</h4>
            <div class="table">
                <div class="head">직책</div>
                <div class="head">연락처</div>
                <div class="head">업무</div>
                <div class="data">팀장</div>
                <div class="data">033-245-6330</div>
                <ul class="data">
                    <li>∙ 팀 업무 총괄</li>
                    <li>∙ 신규 사업 발굴, 네트워킹</li>
                </ul>
                <div class="data">대리</div>
                <div class="data">033-245-6331</div>
                <ul class="data">
                    <li>∙ 영상산업 육성</li>
                    <li>∙ VFX산업 전력인력 양성</li>
                </ul>
                <div class="data">주임</div>
                <div class="data">033-245-6332</div>
                <ul class="data">
                    <li>∙ 로케이션 지원 (스카우팅, 인센티브)</li>
                </ul>
                <div class="data">주임</div>
                <div class="data">033-245-6333</div>
                <ul class="data">
                    <li>∙ 독립영화 지원</li>
                    <li>∙ 시민참여 문화행사</li>
                </ul>
            </div>
        </div>
        <h3 class="section-title">비전/CI</h3>
        <div class="grid-container">
            <h4>비전/전략</h4>
            <div class="vision-container">
                <div class="row">
                    <div class="head">비전</div>
                    <div class="data">춘천시 영상산업 거점기관</div>
                </div>
                <div class="row">
                    <div class="head">목표</div>
                    <div class="data">춘천시 영상산업 생태계 구축</div>
                </div>
                <div class="row">
                    <div class="head">전략</div>
                    <ul class="data">
                        <li>∙ VFX특화 산업육성</li>
                        <li>∙ 로케이션지원확대</li>
                        <li>∙ 독립영화 육성 및 시민 영상문화향유권 증진</li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="grid-container">
            <h4>CI</h4>
            <div class="ci-container">
                <img src="/img/user_img/ci.png" alt="" alt="로고">
	            <a href="/img/user_img/ci.png" download>CI 다운로드</a>
            </div>
        </div>
        <h3 class="section-title">오시는 길</h3>
        <div class="map-container">
            <p>
                춘천시영상산업지원센터는 영상 창작자에게<br />
                언제나 열려있습니다.
            </p>
            <div class="map"></div>

            <div class="info">
                <div class="row">
                    <div class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="17" viewBox="0 0 16 17" fill="none">
                            <mask id="mask0_10_773" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                                width="16" height="17">
                                <rect y="0.5" width="16" height="16" fill="#D9D9D9" />
                            </mask>
                            <g mask="url(#mask0_10_773)">
                                <path
                                    d="M8.00465 8.41018C8.30065 8.41018 8.55248 8.30479 8.76015 8.09402C8.96793 7.88324 9.07182 7.62985 9.07182 7.33385C9.07182 7.03785 8.96637 6.78596 8.75549 6.57818C8.54471 6.37052 8.29132 6.26668 7.99532 6.26668C7.69932 6.26668 7.44749 6.37207 7.23982 6.58285C7.03204 6.79374 6.92815 7.04718 6.92815 7.34318C6.92815 7.63918 7.0336 7.89102 7.24449 8.09868C7.45526 8.30635 7.70865 8.41018 8.00465 8.41018ZM7.99998 13.4257C9.27087 12.3137 10.2606 11.2299 10.9692 10.1744C11.6777 9.11879 12.032 8.18802 12.032 7.38202C12.032 6.21113 11.6514 5.23702 10.8903 4.45968C10.1292 3.68235 9.16576 3.29368 7.99998 3.29368C6.83421 3.29368 5.87076 3.68235 5.10965 4.45968C4.34854 5.23702 3.96799 6.21113 3.96799 7.38202C3.96799 8.18802 4.32226 9.11879 5.03082 10.1744C5.73937 11.2299 6.7291 12.3137 7.99998 13.4257ZM7.99998 14.573C6.36698 13.1847 5.14226 11.8925 4.32582 10.6965C3.50948 9.50052 3.10132 8.39568 3.10132 7.38202C3.10132 6.02135 3.55726 4.85641 4.46915 3.88718C5.38115 2.91796 6.55532 2.43335 7.99165 2.43335C9.42799 2.43335 10.6049 2.91796 11.5225 3.88718C12.4399 4.85641 12.8987 6.02135 12.8987 7.38202C12.8987 8.39568 12.4933 9.49807 11.6827 10.6892C10.872 11.8802 9.64443 13.1748 7.99998 14.573Z"
                                    fill="black" />
                            </g>
                        </svg>
                    </div>
                    <div class="head">주소</div>
                    <div class="text">(24461)강원특별자치도 춘천시 서면 박사로 882 (재)강원정보문화산업진흥원 강원창작개발센터 2층 213호</div>
                </div>
                <div class="row">
                    <div class="icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="17" viewBox="0 0 16 17" fill="none">
                            <mask id="mask0_10_783" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                                width="16" height="17">
                                <rect y="0.5" width="16" height="16" fill="#D9D9D9" />
                            </mask>
                            <g mask="url(#mask0_10_783)">
                                <path
                                    d="M12.3768 13.7501C11.165 13.6501 10 13.3302 8.88201 12.7904C7.76412 12.2506 6.75195 11.5265 5.84551 10.6181C4.93917 9.70951 4.22167 8.70007 3.69301 7.58973C3.16434 6.47951 2.84445 5.31845 2.73334 4.10657C2.71112 3.87134 2.7794 3.66701 2.93817 3.49356C3.09684 3.32012 3.29523 3.2334 3.53334 3.2334H5.27434C5.47601 3.2334 5.64951 3.2939 5.79484 3.4149C5.94017 3.53579 6.04145 3.69368 6.09867 3.88857L6.44751 5.2834C6.47395 5.43207 6.46562 5.57734 6.42251 5.71923C6.37929 5.86112 6.30895 5.97651 6.21151 6.0654L4.67184 7.56423C4.91962 8.02912 5.1944 8.46673 5.49617 8.87707C5.79784 9.28729 6.12845 9.67095 6.48801 10.0281C6.84301 10.383 7.22651 10.7117 7.63851 11.0142C8.05051 11.3168 8.4954 11.592 8.97317 11.8399L10.5525 10.2976C10.6457 10.2001 10.7526 10.1351 10.8732 10.1026C10.9936 10.0701 11.1282 10.065 11.277 10.0872L12.6115 10.3809C12.8132 10.4365 12.9728 10.539 13.0903 10.6886C13.2079 10.8381 13.2667 11.0159 13.2667 11.2219V12.9501C13.2667 13.1882 13.1772 13.3866 12.9982 13.5452C12.8192 13.704 12.6121 13.7723 12.3768 13.7501ZM4.28201 6.71807L5.53851 5.5129C5.55984 5.49579 5.57373 5.47229 5.58017 5.4424C5.58662 5.41251 5.58556 5.38473 5.57701 5.35906L5.28451 4.20257C5.27595 4.16845 5.26101 4.14284 5.23967 4.12573C5.21834 4.10862 5.19056 4.10007 5.15634 4.10007H3.71667C3.69101 4.10007 3.66962 4.10862 3.65251 4.12573C3.63551 4.14284 3.62701 4.16423 3.62701 4.1899C3.66112 4.61212 3.73567 5.03323 3.85067 5.45323C3.96556 5.87334 4.10934 6.29495 4.28201 6.71807ZM9.84867 12.2462C10.2472 12.4216 10.664 12.5547 11.0988 12.6457C11.5338 12.7366 11.9376 12.8035 12.3102 12.8462C12.3358 12.8462 12.3572 12.8377 12.3743 12.8206C12.3915 12.8035 12.4 12.7821 12.4 12.7564V11.3206C12.4 11.2863 12.3915 11.2586 12.3743 11.2372C12.3572 11.2159 12.3316 11.201 12.2975 11.1924L11.2142 10.9577C11.1885 10.9492 11.1661 10.9481 11.1468 10.9546C11.1276 10.961 11.1073 10.9749 11.0858 10.9962L9.84867 12.2462Z"
                                    fill="#1C1B1F" />
                            </g>
                        </svg>
                    </div>
                    <div class="head">대표전화</div>
                    <div class="text">033-245-6333</div>
                </div>
            </div>
        </div>
    </div>
    
	<script type="text/javascript">

	    kakao.maps.load(function() {
	            console.log("??????")
	            var mapContainer = document.querySelector('.map'), // 지도를 표시할 div 
	            mapOption = { 
	                center: new kakao.maps.LatLng('37.89304768366957', '127.69193069339971'), // 지도의 중심좌표
	                level: 3 // 지도의 확대 레벨
	            };
	            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	            // 마커가 표시될 위치입니다 
	            var markerPosition  = new kakao.maps.LatLng('37.89304768366957', '127.69193069339971'); 
	            // 마커를 생성합니다
	            var marker = new kakao.maps.Marker({
	                position: markerPosition
	            });
	            
	            // 마커가 지도 위에 표시되도록 설정합니다
	            marker.setMap(map);
	            
	            var iwContent = '<div style="line-height:30px; width:230px; text-align:center">' + '춘천시영상산지원센터' +'</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	
	            // 인포윈도우를 생성합니다
	            var infowindow = new kakao.maps.InfoWindow({
	                content : iwContent
	            });
	            
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	            // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
	                infowindow.open(map, marker);
	            });
	
	            // 마우스가 지도 영역에 있을 때
	            mapContainer.addEventListener('mouseenter', function() {
	                document.body.style.overflow = 'hidden'; // 페이지 스크롤 비활성화
	                /* lenis.stop(); // Lenis 스크롤 비활성화 */
	            });
	
	            // 마우스가 지도 영역을 벗어날 때
	            mapContainer.addEventListener('mouseleave', function() {
	                document.body.style.overflow = 'auto'; // 페이지 스크롤 다시 활성화
	                /* lenis.start(); // Lenis 스크롤 다시 활성화 */
	            });
	        });

	
	</script>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/industry-db.js"></script>
</body>
</html>