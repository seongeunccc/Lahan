<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <title>라한</title>
    <meta http-equiv="content-language" content="kr">
	<meta name="robots" content="index,follow">
	<meta name="title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta name="author" content="라한셀렉트">
	<meta name="description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta name="keywords" content="라한호텔, 라한셀렉트, 라한호텔 경주, 라한호텔 포항, 라한호텔 전주, 호텔현대 바이 라한 울산, 호텔현대 바이 라한 목포">

	<meta property="og:locale" content="ko_KR">
	<meta property="og:type" content="website">
	<meta property="og:rich_attachment" content="true">
	<meta property="og:site_name" content="라한셀렉트">
	<meta property="og:title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta property="og:description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta property="og:image" content="https://www.lahanhotel.com/static/pc/assets/img/header/logo_glad.svg">
	<meta property="og:url" content="https://www.lahanhotel.com/gyeongju/ko/main.do">

	<meta name="twitter:card" content="main_logo_bl">
	<meta name="twitter:site" content="라한셀렉트">
	<meta name="twitter:title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta name="twitter:description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta name="twitter:image" content="https://www.lahanhotel.com/static/pc/assets/img/header/logo_glad.svg">
	<meta name="twitter:creator" content="라한셀렉트">
	<link rel="canonical" href="https://www.lahanhotels.com/">

	<!-- css -->
	<link rel="stylesheet" href="/static/pc/css/jquery-ui.min.css">
	<link rel="stylesheet" href="/static/pc/css/common/font.css">
	<link rel="stylesheet" href="/static/pc/css/common/common.css">
	<link rel="stylesheet" href="/static/pc/css/hub/ko/h-common.css">
    <link rel="stylesheet" href="/static/pc/css/swiper-bundle.min.css">
	
	
	<link rel="stylesheet" href="/static/pc/css/hub/ko/contents.css">
    <link rel="stylesheet" href="/static/pc/css/hub/ko/contents1.css">
    <link rel="stylesheet" href="/static/pc/css/hub/ko/contents2.css">
	
	<!-- js -->
	<script src="/static/pc/js/jquery-3.5.1.js"></script>
	<script src="/static/pc/js/swiper-bundle.min.js"></script>
	<script src="/static/pc/js/jquery-ui.min.js"></script>
	<script src="/static/pc/js/common.js"></script>
    <script src="/static/pc/js/hub/contents.js"></script>
    <script src="/static/pc/js/hub/contents1.js"></script>
    <script src="/static/pc/js/hub/contents2.js"></script>
    <script src="/static/pc/js/hub/h-common.js"></script>
    <script src="/static/pc/js/printThis.js"></script>
	<script src="/static/pc/js/resv-cal.js"></script>
	<script src="/static/pc/js/resv.js"></script>

    <script type="text/javascript" src="/static/bluewaves/js/date_util.js"></script>
    <script type="text/javascript" src="/static/bluewaves/js/num_util.js"></script>
    <script type="text/javascript" src="/static/bluewaves/js/string_util.js"></script>
    <script type="text/javascript" src="/static/bluewaves/js/bluewaves_common.js"></script>
    <script type="text/javascript" src="/static/bluewaves/js/paging_util.js"></script>
   
    <style>
		.loading-box {
			position: fixed;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			width: 180px;
			height: 180px;
			z-index: 9999;
		}

		.loading {
			display: inline-block;
			width: 100%;
			height: 100%;
			border: 3px solid #ddd;
			border-radius: 50%;
			border-top-color: rgba(0, 0, 0, 0.2);
			animation: spin 1.5s linear infinite;
			-webkit-animation: spin 1.5s linear infinite;
		}

		@keyframes spin {
			0% {
				-webkit-transform: rotate(0deg);
			}

			100% {
				-webkit-transform: rotate(360deg);
			}
		}

		@-webkit-keyframes spin {
			0% {
				-webkit-transform: rotate(0deg);
			}

			100% {
				-webkit-transform: rotate(360deg);
			}
		}

		.loading-txt {
			-moz-animation: loading-text-opacity 2s linear 0s infinite normal;
			-o-animation: loading-text-opacity 2s linear 0s infinite normal;
			-webkit-animation: loading-text-opacity 2s linear 0s infinite normal;
			animation: loading-text-opacity 2s linear 0s infinite normal;
			color: #fff;
			font-family: 'Gotham-Light', 'Yoon730';
			font-size: inherit;
			text-align: center;
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			z-index: 9999;
		}
     </style>
</head>
<body>


    
    
    <div class="wrap sub">
    
		<div class="skip-nav">
			<a href="#header">푸터 영역 바로가기</a>
			<a href="#container">컨텐츠 바로가기</a>
			<a href="#footer">푸터 영역 바로가기</a>
		</div>
        
        <%@ include file="/WEB-INF/views/header.jsp" %> 
		
		<div id="container" class="container">
			<!--(레이아웃명([PC][국문] - ONLINE SHOP > SUB MAIN 레이아웃) 최종수정일 : 2022-12-01 09:55)-->

			<!-- 컨텐츠 시작 -->
			<section class="sub-visual">
				<div class="sub-visual-wrap">
					<div class="sub-visual-list">
						<div class="sub-visual-txt">
							<h3>온라인샵</h3>
							<p>ONLINE SHOP</p>
						</div>
            
            <img src="/revolution/content/fileImage.do?fileId=10144&cntntsSn=10142" alt="">
  
					</div>
				</div>
			</section>

	<section class="sub-contents">
		<div class="sub-contents-wrap ty-01">
			<div class="tab-contents">
				<ul class="tab-contents-list" id="seList">
					
				</ul>
			</div>
			<div class="recommond-contents row-reverse-list">
		        <div class="recommond-box select">
		          <div class="as-select selected">
		            <span class="select-recommond selected-value" id="reSort">추천순</span>
		          </div>
		          <ul class="recommond-wrap">
		            <li class="option" value="01" onclick="fncSearchList('01');">추천순</li><!-- 추천순 -->
                   	<li class="option" value="02" onclick="fncSearchList('02');">낮은가격순</li><!-- 낮은가격순 -->
                   	<li class="option" value="03" onclick="fncSearchList('03');">높은가격순</li><!-- 높은가격순 -->
                   	<li class="option" value="04" onclick="fncSearchList('04');">최신순</li><!-- 최신순 -->
		          </ul>
		        </div>
		      </div>
		      
		      <div class="tab-contents-info">
		      <ul class="onlineShop_list" id="shopList">
		        
		        
		      </ul>
		    </div>
			
		
		</div>
	</section>

	<form id="form" name="form">
		<input type="hidden" id="onshopSn" name="onshopSn" />
	</form>


			<!-- 컨텐츠 끝 -->
	
		</div>
		   <%@ include file="/WEB-INF/views/footer.jsp" %> 
		
		
		<div class="loading-box" style="display: none;">
			<div class="loading"></div>
			<p class="loading-txt">LOADING</p>
	    </div>
		<div class="dimmed"></div>
		<div class="dimmed2"></div>
    <!-- 호텔 찾기 popup -->
	<div id="layerPopup">
		<div id="searchLahan" class="layerPop" layer-data="search1">
			<div class="layer-head">
				<h3 class="tit">호텔찾기<!-- 호텔찾기 --></h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<div class="search-lahan">
					<div class="lahan-item lahan-item1">
                        <a href="https://www.lahanhotels.com/hub/ko/main.do" title="라한" target="_blank">
						<span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_wh.png" alt="라한"/></span>
						<span><img src="/static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="https://www.lahanhotels.com/pohang/ko/main.do" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
						    <p>호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></p>
                        </a>
					</div>
				</div>
			</div>
		</div>
	</div>

<form id="form" method="post" action="https://www.lahanhotels.com/hub/ko/resv/step2.do">
    <input type="hidden" name="adult" id="adult" value="">
	<input type="hidden" name="children" id="children" value="">
	<input type="hidden" name="night" id="night" value="">
	<input type="hidden" name="check_in_text" id="check_in_text" value="">
	<input type="hidden" name="check_out_text" id="check_out_text" value="">
	<input type="hidden" name="check_in" id="check_in" value="">
	<input type="hidden" name="check_out" id="check_out"value="">
	<input type="hidden" name="prm_seq_no" id="prm_seq_no" value="">
	<input type="hidden" name="pms_seq_no" id="pms_seq_no" value="">
	<input type="hidden" name="SS_PMS_CODE" id="SS_PMS_CODE" value="">
	<input type="hidden" name="SS_PMS_SEQ_NO" id="SS_PMS_SEQ_NO" value="">
	<input type="hidden" name="Prm_code" id="Prm_code" value="">
	<input type="hidden" name="htNm" id="htNm" value="">
	<input type="hidden" name="sysCode" id="sysCode" value="">
	<input type="hidden" name="hotelCode" id="hotelCode" value="">
	<input type="hidden" name="step1Param" id="step1Param" value="">
	<input type="hidden" name="step2Param" id="step2Param" value="">
	<input type="hidden" name="step3Param" id="step3Param" value="">
	<input type="hidden" name="step4Param" id="step4Param" value="">
	<input id="searchMonth" name="month" value="" type="hidden">
	<input id="searchYear" name="year" value="" type="hidden">

</form>

    <script>
        $(document).ready(function() {
            <!-- 호텔찾기 클릭시 레이어창 닫기-->
            $("#layerPopup [layer-data='search1']").find("a").click(function() {
                $(".layer-close").click();
            });
        });
        function closePop(url) {
            $(".layer-close").click();
        };
        $("#btnBannerClose").click(function() {
			setCookie("HUBSITE_ko_mainBanner","done",1);
            $(".banner-close").click();
		});

    </script>
	<script>
		$(document).ready(function(){
			$(".btn-bell").on("click", function(){
				$(".main-promotion-wrap").show().animate({
					right:0
				}, 800);
				$("body").addClass("scrollLock-x");
			});
			
			$(".btn-bell-close").on("click", function(){
				$(".main-promotion-wrap").animate({ right: '-' + 100 + '%'}, 800, function(){
					$('.main-promotion-wrap').hide();
				});
			});
		});
	</script>
	<script>
    const hotlAlert = '호텔을 선택해주세요.';//<!-- 호텔을 선택해주세요. --> 
		$(document).ready(function(){
			//예약 > 인원 선택
			$(".step3-list").on("click", function(){
				$(".resv-step3-poeple").addClass("open").show();
			});

			$(".resv-com").on("click", function(){
				$(".resv-step3-poeple").removeClass("open").hide();
			});

			//예약 > 프로모션 코드(2차 오픈)
			$(".btn-prcode").on("click", function(){
				$(".resv-step4-prcode").toggleClass("open");
			});
			$(".prcode-box .btn-com").on("click", function(){
				$(".resv-step4-prcode").removeClass("open");
			});
            if (window.location.href.indexOf("main") > -1) {
                setReservInit();
            }
		});

		//ABOUT LAHAN //2023-01-09 추가
		var aboutSlider = new Swiper (".about-slider", {
			loop: $('.about-slider .swiper-slide').length === 1 ? false:true,
			pagination: {
				el: ".swiper-pagination",
				type: "fraction"
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
	</script>


	<!-- 221228 메인 타이틀 모션 추가 -->
	<script>
		//main motion
		$(document).ready(function(){
			var $win= $(window);
			var contetns = $("#container > section");
			var section1 = $(".main-visual").height() + 200;
			var section2 = $(".main-ourhotel").height() + section1 +100;
			var section3 = $(".main-aboutlahan").height() + section2 +200;
			var removeSec = section1 - 1;			

			$win.scroll(function(e){
				var winScroll = $win.scrollTop();
				var winHeight = $win.height();
				var targetHeight = winScroll + winHeight;

				if( targetHeight > section1 ){
					$(".main-ourhotel").addClass("trans");
				}
				if( targetHeight > section2 ){
					$(".main-aboutlahan").addClass("trans");
				}
				if( targetHeight > section3 ){
					$(".main-clublahan").addClass("trans");
				}
				if( targetHeight < removeSec ) {
					contetns.removeClass("trans")
				}

			});
		});
		
		
		var siteLang = 'ko';
		var alertResv0001 = '객실 당 최대 5인까지 투숙가능 합니다.';
		var alertResv0002 = 'resv.hub.validate.0002';
		var alertResv0003 = '유효하지 않은 프로모션 코드입니다.';
		var alertResv0031 = '날짜를 선택해주세요.';
		var alertResv0011 = '호텔을 선택해주세요.';
        var alertResv0038 = '체크인 날짜 기준, 예약 가능한 횟수를 초과하였습니다. 추가 문의사항은 통합예약실(1644-8005)로 연락 바랍니다.';
		var alertAjaxError = 'Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"';
	</script>
	<!-- // 221228 메인 타이틀 모션 추가 -->

</body>
</html>