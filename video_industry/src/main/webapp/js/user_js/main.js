
(function ($) {
    $.fn.dragScroll = function () {
        var mouseDown = false;
        var startX, scrollLeft;

        var startDragging = function (e) {
            mouseDown = true;
            startX = e.pageX - $(this).offset().left;
            scrollLeft = $(this).scrollLeft();
        };

        var stopDragging = function (e) {
            mouseDown = false;
        };

        var move = function (e) {
            if (!mouseDown) { return; }
            e.preventDefault();
            var x = e.pageX - $(this).offset().left;
            var walk = (x - startX) * 2; // 스크롤 속도 조절
            $(this).scrollLeft(scrollLeft - walk);
        };

        $(this).on('mousedown', startDragging)
            .on('mouseup mouseleave', stopDragging)
            .on('mousemove', move);

        return this;
    };
})(jQuery);



let startWheel = false;
let clickedPoster = null;

window.addEventListener("wheel", (e) => {
    startWheel = true;
    if (startWheel) {

    }
})

$(".poster").click(function () {
    $(".poster").removeClass("active");
    console.log($(this))
    $(this).addClass("active");
}
)

$(document).ready(function () {
    $('.location-section').dragScroll();
    $('.poster-container').dragScroll();
});


// GSAP 애니메이션 설정
gsap.registerPlugin(ScrollTrigger);

const introSection = document.querySelector('.home-section');
const swiperSection = document.querySelector('.main-section');
const header = document.querySelector('header');
const main = document.querySelector('main');

// Swiper 관련 요소
const progressCircle = document.querySelector(".autoplay-progress svg");
const pauseButton = document.querySelector(".swiper-button-pause");
const nextButton = document.querySelector(".swiper-button-next");
const prevButton = document.querySelector(".swiper-button-prev");
let isPlaying = false;

// 초기 설정
gsap.set(introSection, { 
    position: 'fixed', 
    top: 0, 
    left: 0, 
    width: '100%', 
    height: '100vh', 
    zIndex: 15 
});

gsap.set([header, main], { 
    position: 'relative',
    //zIndex: 1
});

let isAnimationTriggered = false;
let swiper;
const autoplayDuration = 5000; // 5초

// intro 섹션 애니메이션 생성
const introAnimation = gsap.timeline({ paused: true });

introAnimation
.to(introSection, {
    width: () => swiperSection.offsetWidth,
    height: () => swiperSection.offsetHeight,
    top: () => swiperSection.getBoundingClientRect().top,
    left: () => swiperSection.getBoundingClientRect().left,
    duration: 1,
    ease: 'power2.inOut'
})
.to(introSection.querySelector('.introSecContents'), {
    opacity: 0,
    duration: 0.3,
    ease: 'power2.inOut'
}, "-=0.3")
.to(introSection, {
    opacity: 0,
    duration: 0.3,
    ease: 'none',
    onComplete: () => {
    introSection.style.display = 'none';
    document.body.style.overflow = 'auto';
    initSwiper();
    }
});

function initSwiper() {
	const popupSwiper = new Swiper('.swiper.popup', {
	  autoplay: {
	    delay: 3000,
	    disableOnInteraction: false
	  },
	  loop: true,	// 무한 루 적용
	  speed: 2000, 
	  pagination: {
	    el: ".swiper-pagination.popup",
	    clickable: true,
	  },
	});
    swiper = new Swiper(".main-section .swiper", {
        centeredSlides: true,
        loop: true,
        autoplay: {
            delay: autoplayDuration,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        on: {
            autoplayTimeLeft(s, time, progress) {
                progressCircle.style.setProperty("--progress", 1 - progress);
            }
        }
    });

    isPlaying = true;
    updatePlayPauseButton();
}

function toggleAutoplay() {
    if (isPlaying) {
        swiper.autoplay.stop();
    } else {
        swiper.autoplay.start();
    }
    isPlaying = !isPlaying;
    updatePlayPauseButton();
}

function updatePlayPauseButton() {
    pauseButton.style.backgroundImage = isPlaying ? 'url(/img/user_img/pause.png)' : 'url(/img/user_img/play.png)';
}

function handleAnimationTrigger() {
    if (!isAnimationTriggered) {
        isAnimationTriggered = true;
        introAnimation.play();
        window.removeEventListener('wheel', handleAnimationTrigger);
        window.removeEventListener('touchstart', handleAnimationTrigger);
    }
}

// 이벤트 리스너 등록
window.addEventListener('wheel', handleAnimationTrigger, { passive: false });
window.addEventListener('touchstart', handleAnimationTrigger, { passive: false });

// 초기 스크롤 방지
document.body.style.overflow = 'hidden';

// Swiper 컨트롤 기능
pauseButton.addEventListener('click', toggleAutoplay);



$( document ).ready(function() {
    var cookiedata = document.cookie;
    if (cookiedata.indexOf("ncookie=done") < 0) {
        $(".mainPopup").css("display", "flex");
    }
    else {
        $(".mainPopup").css("display", "none");    // 팝업창 아이디
    }
});

function setCookie( name, value, expiredays ) { 
    var todayDate = new Date(); 
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function closePopup() { 
    $(".mainPopup").css("display", "none");    // 팝업창 아이디
}

function todayClosePopup() { 
    setCookie( "ncookie", "done" , 1 );     // 저장될 쿠키명 , 쿠키 value값 , 기간( ex. 1은 하루, 7은 일주일)
    $(".mainPopup").css("display", "none");    // 팝업창 아이디
}