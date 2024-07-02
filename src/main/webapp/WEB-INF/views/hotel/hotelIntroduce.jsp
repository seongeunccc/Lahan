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
			<!--(레이아웃명([PC][국문] - 라한 소개 > 호텔소개 레이아웃) 최종수정일 : 2022-12-01 18:14)-->
			<div class="sub-nav-wrap">
								<ul class="sub-nav">
					<li><a href="${pageContext.request.contextPath}/hotel/brandIntroduce">브랜드 소개</a></li>
					<li>
						<a href="${pageContext.request.contextPath}/hotel/hotelIntroduce" class="on">호텔소개</a>
						<div class="sub-nav-list">
							<ul>
								<li><a href="/hub/ko/hotel/gyeongjuDc.do">라한셀렉트 경주</a></li>
								<li><a href="/hub/ko/hotel/jeonjuDc.do">라한호텔 전주</a></li>
								<li><a href="/hub/ko/hotel/pohangDc.do">라한호텔 포항</a></li>
								<li><a href="/hub/ko/hotel/ulsanDc.do">호텔현대 바이 라한 울산</a></li>
								<li><a href="/hub/ko/hotel/mokpoDc.do">호텔현대 바이 라한 목포</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<section class="sub-contents">
				<div class="sub-contents-wrap ty-01">
					<!-- 컨텐츠 시작 -->
					<div class="sub-cont-tit">
						<h3 class="sub-tit02">ABOUT HOTEL</h3>
					</div>
					<div class="hotel_cont_wrap">
						<ul class="hotel_cont_box">
							<!-- 라한셀렉트 경주 -->
							<li>
								<div class="thum">
									<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=18674&cntntsSn=18650" alt="" />
								</div>
																<div class="detail-wrap">
									<div class="detail-box type02">
										<div class="detail">
											<h4 class="tit">라한셀렉트 경주 (5성급)</h4>
											<p class="txt">
												경주를 대표하는 특급호텔로 라한호텔의 최상위 럭셔리 브랜드입니다.<br>
												사시사철 감동을 선사하는 보문호수의 아름다운 자연 경관, 오직 라한셀렉트에서만 만나볼 수 있는<br> 
												북스토어&카페, 키즈라운지, 셀렉트 다이닝 등 이색적인 부대시설을 선보입니다.																						
											</p>
										</div>										
										<div class="detail">
											<a href="/hub/ko/hotel/gyeongjuDc.do" class="more_btn" >MORE</a>
										</div>
									</div>
									<div class="detail-box">
										<div class="detail-txt">
											<dl>
												<dt>객실</dt>
												<dd>430실</dd>
											</dl>
											<dl>
												<dt>부대시설</dt>
												<dd>실내외수영장, 북스토어&카페, 키즈라운지,  볼링&펍, 포토뮤지엄, 셀렉트다이닝 등</dd>
											</dl>
											<dl>
												<dt>주소</dt>
												<dd>경상북도 경주시 보문로 338</dd>
											</dl>
											<dl>
												<dt>대표전화</dt>
												<dd>054-748-2233</dd>
											</dl>
										</div>
										<div class="btn-inline-box left_align">
											<a href="/gyeongju/ko/main.do" target="_blank" class="hotelBtn">호텔 홈페이지</a>
										</div>
									</div>
								</div>
							</li>
							<!-- //라한셀렉트 경주 -->
							
							<!-- 라한호텔 전주 -->
							<li>
								<div class="thum">
									<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=18676&cntntsSn=18650" alt="" />
								</div>
																<div class="detail-wrap">
									<div class="detail-box type02">
										<div class="detail">
											<h4 class="tit">라한호텔 전주 (4성급)</h4>
											<p class="txt">
												전주한옥마을 바로 앞에 위치한 라한호텔 전주는<br>
												1200년 역사를 자랑하는 도시, 전주를 대표하는 랜드마크 호텔입니다.<br>
												북스토어&카페, 한옥마을 전망을 자랑하는 루프탑 수영장, 카페라운지 하녹당 등 <br>
												이색적인 부대시설을 다양하게 갖추고 있어 문화예술도시 전주의 헤리티지를 담고 있습니다.																	
											</p>
										</div>										
										<div class="detail">
											<a href="/hub/ko/hotel/jeonjuDc.do" class="more_btn">MORE</a>
										</div>
									</div>
									<div class="detail-box">
										<div class="detail-txt">
											<dl>
												<dt>객실</dt>
												<dd>195실</dd>
											</dl>
											<dl>
												<dt>부대시설</dt>
												<dd>야외 루프탑수영장, 북스토어&카페, 카페, 사우나, 피트니스 등</dd>
											</dl>
											<dl>
												<dt>주소</dt>
												<dd>전라북도 전주시 완산구 기린대로 85 </dd>
											</dl>
											<dl>
												<dt>대표전화</dt>
												<dd>063-232-7000</dd>
											</dl>
										</div>
										<div class="btn-inline-box left_align">
											<a href="/jeonju/ko/main.do" target="_blank" class="hotelBtn">호텔 홈페이지</a>
										</div>
									</div>
								</div>
							</li>
							<!-- //라한호텔 전주 -->
							
							<!-- 라한호텔 포항 -->
							<li>
								<div class="thum">
									<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=18678&cntntsSn=18650" alt="" />
								</div>
																<div class="detail-wrap">
									<div class="detail-box type02">
										<div class="detail">
											<h4 class="tit">라한호텔 포항 (3성급)</h4>
											<p class="txt">
												영일대 해수욕장 바로 앞에 위치한 포항 대표 랜드마크 호텔로, <br>
												객실에서 일출을 감상할 수 있는 전 객실 오션뷰를 자랑합니다. <br>
												레저와 비즈니스 고객 모두를 위한 최적의 환경과 서비스를 제공합니다. 						
											</p>
										</div>										
										<div class="detail">
											<a href="/hub/ko/hotel/pohangDc.do" class="more_btn">MORE</a>
										</div>
									</div>
									<div class="detail-box">
										<div class="detail-txt">
											<dl>
												<dt>객실</dt>
												<dd>160실</dd>
											</dl>
											<dl>
												<dt>부대시설</dt>
												<dd>뷔페레스토랑, 웨딩홀, 건물 내 편의시설 등</dd>
											</dl>
											<dl>
												<dt>주소</dt>
												<dd>경상북도 포항시 북구 삼호로 265번길 1 </dd>
											</dl>
											<dl>
												<dt>대표전화</dt>
												<dd>054-230-7003</dd>
											</dl>
										</div>
										<div class="btn-inline-box left_align">
											<a href="/pohang/ko/main.do" target="_blank" class="hotelBtn" >호텔 홈페이지</a>
										</div>
									</div>
								</div>
							</li>
							<!-- //라한호텔 포항 -->
							
							<!-- 호텔현대 바이 라한 울산 -->
							<li>
								<div class="thum">
									<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=18680&cntntsSn=18650" alt="" />
								</div>
																<div class="detail-wrap">
									<div class="detail-box type02">
										<div class="detail">
											<h4 class="tit">호텔현대 바이 라한 울산 (4성급)</h4>
											<p class="txt">
												푸른 동해바다와 울산을 대표하는 주요 관광지가 인접해있는 랜드마크 호텔로,<br>
												2018년 전관 리뉴얼을 통해 한층 업그레이드된 시설과 품격높은 서비스를 자랑합니다.																			
											</p>
										</div>										
										<div class="detail">
											<a href="/hub/ko/hotel/ulsanDc.do" class="more_btn">MORE</a>
										</div>
									</div>
									<div class="detail-box">
										<div class="detail-txt">
											<dl>
												<dt>객실</dt>
												<dd>272실</dd>
											</dl>
											<dl>
												<dt>부대시설</dt>
												<dd>실내수영장, 사우나, 헬스장, 브런치카페&베이커리, 캐쥬얼펍, 뷔페레스토랑 등</dd>
											</dl>
											<dl>
												<dt>주소</dt>
												<dd>울산시 동구 방어진순환도로 875</dd>
											</dl>
											<dl>
												<dt>대표전화</dt>
												<dd>052-251-2233</dd>
											</dl>
										</div>
										<div class="btn-inline-box left_align">
											<a href="/ulsan/ko/main.do" target="_blank" class="hotelBtn" >호텔 홈페이지</a>
										</div>
									</div>
								</div>
							</li>
							<!-- //호텔현대 바이 라한 울산 -->
							
							<!-- 호텔현대 바이 라한 목포 -->
							<li>
								<div class="thum">
									<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=18682&cntntsSn=18650" alt="" />
								</div>
																<div class="detail-wrap">
									<div class="detail-box type02">
										<div class="detail">
											<h4 class="tit">호텔현대 바이 라한 목포 (4성급)</h4>
											<p class="txt">
												다도해와 영암호의 수려한 풍경이 눈 앞에 펼쳐지는 곳에 자리한 호텔로,<br>
												남도 여행을 위한 최적의 입지와 관광컨텐츠를 자랑합니다. <br>
												호텔현대 바이 라한 목포에서 도심을 벗어난 진정한 웰니스 여행을 경험하세요.<br>																				
											</p>
										</div>										
										<div class="detail">
											<a href="/hub/ko/hotel/mokpoDc.do" class="more_btn">MORE</a>
										</div>
									</div>
									<div class="detail-box">
										<div class="detail-txt">
											<dl>
												<dt>객실</dt>
												<dd>207실</dd>
											</dl>
											<dl>
												<dt>부대시설</dt>
												<dd>실내수영장, 헬스장, 당구장, 뷔페레스토랑 등</dd>
											</dl>
											<dl>
												<dt>주소</dt>
												<dd>전라남도 영암군 삼호읍 대불로91</dd>
											</dl>
											<dl>
												<dt>대표전화</dt>
												<dd> 061-463-2233</dd>
											</dl>
										</div>
										<div class="btn-inline-box left_align">
											<a href="/mokpo/ko/main.do" target="_blank" class="hotelBtn">호텔 홈페이지</a>
										</div>
									</div>
								</div>
							</li>
							<!-- //호텔현대 바이 라한 목포 -->
					
						</ul>
					</div>
					<!-- 컨텐츠 끝 -->
				</div>
			</section>
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