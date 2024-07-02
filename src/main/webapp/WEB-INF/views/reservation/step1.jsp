<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	
	<link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/contents.css">
    <link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/contents1.css">
    <link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/contents2.css">
	
	<!-- js -->
	<script src="https://www.lahanhotels.com/static/pc/js/jquery-3.5.1.js"></script>
	<script src="https://www.lahanhotels.com/static/pc/js/swiper-bundle.min.js"></script>
	<script src="https://www.lahanhotels.com/static/pc/js/jquery-ui.min.js"></script>
	<script src="https://www.lahanhotels.com/static/pc/js/common.js"></script>
    <script src="https://www.lahanhotels.com/static/pc/js/hub/contents.js"></script>
    <script src="https://www.lahanhotels.com/static/pc/js/hub/contents1.js"></script>
    <script src="https://www.lahanhotels.com/static/pc/js/hub/contents2.js"></script>
    <script src="https://www.lahanhotels.com/static/pc/js/hub/h-common.js"></script>
    <script src="https://www.lahanhotels.com/static/pc/js/printThis.js"></script>
	<script src="https://www.lahanhotels.com/static/pc/js/resv-cal.js"></script>
	<script src="https://www.lahanhotels.com/static/pc/js/resv.js"></script>

    <script type="text/javascript" src="https://www.lahanhotels.com/static/bluewaves/js/date_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com/static/bluewaves/js/num_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com/static/bluewaves/js/string_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com/static/bluewaves/js/bluewaves_common.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com/static/bluewaves/js/paging_util.js"></script>
    
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
			<!--(페이지 URL)-->














	<link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/resv.css">
	<script src="https://www.lahanhotels.com/static/pc/js/resv.js"></script>
	<!-- js -->
	<div id="container" class="container">
		<section class="sub-contents">
			<div class="sub-contents-wrap resv-contents">
				<!-- 컨텐츠 시작 -->
				<div class="resvStepWrap">
					<ul>
						<li class="on">
							<span>Step1<!-- Step1 --></span>
							<p>호텔/날짜/인원 선택<!-- 호텔/날짜/인원 선택 --></p>
						</li>
						<li>
							<span>Step2<!-- Step2 --></span>
							<p>객실 선택<!-- 객실 선택 --></p>
						</li>
						<li>
							<span>Step3<!-- Step3 --></span>
							<p>옵션 선택<!-- 옵션 선택 --></p>
						</li>
						<li>
							<span>Step4<!-- Step4 --></span>
							<p>예약정보 입력<!-- 예약정보 입력 --></p>
						</li>
					</ul>
				</div>
				<div class="resvbox-list">
					<!-- 4. 프로모션 코드 -->
					<div class="m-resv-list step4">
						<a href="#none" title="프로모션코드" class="btn-prcode">프로모션코드<!-- 프로모션코드 --></a>
						<div class="resv-step4-prcode close">
							<p class="prcode-guidetxt">&#8251; 기업체 코드 또는 프로모션 코드를 입력해주세요.<!-- 기업체 코드 또는 프로모션 코드를 입력해주세요. --></p>
							<button type="button" class="btn-prcode-close" onclick='$(".resv-step4-prcode").removeClass("open");'><span>닫기</span></button>
							<div class="prcode-box">
								<input type="text" id="prtmCode" class="prcode-input" maxlength="8" autocomplete="off" placeholder="프로모션 코드" /><!-- 프로모션 코드 8자리 -->
								<a href="#none" onclick="prmtnSeach()" title="확인" class="btn btn-black-line btn-com">확인<!-- 확인 --></a>
							</div>
						</div>
					</div>
					<div class="m-resv-wrap ver1">
						<div class="m-resv-inner">
							<!-- 1. 호텔 선택 -->
							<div class="m-resv-list step1">
								<div class="resv-step1-select select">
									<span class="badge resv-tit">호텔선택<!-- 호텔선택 --></span>
									<div class="resv-selected-txt selected">
										<span id="htNmText" class="selected-value">호텔을 선택해주세요.<!-- 호텔을 선택해주세요. --></span>
									</div>
									<ul class="hotel-select-box">
										
											<li class="option" onclick="selHotel('LHMOP')">호텔현대 바이 라한 목포</li>
										
											<li class="option" onclick="selHotel('LHULS')">호텔현대 바이 라한 울산</li>
										
											<li class="option" onclick="selHotel('LHPOH')">라한호텔 포항</li>
										
											<li class="option" onclick="selHotel('LHJEJ')">라한호텔 전주</li>
										
											<li class="option" onclick="selHotel('LHGYJ')">라한셀렉트 경주</li>
										
									</ul>
								</div>
							</div>
							<!-- 2. 날짜 선택 -->
							<div class="m-resv-list step2 revArea">
								<div class="chkInout">
									<div class="resv-step2-box">
										<div>
											<span class="badge resv-tit">체크인<!-- 체크인 --></span>
											<div class="resv-selected-txt checkDate" id="ChekinDate">
												<span id="chkInDate"></span>
												<span class="mini-date" id="ckinDay"></span>
											</div>
										</div>
										<div class="night-wrap">
											<span><b id="nightText">1</b>박<!-- 박 --></span>
										</div>
										<div>
											<span class="badge resv-tit">체크아웃<!-- 체크아웃 --></span>
											<div class="resv-selected-txt checkDate" id="ChekoutDate">
												<span id="chkOutDate"></span>
												<span class="mini-date" id="ckoutDay"></span>
											</div>
										</div>
									</div>
									<!-- 달력 -->
									<div class="mainCalendar clearCont">
										<div class="calContainer calendarS"></div>
									</div>
								</div>
							</div>
							<!-- 3. 인원 선택 -->
							<div class="m-resv-list step3">
								<div class="resv-step3-box">
									<div class="step3-list">
										<span class="badge resv-tit">객실<!-- 객실 -->
											<p class="tooltip-text">다중객실 예약불가, 단일예약 바랍니다.<!-- 다중객실 예약불가, 단일예약 바랍니다. --></p>
										</span>
										<div class="resv-selected-txt">1</div>
									</div>
									<div class="step3-list">
										<span class="badge resv-tit">성인<!-- 성인 --></span>
										<div class="numPeople">
											<button type="button" count_range="minus" class="ppBtn btnDown" onclick="minus('num1',this,1)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
											<input type="text" class="count" id="num1" name="num1" value="2" readonly="readonly" />
											<button type="button" count_range="plus" class="ppBtn btnUp" onclick="plus('num1',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
										</div>
									</div>
									<div class="step3-list">
										<span class="badge resv-tit">소인<!-- 소인 --></span>
										<div class="numPeople">
											<button type="button" count_range="minus" class="ppBtn btnDown blank" onclick="minus('num2',this,0)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
											<input type="text" class="count" id="num2" name="num2" value="0" readonly="readonly" />
											<button type="button" count_range="plus"class="ppBtn btnUp" onclick="plus('num2',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
										</div>
									</div>
								</div>
							</div>
							<!-- 5. 객실 검색 -->
							<a href="#none" onclick="resvStart()" title="객실 검색" class="m-btn-resv btn-gold">객실 검색<!-- 객실 검색 --></a>
						</div>
					</div>
				</div>
				<p class="resv-info-txt"><!-- 호텔, 날짜, 인원을 선택해주세요. -->호텔, 날짜, 인원을 선택해주세요.</p>
				<!-- 컨텐츠 끝 -->
			</div>
		</section>
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
			<input type="hidden" name="searchRoomCode" id="searchRoomCode" value="">
			<input type="hidden" name="searchRateCode" id="searchRateCode" value="">
			<input type="hidden" name="step2Type" id="step2Type" value="">
		</form>
	</div>
<script>
$(document).ready(function(){
	setReservInit();
	
	var sysCode = 'HUBSITE';
	if(sysCode != '' && sysCode != 'HUBSITE'){
		selHotel(sysCode);
	}
});

$(".prcode-box .btn-com, .btn-prcode-close").on("click", function () {
	$(".resv-step4-prcode").removeClass("open");
});




</script>
 
	
	
	</div>
	
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
                        <a href="../main.html" title="라한" target="_blank">
						<span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_wh.png" alt="라한"/></span>
						<span><img src="../../../static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="../../../gyeongju/ko/main.html" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="../../../jeonju/ko/main.html" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="../../../pohang/ko/main.html" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="../../../static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="../../../ulsan/ko/main.html" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="../../../mokpo/ko/main.html" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
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
			setCookie("_ko_mainBanner","done",1);
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
</body>
</html>