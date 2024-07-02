<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한</title>

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
			<!--(레이아웃명([PC][국문] - 라한 소개 > 호텔소개 상세 레이아웃) 최종수정일 : 2023-01-11 09:45)-->
			<section class="sub-visual">
	            <div class="sub-visual-wrap">
	               <div class="sub-visual-list">	                  
	                  <div class="sub-nav-wrap bgType type02 dotColor2">
	                     	                     <ul class="sub-nav">
	                        <li><a href="${pageContext.request.contextPath}/hotel/brandIntroduce">브랜드 소개</a></li>
	                        <li>
	                           <a href="${pageContext.request.contextPath}/hotel/hotelIntroduce" class="on">호텔소개</a>
	                           <div class="sub-nav-list">
	                              <ul>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/gyeongjuDc">라한셀렉트 경주</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/jeonjuDc">라한호텔 전주</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/pohangDc">라한호텔 포항</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/ulsanDc" class="on">호텔현대 바이 라한 울산</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/mokpoDc">호텔현대 바이 라한 목포</a></li>
	                              </ul>
	                           </div>
	                        </li>
	                     </ul>
	                  </div>	                  
	                  <div class="sub-visual-txt">
	                     	                     <h3>호텔현대 바이 라한 울산</h3>
						 <p>HOTEL HYUNDAI by LAHAN ULSAN</p>
	                  </div>
	                  <img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32131&cntntsSn=32128" alt="">
	               </div>
	            </div>
	         </section>
			<section class="sub-contents">
				<div class="sub-contents-wrap">
					<!-- 컨텐츠 시작 -->
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap top">
								<div class="half_wrap">
									<div class="img_wrap">
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32132&cntntsSn=32128" alt="">
									</div>									
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
																				<h1>올인클루시브형 호텔을 위한 여정</h1>
										<p>
											울산의 심장부로 불리는 동구 중심에 위치한 곳.<br>
											호텔현대 바이 라한 울산이 역동의 도시, 울산에서 여러분을 맞이합니다.<br><br>
											 
											산책하기 좋은 푸른 공원과 편의성을 더한 상업시설이 인근에 자리함은 물론<br>
											여행을 더욱 풍요롭게 만들어주는 호텔 내 다양한 부대시설과 특별한 경험들까지.<br><br>
											 
											여행이 더 즐거워지는 호텔현대 바이 라한 울산에서<br>
											잊지못할 추억을 만들어보시기 바랍니다.
										</p>										
									</div>
									<div class="slide_wrap bottomfixed">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32134&cntntsSn=32128" alt="">
												</div>
                                                
											</div>
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
											<div class="swiper-pagination"></div>
										</div>										
									</div>
								</div>
							</div>
						</div>						
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap">
								<div class="half_wrap">
									<div class="img_wrap">
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32136&cntntsSn=32128" alt="">
									</div>
								</div>
								<div class="half_wrap"> 
																		<div class="txt_wrap">
										<p>
											시몬스사의 뷰티레스트 매트리스가 구비되어 편안한 휴식이 가능한 객실,<br>
											특히 계절의 변화를 색으로 드러내는 풍경을 담아낸 파크뷰 객실에서는<br>
											사계절 내내 다채로운 풍경을 누리실 수 있습니다.
										</p>
									
									</div>
									<div class="letter_lahan let_ty03">지금우리, 울산</div>
								</div>
							</div>
						</div>
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap">
								<div class="half_wrap">
									<div class="txt_wrap">
									    										<h1>먹고, 마시고, 즐기고, 맛있는 호캉스!</h1>
										<p>
											쾌적한 실내 수영장에서 즐기는 물놀이부터<br>
											브런치 카페와 든든한 뷔페 식당, 시원한 맥주 한 잔이 준비된 캐주얼 펍까지.<br>
											밖으로 나가지 않아도 모든 것을 누릴 수 있는 이곳, 호텔현대 바이 라한 울산입니다.<br><br>
											
											보고, 듣고, 맛 보는 그 모든 오감이 만족하는 여행이 여러분을 기다리고 있습니다.<br><br>
										</p>	
									</div>
								</div>
								<div class="half_wrap">
									<div class="slide_wrap">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32139&cntntsSn=32128" alt="">
												</div>
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32140&cntntsSn=32128" alt="">
												</div>
                                                
											</div>
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
											<div class="swiper-pagination"></div>
										</div>										
									</div>
								</div>
							</div>
						</div>
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap">
								<div class="half_wrap">
									<div class="img_wrap">
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32141&cntntsSn=32128" alt="">
									</div>
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
										<p>
호텔현대 바이 라한 울산에 오신 것을 진심으로 환영합니다.<br>
머무는 그 모든 순간이 즐거운 기억이 될 수 있도록, 저희 모두가 최선을 다해 노력하겠습니다.<br>
<br>
가족 모두가 즐거운 실내 수영장부터, 커피 한 잔의 여유를 즐길 수 있는 브런치 카페 디오븐.<br>
하루의 피로를 시원하게 가시게 해주는 캐주얼 펍 더터번과 신선한 조식 뷔페 더플레이트까지.<br>
<br>
호텔 밖을 나가지 않아도 이 모든 경험이 완벽하게 가능한 이곳은,<br>
우리의 자랑인 호텔현대 바이 라한 울산입니다.<br>
<br>
<strong>총지배인 현영석</strong></p>
									</div>
								</div>								
							</div>
						</div>
						<div class="btn-inline-box mt80 mr_align">
							<a href="${pageContext.request.contextPath}/hotel/hotelIntroduce" title="목록보기" class="btn btn-navy-line">목록보기</a>
							<a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔 홈페이지" class="btn btn-gold">호텔 홈페이지</a>
						</div>
					<!-- 컨텐츠 끝 -->
				</div>
			</section>
		</div>
	
	
	
	
	
	<%@ include file="/WEB-INF/views/footer.jsp" %> 	

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