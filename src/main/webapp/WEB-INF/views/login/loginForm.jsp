<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지</title>
	<!-- css -->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_jquery-ui.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_h-common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_swiper-bundle.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents2.css">
		
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
		
        <div id="banner" class="banner-wrap show-banner">
			<div class="banner-btn-box">
				<a href="javascript:;" id="btnBannerClose">오늘 하루 보지않기</a>
				<a href="javascript:;" class="banner-close"><span>닫기</span></a>
			</div>
		<div class="banner-inner">
		
	    <ul class="banner-txt">
			<li><a href="https://www.lahanhotels.com/hub/ko/promtn/list.do">클럽라한 가입하고, 쿠폰 골라받기 [CLICK]</a></li>
		</ul>
		
<!--헤더  -->
<%@ include file="/WEB-INF/views/header.jsp" %> 
	


<form name="form" method="post" action="./loginCommand">

    <div id="container" class="container login">
        <section class="sub-contents">
            <div class="sub-contents-wrap login">
                <!-- 컨텐츠 시작 -->
                <div class="sub-tit-wrap">
                    <h3 class="sub-tit01">로그인</h3>
                    <p class="sub-txt01">클럽라한에 오신 것을 환영합니다. 포인트 혜택 및 다양한 서비스를 이용해보세요.</p>
                </div>
                
                <div class="tab-wrap login">
                    <ul>
                        <li class="on"><a href="#none" title="회원" class="">회원</a></li>
                        <li><a href="loginNonMemForm" title="비회원" class="">비회원<!-- 비회원 --></a></li>
                    </ul>
                </div>
                
                <div class="login-wrap ty-02">
                    <div class="login-box">
                       
                        <div class="input-login-wrap">
                            
                            <div class="input-wrap">
                                <input type="text" id="id" name="id" placeholder="아이디를 입력해 주세요." maxlength="20">
                                <div class="txtGuideWrap"><!-- 에러 문구 활성화시 class on 추가 -->
                                    <ul class="txtGuide">
                                        <li class="error"><p>아이디를 입력해 주세요.</p></li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="input-wrap">
                                <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력해 주세요." maxlength="20">
                                <div class="txtGuideWrap"><!-- 에러 문구 활성화시 class on 추가 -->
                                    <ul class="txtGuide">
                                        <li class="error"><p>비밀번호를 입력해 주세요.</p></li>
                                    </ul>
                                </div>
                            </div>
                       <!--<div class="idsave-wrap">
									<span class="frm frm-chk">
					                  <input type="checkbox" id="saveUserIdCheck"><label for="saveUserIdCheck">아이디 저장</label>
					                </span>

                                <ul class="loginFind">
                                    <li><a href="findId.html">아이디/비밀번호 찾기</a></li>
                                </ul>
                            </div> -->    
                        </div>
                        
                        <div class="btn-inline-box">
                            <button type="submit" class="loginbtn" >로그인</button>
                        </div>
                        
                  </form>
                        
                        <ul class="loginSns">
                            <li><a href="javascript:snsLoginPopup('KAKAO')" class="lo-icon lo-kakao"><span>카카오 로그인</span></a></li>
                        </ul>
                    </div>
                   
                    <div class="login-line">
                        <span></span>
                    </div>
                    
                    <div class="login-box-wrap">
                        <div class="login-box">
                            <div class="login-txt-box">
                                <h3>아직 클럽라한의 멤버가 아니신가요?</h3>
                                <p>클럽라한 가입 후, 회원 전용 혜택과 특별한 서비스를 만나보세요.</p>
                            </div>
                            <div class="btn-inline-box">
                                <button type="button" onclick="location.href='${pageContext.request.contextPath}/join/step1'" class="onlineMemBtn">신규 가입하기</button>
                            </div>
	                        <p class="join-guide-txt">클럽라한은 내국인 전용 멤버십으로, 가입을 위해서는 국내에서 개통한 본인명의의 휴대폰번호가 필요합니다.</p>
                        </div>
                        <!-- <div class="login-box">
                            <div class="login-txt-box">
                                <h3>이미 현장에서 가입하셨나요?</h3>
                                <p>간단한 본인인증 후, 마이페이지에서 포인트 및 상세정보를 확인하세요.</p>
                            </div>
                            <div class="btn-inline-box">
                                <button type="button" class="onlineMemBtn" onclick="location.href='../join/off/step1.html'">온라인 인증하기</button>
                            </div>
                        </div> -->
                    </div>
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
	
	

</body>


</html>