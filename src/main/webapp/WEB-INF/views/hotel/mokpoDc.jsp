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
	                                 <li><a href="${pageContext.request.contextPath}/hotel/ulsanDc">호텔현대 바이 라한 울산</a></li>
	                                 <li><a href="${pageContext.request.contextPath}/hotel/mokpoDc" class="on">호텔현대 바이 라한 목포</a></li>
	                              </ul>
	                           </div>
	                        </li>
	                     </ul>
	                  </div>	                               
	                  <div class="sub-visual-txt">
	                     	                     <h3>호텔현대 바이 라한 목포</h3>
						 <p>HOTEL HYUNDAI by LAHAN MOKPO</p>
	                  </div>
	                  <img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32147&cntntsSn=32144" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32148&cntntsSn=32144" alt="">
									</div>									
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
																				<h1>나를 위한 온전한 힐링의 시간</h1>
										<p>
											눈 앞에 펼쳐지는 다도해의 장관과 아름다운 오션뷰,<br>
											이 모든 것을 객실에서 한 눈에 담아내는 것이 가능한 곳.<br><br>
											 
											객실, 테라스, 산책로 등 눈길이 닿는 모든 곳에서 아름다운 바다를 마주하게 됩니다.<br><br>
											일상 속 쉼이 필요한 때, 어느 곳으로 시선을 돌려도 평화로워지는<br>
											호텔현대 바이 라한 목포에서 여유와 휴식을 함께하세요.
										</p>									
									</div>
									<div class="slide_wrap bottomfixed">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32150&cntntsSn=32144" alt="">
												</div>
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32151&cntntsSn=32144" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32152&cntntsSn=32144" alt="">
									</div>
								</div>
								<div class="half_wrap"> 
																		<div class="txt_wrap">
										<p>
											호텔의 객실은 긴 세월을 흘려보내지 않고 곳곳에 남겨두어 <br>
과거와 현재가 어우러진 아늑한 분위기를 선사합니다. <br><br>

아늑한 침실로 쏟아지는 아침 햇살과 <br>
눈 앞에 펼쳐지는 다도해의 장관과 아름다운 오션뷰까지. <br> 	<br> 									

잠시 가쁜 숨을 고르고,<br> 
잔잔하게 일렁이는 다도해의 물결을 감상해보세요. <br><br>
																			</p>
										
									</div>
									<div class="letter_lahan let_ty03">지금 우리,목포</div>
								</div>
							</div>
						</div>
						<div class="hotelDetail_wrap">
							<div class="hotel_flex_wrap">
								<div class="half_wrap">
									<div class="txt_wrap">
									    	<h1>남도의 맛과 멋을 담은 호텔</h1>
<p>
일상 속 쉼을 위해 달려온 1인 여행객은 물론 <br>
아이와 함께하는 가족 여행객, 함께하면 즐거운 골프 여행객 등<br>
모두를 위한 꽉 찬 남도 여행을 선사합니다.<br><br>

여행의 재미를 더하는 엔터테인먼트 시설과 <br>
지역 작가들의 다양한 예술작품을 감상할 수 있는 갤러리,<br>
남도 식재료를 활용한 조식 메뉴와 호텔 안에서 즐기는 남도 디너 정식까지. <br><br> 

남도 여행의 맛과 멋을 모두 누릴 수 있는 이곳, 호텔현대 바이 라한 목포입니다.<br><br>
											 											 
										</p>
									</div>
								</div>
								<div class="half_wrap">
									<div class="slide_wrap">
										<div class="contents-slider swiper-container">
											<div class="swiper-wrapper">
                                                
												<div class="contents-slider-list swiper-slide">
													<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32155&cntntsSn=32144" alt="">
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
										<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=32157&cntntsSn=32144" alt="">
									</div>
								</div>
								<div class="half_wrap">
									<div class="txt_wrap">
																												<p>
											맛과 풍류, 다양한 색깔의 섬들이 많은 고장 남도에 오신 것을 환영합니다.<br><br>
											호텔 로비를 나서는 순간 맞이하는 가슴이 뻥 뚫리는 파노라믹 뷰와 함께<br>
잊지 못할 남도여행을 만들어 보시길 바랍니다.<br><br>

고객님의 즐거운 추억 여행이 될 수 있도록<br>
호텔현대 바이 라한 목포가 함께 하겠습니다.<br><br>

 
											 
 <strong> 총지배인 김재진 </strong>
											 										</p>
									</div>
								</div>								
							</div>
						</div>
						<div class="btn-inline-box mt80 mr_align">
							<a href="${pageContext.request.contextPath}/hotel/hotelIntroduce" title="목록보기" class="btn btn-navy-line">목록보기</a>
							<a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔 홈페이지" class="btn btn-gold">호텔 홈페이지</a>
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