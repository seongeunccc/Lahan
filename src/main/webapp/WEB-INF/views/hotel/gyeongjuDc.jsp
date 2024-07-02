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
	                                 <li><a href="${pageContext.request.contextPath}/hotel/gyeongjuDc" class="on">라한셀렉트 경주</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/jeonjuDc">라한호텔 전주</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/pohangDc">라한호텔 포항</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/ulsanDc">호텔현대 바이 라한 울산</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/mokpoDc">호텔현대 바이 라한 목포</a></li>
	                              </ul>
	                           </div>
	                        </li>
	                     </ul>
	                  </div>	                  
	                  <div class="sub-visual-txt">
	                     	                     <h3>라한셀렉트 경주</h3>
							<p>LAHAN SELECT GYEONGJU</p>
	                  </div>
	                  <img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18855&cntntsSn=18849" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18857&cntntsSn=18849" alt="">
									</div>									
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
										<h1>호캉스 그 이상의 경험</h1>
<p>보문호수를 둘러싼 천혜의 자연풍광을 가진곳.<br/>
라한호텔의 최상위 브랜드, 라한셀렉트 경주가 여러분을 맞이합니다.<br/><br/>

천년고도 경주의 문화유산과 보문호수의 아름다운 사계절 감상은 물론,<br/>
여행을 더욱 풍요롭게 만들어줄 호텔 내 다양한 부대시설과 특별한 경험들까지.<br/> <br/>

여행이 더 즐거워지는 라한셀렉트 경주에서<br/>
'스테이 그 이상의 경험과 감동'을 선사합니다.</p>										
									</div>
									<div class="slide_wrap bottomfixed">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18861&cntntsSn=18849" alt="">
												</div>
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=19326&cntntsSn=18849" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18863&cntntsSn=18849" alt="">
									</div>
								</div>
								<div class="half_wrap"> 
									<div class="txt_wrap">
									<p> 라한셀렉트 경주에서 한 폭의 그림같은 풍경의 스테이를 경험하세요. <br/> <br/>
탁 트인 전망이 아름다운 보문호수와 <br/>
사계절 다른 옷을 갈아입는 다채로운 산 전망을 <br/>
객실에서 한 눈에 감상할 수 있습니다.</p>
							
									</div>
									<div class="letter_lahan">지금우리,경주 </div>
								</div>
							</div>
						</div>
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap">
								<div class="half_wrap">
									<div class="txt_wrap">
									    <h1>짧은 여정만으로는 채 담지 못할, <br/> 다양한 경험과 이야기</h1>
<div class="txt_wrap side-padding2">
<p> 온 가족 물놀이를 위한 실내 수영장과<br/>
숲 속 휴양지를 연상케하는 실외 수영장.<br/><br/>
커피 향이 은은하게 깃든 서점을 산책하고 <br/>
서울 유명 맛집과 스타셰프의 요리를 한 데 맛보는 경험 <br/>
그리고 짜릿한 하루의 마무리를 선사해 줄 즐거운 엔터테인먼트까지.<br/><br/>

다양한 경험과 이야기가 여러분을 기다리고 있습니다.<br/><br/> 
경주여행이 더 즐거워지는, 라한셀렉트 경주를 만나보세요. </p>

						</div>
						<div class="letter_lahan"> </div>

									</div>
								</div>
								<div class="half_wrap">
									<div class="slide_wrap">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18869&cntntsSn=18849" alt="">
												</div>
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=19327&cntntsSn=18849" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=18871&cntntsSn=18849" alt="">
									</div>
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
										<p> '선정하다' 라는 의미의 'Select'는 <br/>
일반적인 것과 구분되어 지는 특별한 것을 뜻합니다.<br/><br/>

라한호텔 최상위 브랜드인 라한셀렉트 경주에서 <br>
키즈라운지, 셀렉트 다이닝, 라이프스타일 서점 그리고 최상의 휴식을 위한 객실까지 <br/>
오직 고객의 즐거움을 위해 선정하고 엄선한, 특별한 경험을 선사하겠습니다. <br/><br/>

<strong>총지배인 곽영호</strong>   </p>	


									</div>
								</div>								
							</div>
						</div>
						<div class="btn-inline-box mt80 mr_align">
							<a href="${pageContext.request.contextPath}/hotel/hotelIntroduce.do" title="목록보기" class="btn btn-navy-line">목록보기</a>
							<a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="호텔 홈페이지" class="btn btn-gold">호텔 홈페이지</a>
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