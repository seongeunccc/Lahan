<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지</title>




	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_main.css">
	
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
		body {
  		font-family: "Noto Sans KR 300", sans-serif;
		}
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
			font-family: "Noto Sans KR 300", sans-serif;
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



<div class="wrap main">
    
    
		<div class="skip-nav">
			<a href="#header">푸터 영역 바로가기</a>
			<a href="#container">컨텐츠 바로가기</a>
			<a href="#footer">푸터 영역 바로가기</a>
		</div>



	
        <div id="banner" class="banner-wrap show-banner">
			<div class="banner-btn-box">
				<a href="javascript:;" id="btnBannerClose">오늘 하루 보지않기</a>
				<a href="javascript:;" class="banner-close"><span>닫기</span></a>
			</div>
			<div class="banner-inner">
				<ul class="banner-txt">
					<li><a href="https://www.lahanhotels.com/hub/ko/promtn/list.do">클럽라한 가입하고, 쿠폰 골라받기 [CLICK]</a></li>
				</ul>
			</div>
		</div>
	

 	<%@ include file="/WEB-INF/views/header.jsp" %> 
	

		
		<div id="container" class="container">
			<!--(레이아웃명([PC][국문] - MAIN 레이아웃) 최종수정일 : 2023-07-27 16:47)-->

			<section class="main-visual">
				<div class="btn-bell-wrap">
					<button type="button" class="btn-bell">BELL<span class="bell-count">0</span></button>
				</div>
                <!-- 메인팝업 include -->
            
<!-- 메인 프로모션  -->

	<script type="text/javascript">	
	$(".bell-count").text('0');
	
		$(".btn-bell-wrap").hide();	
	
	</script>
	
                <!-- //메인팝업 include -->

				<div class="m-resv-wrap ver1"><!-- 1차오픈 class ver1/ 2차 오픈때는 ver1 삭제 -->
					<div class="m-resv-inner">
						<!-- 1. 호텔 선택 -->
						<div class="m-resv-list step1">
							<div class="resv-step1-select select">
								<span class="badge resv-tit">호텔선택<!--호텔--></span>
								<div class="resv-selected-txt selected">
									<span id="htNmText" class="selected-value">호텔을 선택해주세요.<!-- 호텔을 선택해주세요. --></span>
								</div>
								<ul class="hotel-select-box">
									<li class="option" onclick="selHotel('LHMOP');">호텔현대 바이 라한 목포<!--호텔현대 바이 라한 목포--></li>
									<li class="option" onclick="selHotel('LHULS');">호텔현대 바이 라한 울산<!--호텔현대 바이 라한 울산--></li>
									<li class="option" onclick="selHotel('LHPOH');">라한호텔 포항<!--라한호텔 포항--></li>
									<li class="option" onclick="selHotel('LHJEJ');">라한호텔 전주<!--라한호텔 전주--></li>									
									<li class="option" onclick="selHotel('LHGYJ');">라한셀렉트 경주<!--라한셀렉트 경주--></li>
								</ul>
							</div>
						</div>
						<!-- 2. 날짜 선택 -->
						<div class="m-resv-list step2 revArea">
							<div class="chkInout">
								<div class="resv-step2-box">
									<div>
									<span class="badge resv-tit">체크인<!--체크인--></span>
									<div class="resv-selected-txt checkDate" id="ChekinDate">
										<span id="chkInDate"></span>
										<span class="mini-date" id="ckinDay"></span>
									</div>
								</div>
								<div class="night-wrap">
									<span><b id="nightText">1</b>박<!-- 박 --></span>
								</div>
								<div>
									<span class="badge resv-tit">체크아웃<!--체크아웃--></span>
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
									<span class="badge resv-tit">객실<!--객실-->
										<p class="tooltip-text">다중객실 예약불가, 단일예약 바랍니다. </p>
									</span>
									<div class="resv-selected-txt">1</div>
								</div>
								<div class="step3-list">
									<span class="badge resv-tit">성인<!--성인--></span>
									<div class="numPeople">
										<button type="button" class="ppBtn btnDown adult" onclick="minus('num1',this,1)"/></button>
										<input type="text" class="count" id="num1" name="num1" value="2" readonly="readonly" />
										<button type="button" class="ppBtn btnUp" onclick="plus('num1',this)"/></button>
									</div>
								</div>
								<div class="step3-list">
									<span class="badge resv-tit">소인<!--아동--><p class="tooltip-text">소인연령 : 00~12세<!-- 소인연령 : 00~04세 --></p></span>
									<div class="numPeople">
										<button type="button" class="ppBtn btnDown blank" onclick="minus('num2',this,0)"/></button>
										<input type="text" class="count" id="num2" name="num2" value="0" readonly="readonly" />
										<button type="button" class="ppBtn btnUp" onclick="plus('num2',this)"/></button>
									</div>
								</div>
							</div>
						</div>
						<!-- 4. 프로모션 코드 //2차 오픈-->
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
						<!-- 5. 예약하기 -->
						<a href="javascript:;" id="resveBtn" onclick="resvStart()" title="예약하기" class="m-btn-resv btn-gold">예약하기<!--예약하기--></a>
					</div>
				</div>
				<div class="m-visual-wrap">
					<div class="m-visual-list">
						<div class="m-visual-txt">
							<h2>Delightful Stay</h2>
							<p>여행이 더 즐거운 곳, 라한</p>
						</div>
						<img src="${pageContext.request.contextPath}/resources/images/main_background.jpg" alt=""/>
					</div>
				</div>
				<div class="scroll-txt">
					<p>Scroll Down</p>
				</div>
			</section>
			
			
			
			<section class="main-ourhotel">
				<div class="main-tit">
					<h3>OUR HOTELS</h3>
					<p>여행이 더 즐거워지는 전국 라한으로 봄 여행을 떠나세요.</p>
				</div>
				<div class="main-inner-content main-inner-img">
					<div class="inner-img-box">
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="라한셀렉트 경주" target="_blank">
								<div class="m-lahan-select hotel-label">
                                  <img src="${pageContext.request.contextPath}/resources/images/lahan-select-logo.png" alt=""/>
									<i>라한셀렉트 경주</i>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/경주.jpg" alt=""/>
								</span>
							</a>
						</div>
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="라한호텔 전주" target="_blank">
								<div class="m-lahan-hotel hotel-label">
									<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=16789&cntntsSn=16384" alt=""/>
									<i>라한호텔 전주</i>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/전주_513x360.jpg" alt=""/>
								</span>
							</a>
						</div>
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/pohang/ko/main.do" title="라한호텔 포항" target="_blank">
								<div class="m-lahan-hotel hotel-label">
									<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=16761&cntntsSn=16384" alt=""/>
									<i>라한호텔 포항</i>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/포항.jpg" alt=""/>
								</span>
							</a>
						</div>
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔현대 바이 라한 울산" target="_blank">
								<div class="m-hd-lahan hotel-label">
									<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=16857&cntntsSn=16384" alt=""/>
									<i>호텔현대 바이 라한 울산</i>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/울산.jpg" alt=""/>
								</span>
							</a>
						</div>
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/hub/ko/hotel/brandIntroduce.do">
								<div class="m--lahan hotel-label">
									<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=16860&cntntsSn=16384" alt=""/>
									<i>여행이 더 즐거운 곳, 라한</i>
									<button type="button" class="link-txt"><span>브랜드 소개</span></button>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/about-lahan-bg.jpg" alt=""/>
								</span>
							</a>
						</div>
						<div class="m-img-list">
							<a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔현대 바이 라한 목포" target="_blank">
								<div class="m-hd-lahan hotel-label">
									<img src="https://www.lahanhotels.com/revolution/content/fileImage.do?fileId=16900&cntntsSn=16384" alt=""/>
									<i>호텔현대 바이 라한 목포</i>
								</div>
								<span>
									<img src="${pageContext.request.contextPath}/resources/images/목포_513x360.jpg" alt=""/>
								</span>
							</a>
						</div>
					</div>
				</div>
			</section>
			<section class="main-aboutlahan grey-bg">
				<div>
					<div class="test_introLahan black-han-sans-regular">
						<div class="main-tit">
							<h3>ABOUT LAHAN</h3>
							<p> 이름에 담긴 '즐거운 한국, 즐거운 여행'</p>
						</div>
						<div class="main-inner-content">
							<p><b style="color:#8b4513;" class=""> 즐거움을 뜻하는 순우리말 '라온' + 한국 '한(韓)' = 라한  </b><br/> 
라한호텔은 즐거운 국내여행을 위한 한층 독특하고 깊이있는 경험을 선사합니다. <br/>
객실, 다이닝, 부대시설 그리고 다채로운 라이프스타일 프로그램 등<br/>
호텔에 대한 틀에 박힌 기준에서 벗어나 '스테이 그 이상의 경험'을 제공하는<br/>
전국 라한호텔에서 즐거운 국내여행을 시작하세요.<br/><br/>
<a href="/hub/ko/hotel/brandIntroduce.do" target="_blank"> [더보기] </a>
</p>
						</div>
					</div>
					<div class="right">
						
						<div class="video-wrap">
							<iframe width="832" height="468" src="https://www.youtube.com/embed/S5HgzeQUp4w?rel=0&vq=hd720&autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
						

						

					</div>
				</div>
			</section>
			<section class="main-clublahan navy-bg">
				<div class="main-tit">
					<h3>CLUB LAHAN</h3>
					<p>라한호텔을 이용하는 가장 스마트한 방법! 무료멤버십 클럽라한을 만나세요.</p>
				</div>
				<div class="main-inner-content">
					<div class="inner-icon-box">
						<ul>
							<li>
								<span class="m-icon"></span>
								<strong>회원 특전</strong>
								<p>레이트 체크아웃, 웰컴스낵 등 가입 즉시 제공되는 풍성한 특전</p>
							</li>
							<li>
								<span class="m-icon"></span>
								<strong>포인트 적립 및 결제</strong>
								<p>현금처럼 이용가능한 포인트 3~5% 적립 </p>
							</li>
							<li>
								<span class="m-icon"></span>
								<strong>회원전용 상품</strong>
								<p>멤버를 위한 연중 최적가 객실 상품과 프로모션</p>
							</li>
						</ul>
					</div>
					<div class="btn-box btn-inline-box mt80">
						<a href="/hub/ko/clublahan/membership.do" title="혜택보기" class="btn btn-wh">혜택보기</a>
						<a href="/hub/ko/clublahan/list.do" title="회원전용 상품" class="btn btn-gold">회원전용 상품</a>
					</div>
				</div>
			</section>

			<section class="main-insta">
				<div class="main-tit">
					<h3>INSTAGRAM</h3>
					<p>SNS로 생생하게 만나는 전국라한 호텔 소식</p>
				</div>
				<div class="main-inner-content">
					<p class="insta-tit">
						<a href="https://www.instagram.com/lahan_hotel/" target="_blank" title="라한 인스타로 이동">lahan_hotel</a>
					</p>


            
                <div class="inner-img-box">
                    
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/lahan_hotel/?hl=ko" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=242526&sysCode=HUBSITE" alt="라한X위글위글"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C6X7NuCRRub/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=242537&sysCode=HUBSITE" alt="5월 프로그램"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C6IwtQBx9qR/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=242547&sysCode=HUBSITE" alt="라한 컨셉룸"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C57bAUIx7Tz/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=242572&sysCode=HUBSITE" alt="레디백 "></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C5uqaPExcW4/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=242584&sysCode=HUBSITE" alt="라봄페 "></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/lahan_hotel/?hl=ko" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=220928&sysCode=HUBSITE" alt="라한 샤쉐"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C3665U3x7P4/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=220918&sysCode=HUBSITE" alt="코닥 이벤트"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C3ZsUo_RoTs/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=220908&sysCode=HUBSITE" alt="하녹당"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C3H5I57Rof9/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=220898&sysCode=HUBSITE" alt="설인사"></span>
                            </a>
                        </div>
                    
                        <div class="m-instaimg-list">
                        	<a href="https://www.instagram.com/p/C2_5qPxxlfm/?utm_source=ig_web_c" target="_blank">
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/icon_pics_wh_22x22.png" alt="icon image"></span>
                            	<span><img src="https://www.lahanhotels.com/util/file/download.do?fileSn=220888&sysCode=HUBSITE" alt="클럽라한"></span>
                            </a>
                        </div>
                    
                                  
                </div>
            
				</div>
			</section>
		

		</div>
		<footer id="footer" class="footer">
			<!--(FOOTER 최종수정일 : 2023-02-28 08:19)-->

			<div class="f-wrap">
				<div class="f-box-top">
					<div class="box-top-inner">
						<ul class="f-nav-list">
                            <li><a href="https://www.lahanhotels.com/hub/ko/hotel/brandIntroduce.do" title="라한 브랜드">라한 브랜드<!-- 라한 브랜드 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/clublahan/membership.do" title="멤버십">멤버십<!-- 무료멤버십 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/notice/generalInfo/list.do" title="공지사항">공지사항<!-- 공지사항 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/customer/contact.do" title="제안/제보">제안/제보<!-- 고객문의 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/ethical/terms.do" title="윤리경영">윤리경영<!-- 윤리경영 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/sitemap.do" title="사이트맵">사이트맵<!-- 사이트맵 --></a></li>
						</ul>
						<ul class="f-nav-list">
							<li><a href="https://www.lahanhotels.com/hub/ko/termsUse/terms.do" title="이용약관">이용약관<!-- 이용약관 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/terms/terms.do" title="개인정보처리방침" class="pr-po"><strong>개인정보처리방침<!-- 개인정보처리방침 --></strong></a></li>
						</ul>
					</div>
				</div>
				<div class="f-box-bottom">
					<div class="box-bottom-inner">
						<div class="box-bottom-left">
							<span class="f-logo">
								<img src="/static/pc/images/hub/footer_logo.png" alt="LAHAN LOGO"/>
							</span>
							<ul class="f-lahan-info">
								<li><b>라한프라퍼티스매니지먼트(주)<!-- (주)라한프라퍼티스 매니지먼트 --></b></li>
								<li>
									<p>주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층<!-- 주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층 --></p>

									<p>통합예약실 1644-8005<!-- 통합예약실 --></p>

								</li>
								<li>

									<p>사업자등록번호 666-86-01031<!-- 사업자등록번호 666&#45;86&#45;01031 --></p>

									<p>통신판매신고번호 2015-경북경주-0192호<!-- 통신판매신고번호 00구00000호 --></p>
								</li>
							</ul>
						</div>
						<div class="box-bottom-right">

							<ul class="f-cer-info">
								<li>
                                    <a href="https://isms.kisa.or.kr/main/ispims/issue/?certificationMode=list" target="_blank">
									    <span><img src="/static/pc/images/common/f-cer1.png" alt="호텔 예약 서비스 및 멤버십 서비스 인증 이미지"></span>
									    <span>인증범위. 라한호텔 예약 및 멤버십 서비스<br/>유효기간. 2023.12.06 ~ 2026.12.05<!-- 인증범위. 호텔 예약 서비스 및 멤버십 서비스<br/>유효기간. 2020.09.16 ~ 2023.09.15 --></span>
                        			</a>
								</li>
							</ul>

							<div class="f-site-info">
								<div class="f-select-wrap select">
									<div class="select-lahan selected">
										<span class="select-site selected-value">FAMILY SITE<!-- FAMILY SITE --></span>
									</div>
									<ul class="f-select-box">
										<!-- <li><a href="https://www.seamarqhotel.com/" title="GANGNEUNG" class="option" target="_blank">강릉 씨마크</a></li>강릉 씨마크 -->
										<li><a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="MOKPO" class="option" target="_blank">호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></a></li>
										<li><a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="ULSAN" class="option" target="_blank">호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></a></li>
										<li><a href="https://www.lahanhotels.com/pohang/ko/main.do" title="POHANG" class="option" target="_blank">라한호텔 포항<!-- 라한호텔 포항 --></a></li>
										<li><a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="JEONJU" class="option" target="_blank">라한호텔 전주<!-- 라한호텔 전주 --></a></li>
										<li><a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="GYEONGJU" class="option" target="_blank">라한셀렉트 경주<!-- 라한셀렉트 경주 --></a></li>
										<li><a href="https://www.lahanhotels.com/hub/ko/main.do" title="LAHAN" class="option" target="_blank">라한<!-- 라한 --></a></li>
									</ul>
								</div>
								<div class="f-sns-wrap">
									<a href="https://www.instagram.com/lahan_hotel/" title="Lahan Instagram" target="_blank"><span>라한 인스타그램<!-- 라한 인스타그램 --></span></a>
									<a href="https://www.facebook.com/LAHANHOTEL" title="Lahan Facebook" target="_blank"><span>라한 페이스북<!-- 라한 페이스북 --></span></a>
									<a href="https://pf.kakao.com/_Umxebxb" title="Lahan Kakaochanel" target="_blank"><span>라한 카카오채널<!-- 라한 카카오채널 --></span></a>
								</div>
								<p class="copTxt">&#169; 2022 by Lahan Hotels Co., Ltd<!-- &#169; 2022 by Lahan Hotels Co., Ltd --></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</footer>
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
						<span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="https://www.lahanhotels.com/pohang/ko/main.do" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="https://www.lahanhotels.com/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
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

		window.addEventListener('load', function() {
			setTimeout(function() {
				scrollTo(0,0);
			}, 100);
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