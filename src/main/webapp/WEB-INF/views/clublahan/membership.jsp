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
			<!--(레이아웃명([PC][국문] - 클럽라한 멤버십 소개 레이아웃) 최종수정일 : 2023-05-16 00:06)-->
			<section class="sub-visual">
				<div class="sub-visual-wrap">
					<div class="sub-visual-list">
						<div class="sub-nav-wrap bgType dotColor1">
							<ul class="sub-nav">
								<li><a href="/hub/ko/clublahan/membership.do" title="멤버십 소개" class="on">멤버십 소개</a></li>
								<li><a href="/hub/ko/clublahan/list.do" title="회원전용상품">회원전용상품</a></li>
								<li><a href="/hub/ko/clublahan/mbershipInq/list.do" title="멤버십 문의">멤버십 문의</a></li>
							</ul>
						</div>
						<div class="sub-visual-txt">
							<h3>클럽라한</h3>
							<p>CLUB LAHAN</p>
						</div>
						<img src="https://www.lahanhotels.com//revolution/content/fileImage.do?fileId=35621&cntntsSn=35617" alt="">
					</div>
				</div>
			</section>
			<section class="sub-contents">
				<div class="sub-contents-wrap ty-01">
					<!-- 컨텐츠 시작 -->
					<div class="club-info-txt">
						<p>클럽라한은 라한호텔 홈페이지 상품 
이용 고객을 위한 무료 멤버십 서비스 입니다.<br><br>

라한호텔 전 지점에서 포인트 적립은 물론,<br>
가입만 해도 즉시제공 되는 쿠폰 혜택을 누릴 수 있는 무료 멤버십<br>
'클럽라한'과 함께 즐거운 전국라한 여행을 시작하세요! </b><br><br>

<b style="font-size:22px; color:#8b4513;"> 클럽라한 상시 이벤트 </b><br>
언제든 무료 멤버십 클럽라한에 가입하면,<br>
환영의 마음을 담은 '전통약과 3개입 세트'를<br>
웰컴 스낵으로 제공합니다.</b><br><br>

<b style="font-size:22px; color:#8b4513;"> 클럽라한 6~7월 이벤트 </b><br>
지금 무료 멤버십 클럽라한에 가입하고<br>
직접 고른 나만의 쿠폰으로 더 큰 혜택을 받아보세요.<br>
<b>※ 프로모션 자세히보기 <a href="/hub/ko/clublahan/promtnlist.do" target="_blank"> [click] </b></a></p></p>
						<div class="btn-inline-box mt60">
														<a href="/hub/ko/clublahan/list.do" title="회원특가" class="btn btn-gold">회원특가</a>
							<a href="/hub/ko/join/step1.do" title="회원가입" class="btn btn-navy" target="_blank">회원가입</a>
						</div>
					</div>
					<div class="club-info-contents"><!--  2023-01-06 클럽라한 영역 추가 -->
						<strong>■ 무료멤버십 클럽라한</strong>
						<!-- 1차 오픈 -->
						<div class="club-lahan-intro">
										<dl class="club-intro-list first">
								<dt><span>가</span><span>입</span> :</dt>
								<dd>내국인 누구나 (국내에서 개통한 본인 명의의 휴대폰번호 필요)</dd>
							</dl>
							<dl class="club-intro-list">
								<dt>가입처 :</dt>
								<dd>전국 라한호텔 및 공식 홈페이지</dd>
							</dl>
                                                        <dl class="club-intro-list last">                     
  


							<dl class="club-intro-list last">
								<dt>혜택 상세</dt>
								<dd>
									<ol>
										<li class="club-intro-subtit">(1) 포인트 적립 및 사용 </li>
										<li>BAR, 패키지 객실 결제금액의 등급별 3%, 4%, 5% 자동적립 </li>
     	                                                                        <li>적립 포인트는 BAR, 패키지, 회원특가 객실료 결제 시 현금처럼 사용가능 </li><br>
                                                                                ※ 회원특가 상품은 포인트 적립 불가 <br><br>
										※ 단체/법인/협회/여행사/온라인 여행플랫폼 등을 통한 예약 건 포인트 적립 불가<br><br>

										<li class="club-intro-subtit">(2) 회원특가 상품 연중 최적가 운영</li>
										<li>회원가입 및 로그인 후 예약 가능</li><br>
										<li class="club-intro-subtit">(3) 회원 특전 제공 </li>
										<li>투숙 시 사용 가능한 쿠폰 제공 (객실 업그레이드, 얼리 체크인, 수영장 무료이용 등)</li>
										<li>비투숙 시에도 사용 가능한 쿠폰 제공 (중/석식 뷔페레스토랑 10% 할인, 생일케이크 30% 할인, 웰컴스낵 증정 등) </li><br>
※ 투숙 시 사용가능한 회원 특전은 홈페이지를 통한 호텔 다이렉트상품  이용시에만 사용 가능

									</ol>
								</dd>
							</dl>
						</div>
					</div>
					<div class="club-info-contents level-box">
						<strong>■ 등급별 혜택 (클릭 시 상세확인 가능)</strong>
						<div class="level-box-inner">
														<article class="club-level-box silver">
								<div class="club-level-tit">SILVER</div>
								<div class="club-level-info">
									<div class="club-first">
										<p>가입 즉시 등급 제공</p>
									</div>
									<div class="club-second">
										<strong>Points</strong>
										<ol>
											<li>객실료의 3% 포인트 적립</li>
										</ol>
									</div>
									<div class="cliub-link">
										<strong>Benefits</strong>
										<p>투숙과 관계없이 사용가능</p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club1">중식 뷔페/석식 뷔페 이용 시 10% 상시할인</a></li>
											<li><a href="#none" class="open_layer" layer-data="club2">신규가입 즉시 웰컴스낵 제공 (연간 1회)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club3">생일 당월 케이크 30% 할인 (연간 1회)</a></li>
										</ol>
										<p>투숙 시 사용가능 </p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club4">조식뷔페 추가이용 시 10% 상시할인</a></li>
											<li>
												<a href="#none" class="open_layer" layer-data="club5">주중 레이트 체크아웃 1시간 (등급별 횟수 상이)</a>
											</li>
										</ol>
									</div>
									<div class="club-last">
										<p>※ 각 혜택 클릭 시, 상세안내 확인 가능합니다.</p>
										<p>※ 호텔 상황에 따라 일부 혜택이 제공이 불가할 수 있습니다. </p>
									</div>
								</div>
							</article>
							<article class="club-level-box gold">
								<div class="club-level-tit">GOLD</div>
								<div class="club-level-info">
									<div class="club-first">
										<p>연간 이용금액 100만원 이상</p>
										<span>(순수 객실 결제금액 기준)</span>
									</div>
									<div class="club-second">
										<strong>Points</strong>
										<ol>
											<li>객실료의 4% 포인트 적립</li>
										</ol>
									</div>
									<div class="cliub-link">
										<strong>Benefits</strong>
										<p>투숙과 관계없이 사용가능</p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club1">중식 뷔페/석식 뷔페 이용 시 10% 상시할인</a></li>
											<li><a href="#none" class="open_layer" layer-data="club2">신규가입 즉시 웰컴스낵 제공 (연간 1회)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club3">생일 당월 케이크 30% 할인 (연간 1회)</a></li>
										</ol>
										<p>투숙 시 사용가능 </p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club4">조식뷔페 추가이용 시 10% 상시할인</a></li>
											<li>
												<a href="#none" class="open_layer" layer-data="club5">주중 레이트 체크아웃 1시간 (등급별 횟수 상이) </a>
											
											</li>
											<li><a href="#none" class="open_layer" layer-data="club6">주중 객실 전망 업그레이드 (연간 1회)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club7">주중 객실 타입 업그레이드 (연간 1회)</a></li>
							     			        <li><a href="#none" class="open_layer" layer-data="club10">얼리 체크인 오후 1시 (연간 3회) </a></li>
	                                                                                <li><a href="#none" class="open_layer" layer-data="club8">사우나 1인 이용권 (연간 2매)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club9">수영장 1인 이용권 (연간 2매) </a></li>
										</ol>
									</div>
									<div class="club-last">
								<p>※ 각 혜택 클릭 시, 상세안내 확인 가능합니다.</p>
										<p>※ 호텔 상황에 따라 일부 혜택이 제공이 불가할 수 있습니다. </p>
									</div>
								</div>
							</article>
							<article class="club-level-box diamond">
								<div class="club-level-tit">DIAMOND</div>
								<div class="club-level-info">
									<div class="club-first">
										<p>연간 이용금액 300만원 이상</p>
										<span>(순수 객실 결제금액 기준)</span>
									</div>
									<div class="club-second">
										<strong>Points</strong>
										<ol>
											<li>객실료의 5% 포인트 적립</li>
										</ol>
									</div>
									<div class="cliub-link">
										<strong>Benefits</strong>
										<p>투숙과 관계없이 사용가능</p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club1">중식 뷔페/석식 뷔페 이용 시 10% 상시할인</a></li>
											<li><a href="#none" class="open_layer" layer-data="club2">신규가입 즉시 웰컴스낵 제공 (연간 1회)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club3">생일 당월 케이크 30% 할인 (연간 1회)</a></li>
										</ol>
										<p>투숙 시 사용가능 </p>
										<ol>
											<li><a href="#none" class="open_layer" layer-data="club4">조식뷔페 추가이용 시 10% 상시할인</a></li>
											<li>
												<a href="#none" class="open_layer" layer-data="club5">주중 레이트 체크아웃 1시간 (등급별 횟수 상이)</a>
											</li>
										<li><a href="#none" class="open_layer" layer-data="club6">주중 객실 전망 업그레이드 (연간 2회)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club7">주중 객실 타입 업그레이드 (연간 2회)</a></li>
							     			        <li><a href="#none" class="open_layer" layer-data="club10">얼리 체크인 오후 1시 (연간 3회) </a></li>
	                                                                                <li><a href="#none" class="open_layer" layer-data="club8">사우나 1인 이용권 (연간 4매)</a></li>
											<li><a href="#none" class="open_layer" layer-data="club9">수영장 1인 이용권 (연간 4매) </a></li>
										</ol>
									</div>
									<div class="club-last">
									<p>※ 각 혜택 클릭 시, 상세안내 확인 가능합니다.</p>
										<p>※ 호텔 상황에 따라 일부 혜택이 제공이 불가할 수 있습니다. </p>
									</div>
								</div>
							</article>
						</div>
					</div>
					<div class="club-info-contents">
						<strong>■ 박수에 따른 인센티브 혜택 (상세안내 필독)</strong>
						<ul class="club-info-ticket">
														<li>
								<span>3박 이상 이용 시</span>
								<p>수영장 또는 사우나 1인 무료</p>
							</li>
							<li>
								<span>5박 이상 투숙 시</span>
								<p>조식 2인 무료</p>
							</li>
							<li>
								<span>20박 이상 투숙 시</span>
								<p>주중 디럭스 1박 숙박권 1매</p>
							</li>
						</ul>
					</div>
					<div class="club-info-contents">
						<strong>라한호텔을 이용하는 스마트한 방법!</strong>
						<ol>
							<li> <b> 룸 업그레이드, 레이크 체크아웃 등 투숙 시 제공되는 회원특전을 이용하고 싶다면? </b> 
클럽라한에 가입 후, 홈페이지에서 호텔 다이렉트 상품을 예약하세요. <a href="/hub/ko/main.do" target="_blank"> (예약 바로가기 click▶)  </a></li>
<li> <b> 투숙하지 않고도 이용할 수 있는 멤버십 특전이 있어요! </b> 
신규가입 즉시 웰컴스낵 증정, 생일케이크 30% 할인, 뷔페 상시 10% 할인 등의 혜택을 만나보세요. </li>

						</ol>
					</div>
					<div class="club-toggle">
						<ul class="toggleList">
							<li>
								<div class="toggle-head">
									<strong class="tit">클럽라한 승급규정 상세안내</strong>
									<span class="toggle-btn"></span>
								</div>
								<div class="toggle-cont">
									<ol>
										<li> 멤버십 승급 등급은 매년 1월 1일부터 12월 31일까지의 이용 실적을 기반으로 반영됩니다. (다음해 1월 첫 째주 자동반영) </li>
<li> 단 GOLD 등급의 경우, DIAMOND 승급조건이 갖춰지는 즉시 등급 업그레이드가 진행되며, 해당 등급은 당해년도 12월 31일까지 유지됩니다.</li>
<li> 이용실적은 총 결제금액이 아닌, 순수 객실이용 합산금액으로 산정됩니다.</li>
<li> 이용실적은 예약 및 이용하신 투숙건 체크아웃 이후 집계됩니다. (23년 12/31 ~ 24년 1/1 투숙실적은 23년 이용실적으로 집계 불가) </li>

									
									</ol>
								</div>
							</li>
							<li>
								<div href="#none" class="toggle-head">
									<strong class="tit">클럽라한 포인트 적립 및 사용 상세안내</strong>
									<span class="toggle-btn"></span>
								</div>
								<div class="toggle-cont">
									<ol>
										<b> [포인트 적립규정 안내] </b>
<li> 포인트 적립은 '홈페이지 및 유선예약을 통한 호텔 다이렉트 상품 이용 시' 자동 적립됩니다. (단 회원특가 및 일부상품 제외) </li>
<li>회원 본인이 직접 예약 및 투숙한 건에 한해 자동적립 됩니다. </li>
<li>포인트 적립은 체크인 날로부터 익일 오전 진행됩니다.</li>
<li>포인트 적립은 식음, 부대시설 이용요금을 제외한 순수 객실 이용금액을 기준으로 등급별 3~5% 자동 적립됩니다. </li>
<li>포인트 적립 누락건은 홈페이지를 통해 요청 가능하며, 체크아웃일 기준 1개월 이내 요청 시 가능, 1개월 초과 시에는 적립이 불가합니다. </li> 
<li>미사용 포인트는 최초 발생일 기준 5년 이후에 소멸됩니다.</li> <br>

<b> [포인트 사용규정 안내] </b>
<li> 포인트 사용은 홈페이지 및 유선예약을 통한 호텔 다이렉트 상품 이용 시 객실료에 한해 결제사용 가능합니다. (식음 및 부대시설 이용요금 결제 불가) </li>
<li>포인트 사용은 체크아웃 이후 시점의 예약 건부터 사용 가능합니다.</li>
<li>포인트 사용은 5,000점 이상부터 1,000원 단위로 가능하며, 객실료 결제 시에 한해 사용 가능합니다. (1포인트=1원) </li>
									</ol>
								</div>
							</li>
							<li>
								<div href="#none" class="toggle-head">
									<strong class="tit">인센티브 혜택 상세안내</strong>
									<span class="toggle-btn"></span>
								</div>
								<div class="toggle-cont">
									<ol>
										<b> [인센티브 혜택 적립 안내] </b>
<li>인센티브 혜택은 '홈페이지 및 유선예약을 통한 호텔 다이렉트 상품 이용 시' 자동 적립됩니다.</li>
<li>사용 가능 상품 : BAR(Best Available Rate), 패키지 (회원특가는 카운팅에서 제외) </li>
<li>단체/법인/협회/여행사/온라인 여행플랫폼 등을 통한 예약 건도 인센티브 적립이 불가합니다.</li>
<li>회원 본인이 예약 및 투숙한 건에 한해 카운팅 되며, 다중객실 이용 시 하루 최대 2객실 까지만 인정됩니다. </li>
<li>3박/5박/20박은 매년 1/1 부터 12/31까지 누적 카운팅 되며, 다음해에 박수는 새롭게 리셋됩니다. </li>
<li>3박/5박/20박 투숙건이 종료(체크아웃)된 이후, 다음날  마이쿠폰함에 쿠폰이 자동발급되며 <b>쿠폰의 유효기간은 발행일로부터 6개월</b>입니다.</li><br>


<b> [인센티브 혜택 사용 안내] </b>
<li>인센티브 쿠폰은 '홈페이지 및 유선예약을 통한 호텔 다이렉트 상품 이용 시' 사용 가능합니다. </li>
<li>사용 가능 상품 : BAR(Best Available Rate), 패키지, 회원특가 </li>
<li>3박 쿠폰은 일부 사용 불가한 호텔 및 기간이 있을 수 있습니다.</li>
<li>3박/5박 쿠폰은 호텔 투숙 시에만 사용 가능합니다. (회원 본인이 예약 및 투숙한 건에 한함) </li>
<li>3박/5박 쿠폰은 별도 사전예약 없이, 현장에서 즉시 사용이 가능합니다.</li>
<li>20박 쿠폰은 사전예약 필수 입니다. </li>
									</ol>
								</div>
							</li>
						</ul>
					</div>
					<!-- 컨텐츠  끝 -->
				</div>
			</section>


	<!-- 뷔페레스토랑(중식/석식) 10% 상시할인 -->
	<div class="clubPopup">
		<div id="layerClub1" class="layerPop" layer-data="club1">
			<div class="layer-head">
				<h3 class="tit">중식 뷔페/석식 뷔페 10% 상시할인</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 투숙과 관계없이 상시 사용 가능합니다.</li>
<li>본 혜택은 현장결제 시에만 할인 적용 가능합니다. </li>
<li>본 혜택은 1회에 한하여 본인 포함 최대 4인까지 적용 가능하며, 테이블 분할결제는 불가합니다.</li>
<li>객실상품에 기 포함된 중식 뷔페/석식 뷔페 혜택에 추가할인 적용은 불가합니다.</li>
<li>투숙객/HHI 할인/기업체/단체 계약요금 등 중복 할인 적용은 불가합니다.</li>
<li>호텔별 뷔페에서 운영하는 단품메뉴, 코스요리 등에는 할인 적용이 불가합니다. </li>
<li>호텔별 뷔페 운영여부 및 일시가 상이하니, 각 사 홈페이지를 확인바랍니다.</li>


				</ol>
			</div>
		</div>
	</div>
	<!-- 웰컴스낵 & 음료 20% 할인 (연간 1회) -->
	<div class="clubPopup">
		<div id="layerClub2" class="layerPop" layer-data="club2">
			<div class="layer-head">
				<h3 class="tit">신규가입 즉시 웰컴스낵 약과 제공 (연간 1회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 투숙과 관계없이, 연간 1회 사용 가능합니다.</li>
<li>웰컴스낵은 호텔 사정에 따라 상시변경 될 수 있습니다.</li>
<li>호텔 별 웰컴스낵 수령업장은 다음과 같습니다.
<ul>
<li>경주 : 북카페 경주산책 </li>
<li>전주 : 북카페 전주산책 </li>
<li>포항 : 프런트데스크</li>
<li>울산 : 브런치 카페&베이커리 디오븐</li>
<li>목포 : 커피숍 사라 </li>
</ul></li>

				</ol>
			</div>
		</div>
	</div>
	<!-- 생일 당월 케이크 30% 할인 (연간 1회) -->
	<div class="clubPopup">
		<div id="layerClub3" class="layerPop" layer-data="club3">
			<div class="layer-head">
				<h3 class="tit">생일 당월 케이크 30% 할인 (연간 1회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 투숙과 관계없이, 연간 1회 사용 가능합니다.</li>
<li>본 혜택은 생일자 회원 본인에 한해 사용 가능합니다.</li>
<li>생일 당월 10일 전부터 당월 10일 이후까지 사용 가능합니다. </li>
<li>케이크는 호텔별로 지정된 종류 내에서만 선택 가능하며, 할인쿠폰 이용을 원할 시 사전에 유선문의 바랍니다.</li>	
<li>호텔 별 케이크 수령업장은 아래와 같습니다.					
<ul>
							<li>경주 : 그로서리숍 경주상점</li>
							<li>울산 : 브런치 카페&베이커리 디오븐</li>
							<li>목포 : 베이커리 더샵 </li>
						</ul>
					</li>
					<li>혜택 제외호텔 : 전주점, 포항점</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 뷔페레스토랑(조식) 10% 상시할인 -->
	<div class="clubPopup">
		<div id="layerClub4" class="layerPop" layer-data="club4">
			<div class="layer-head">
				<h3 class="tit">조식 뷔페 추가이용 시 10% 상시할인</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 상시사용 가능합니다.</li>
<li>1회 사용 시 본인포함 최대 4인까지 적용 가능하며, 테이블 분할결제는 불가합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 이용시, 호텔 현장에서 즉시사용 가능합니다. (※ 전주점, 포항점은 비투숙객 조식뷔페 이용 시에도 할인적용 가능)</li>
<li>객실상품에 기 포함된 조식뷔페 혜택에 추가할인은 불가합니다.</li>
<li>투숙객/HHI 할인/기업체 및 단체 계약요금에 중복 할인 적용은 불가합니다.</li>
<li>멤버십 가입이후 이용건에 한하여 할인적용 됩니다.</li>

<li>현장결제 시에만 할인 적용 가능합니다.</li>

				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 얼리 체크인 1시 (연간 3회) -->
	<div class="clubPopup">
		<div id="layerClub5" class="layerPop" layer-data="club5">
			<div class="layer-head">
				<h3 class="tit">주중 레이트 체크아웃 1시간 (등급별 횟수 상이)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li><b>본 혜택은 회원 본인 주중(일-목) 투숙 시에 한해, 등급별 횟수만큼 확정사용 가능합니다.<br>
(Silver-연간 2매 / Gold-연간 3매 / Diamond-연간 5매) </b></li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다.<br>
(체크인 당일 현장가입 시, 당일 투숙 건에 사용 불가)</li>
<li>호텔 현장상황에 따라 부득이 제공이 불가할 수 있으며, 이 경우 1,000포인트가 대체제공됩니다.  </li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다. (여름 극성수기, 공휴일, 12/31 등)</li>
<li> 레이트 체크아웃(1시간) 11시 → 12시</li>

				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 객실 전망 업그레이드 (연간 1회) -->
	<div class="clubPopup">
		<div id="layerClub6" class="layerPop" layer-data="club6">
			<div class="layer-head">
				<h3 class="tit">주중 객실 전망 업그레이드 (연간 1회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
				    <li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 1회 사용 가능합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다.<br>
(체크인 당일 현장가입 시, 당일 투숙 건에 사용 불가)</li>

<li>본 혜택은 주중(일-목) 한정, 일반실(디럭스,패밀리) 예약 시 업그레이드 이용 가능합니다. </li>
<li>호텔 사정으로 인해 객실제공 불가 시, 1,000포인트가 대체제공됩니다.</li>
<li>호텔별 혜택 적용 객실은 다음과 같습니다. 
						<ul>
							<li>경주 : 마운틴뷰 디럭스 더블/트윈 → 레이크뷰 디럭스 더블/트윈</li>
							<li>전주 : 시티뷰 디럭스 트윈 → 세미한옥뷰 디럭스 트윈, 세미한옥뷰 디럭스 트윈 → 한옥뷰 디럭스 트윈</li>
							<li>목포 : 마운틴뷰 디럭스 더블 → 오션뷰 디럭스 더블, 마운틴뷰 패밀리 트윈 → 오션뷰 패밀리 트윈</li>
						</ul>
					</li>
					<li>일부 특가요금이 적용된 상품(얼리버드, 핫세일, 회원특가 등)에는 사용이 불가할 수 있습니다.</li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다. (여름 극성수기, 공휴일, 12/31 등)</li>
					<li>혜택 제외호텔 : 포항점, 울산점</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 객실 타입 업그레이드 (연간 1회) -->
	<div class="clubPopup">
		<div id="layerClub7" class="layerPop" layer-data="club7">
			<div class="layer-head">
				<h3 class="tit">주중 객실 타입 업그레이드 (연간 1회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 1회 사용 가능합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다.<br>
(체크인 당일 현장가입 시, 당일 투숙 건에 사용 불가)</li>
<li>객실 타입 업그레이드 시, 침대 타입은 자동변경 될 수 있습니다. </li>
<li>본 혜택은 주중(일-목) 한정 사용 가능합니다.</li>
<li>호텔 사정으로 인해 객실제공 불가 시, 1,000포인트가 대체제공됩니다.</li>
<li>호텔별 혜택 적용 객실은 다음과 같습니다. 
						<ul>
							<li>경주 : 디럭스 더블/트윈 → 패밀리 트윈, 디럭스 노발코니 → 패밀리 노발코니</li>
							<li>전주 : 디럭스 트윈 → 패밀리 트윈</li>
							<li>울산 : 디럭스 더블/트윈 → 프리미엄 디럭스 더블/트윈</li>
						</ul>
					</li>
					<li>일부 특가요금이 적용된 상품(얼리버드, 핫세일, 회원특가 등)에는 사용이 불가할 수 있습니다.</li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다. (여름 극성수기, 공휴일, 12/31 등)</li>
					<li>혜택 제외호텔 : 포항점 </li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 사우나 이용권 2매 -->
	<div class="clubPopup">
		<div id="layerClub8" class="layerPop" layer-data="club8">
			<div class="layer-head">
				<h3 class="tit">사우나 1인 이용권 (연간 2매)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 2매 사용 가능합니다. (한번에 여러장 사용가능) </li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 이용 시, 호텔 현장에서 즉시사용 가능합니다.</li>
<li>본 혜택은 체크인 당일 호텔 현장가입 시, 당일 투숙 건에도 즉시적용 가능합니다.</li>
<li>혜택 제외호텔 : 포항점(사우나 없음) 목포(남자 사우나만 이용 가능)</li>
<li>혜택 제외일자 : 경주(월 1회 정기휴무일/별도안내) 전주(매월 1/3/5주차 화요일 정기휴무) 울산(매월 3주차 일요일 정기휴무)  </li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 수영장 이용권 2매 -->
	<div class="clubPopup">
		<div id="layerClub9" class="layerPop" layer-data="club9">
			<div class="layer-head">
				<h3 class="tit">수영장 1인 이용권 (연간 2매)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 2매 사용 가능합니다. (한번에 여러장 사용가능) </li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 이용 시, 호텔 현장에서 즉시사용 가능합니다.</li>
<li>본 혜택은 체크인 당일 호텔 현장가입 시, 당일 투숙 건에도 즉시적용 가능합니다.</li>
<li>혜택 제외호텔 : 포항점(수영장 없음) </li>
<li>혜택 제외일자 : 경주(월 1회 정기휴무일/별도안내) 울산(매월 3주차 일요일 정기휴무) 목포(7~8월 수영장 운영기간 외 나머지 모든 기간) </li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 레이트 체크아웃 1시 (가능 시마다) -->
	<div class="clubPopup">
		<div id="layerClub10" class="layerPop" layer-data="club10">
			<div class="layer-head">
				<h3 class="tit">얼리 체크인 오후 1시 (연간 3회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원본인 투숙 시에 한해, 연간 3회 사용 가능합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다. <br> (즉 체크인 당일 호텔 현장가입 시, 당일 투숙 건에 즉시적용 불가)</li>
<li>본 혜택은 일부 특가요금이 적용된 프로모션 상품(얼리버드, 핫세일, 회원특가 등)에는 사용이 불가할 수 있습니다.</li>
<li>본 혜택은 주중,주말 관계없이 사용 가능합니다.</li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다.</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 객실 전망 업그레이드 (연간 2회) -->
	<div class="clubPopup">
		<div id="layerClub11" class="layerPop" layer-data="club11">
			<div class="layer-head">
				<h3 class="tit">주중 객실 전망 업그레이드 (연간 2회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 2회 사용 가능합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다.<br>
(체크인 당일 현장가입 시, 당일 투숙 건에 사용 불가)</li>

<li>본 혜택은 주중(일-목) 한정, 일반실(디럭스,패밀리) 예약 시 업그레이드 이용 가능합니다. </li>
<li>호텔 사정으로 인해 객실제공 불가 시, 1,000포인트가 대체제공됩니다.</li>
<li>호텔별 혜택 적용 객실은 다음과 같습니다. 
						<ul>
							<li>경주 : 마운틴뷰 디럭스 더블/트윈 → 레이크뷰 디럭스 더블/트윈</li>
							<li>전주 : 시티뷰 디럭스 트윈 → 세미한옥뷰 디럭스 트윈, 세미한옥뷰 디럭스 트윈 → 한옥뷰 디럭스 트윈</li>
							<li>목포 : 마운틴뷰 디럭스 더블 → 오션뷰 디럭스 더블, 마운틴뷰 패밀리 트윈 → 오션뷰 패밀리 트윈</li>
						</ul>
					</li>
					<li>일부 특가요금이 적용된 상품(얼리버드, 핫세일, 회원특가 등)에는 사용이 불가할 수 있습니다.</li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다. (여름 극성수기, 공휴일, 12/31 등)</li>
					<li>혜택 제외호텔 : 포항점, 울산점</li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 주중 객실 타입 업그레이드 (연간 2회) -->
	<div class="clubPopup">
		<div id="layerClub12" class="layerPop" layer-data="club12">
			<div class="layer-head">
				<h3 class="tit">주중 객실 타입 업그레이드 (연간 2회)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 2회 사용 가능합니다.</li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 사전예약 시에만 사용 가능합니다.<br>
(체크인 당일 현장가입 시, 당일 투숙 건에 사용 불가)</li>
<li>객실 타입 업그레이드 시, 침대 타입은 자동변경 될 수 있습니다. </li>
<li>본 혜택은 주중(일-목) 한정 사용 가능합니다.</li>
<li>호텔 사정으로 인해 객실제공 불가 시, 1,000포인트가 대체제공됩니다.</li>
<li>호텔별 혜택 적용 객실은 다음과 같습니다. 
						<ul>
							<li>경주 : 디럭스 더블/트윈 → 패밀리 트윈, 디럭스 노발코니 → 패밀리 노발코니</li>
							<li>전주 : 디럭스 트윈 → 패밀리 트윈</li>
							<li>울산 : 디럭스 더블/트윈 → 프리미엄 디럭스 더블/트윈</li>
						</ul>
					</li>
					<li>일부 특가요금이 적용된 상품(얼리버드, 핫세일, 회원특가 등)에는 사용이 불가할 수 있습니다.</li>
<li>호텔 별 일부 사용불가한 날짜가 있을 수 있습니다. (여름 극성수기, 공휴일, 12/31 등)</li>
					<li>혜택 제외호텔 : 포항점 </li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 사우나 이용권 4매 -->
	<div class="clubPopup">
		<div id="layerClub13" class="layerPop" layer-data="club13">
			<div class="layer-head">
				<h3 class="tit">사우나 1인 이용권 (연간 4매)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 2매 사용 가능합니다. (한번에 여러장 사용가능) </li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 이용 시, 호텔 현장에서 즉시사용 가능합니다.</li>
<li>본 혜택은 체크인 당일 호텔 현장가입 시, 당일 투숙 건에도 즉시적용 가능합니다.</li>
<li>혜택 제외호텔 : 포항점(사우나 없음) 목포(남자 사우나만 이용 가능)</li>
<li>혜택 제외일자 : 경주(월 1회 정기휴무일/별도안내) 전주(매월 1/3/5주차 화요일 정기휴무) 울산(매월 3주차 일요일 정기휴무)  </li>
				</ol>
			</div>
		</div>
	</div>
	<!-- 수영장 이용권 4매 -->
	<div class="clubPopup">
		<div id="layerClub14" class="layerPop" layer-data="club14">
			<div class="layer-head">
				<h3 class="tit">수영장 1인 이용권 (연간 4매)</h3>
				<button type="button" class="layer-close">Close</button>			
			</div>
			<div class="layer-cont">
				<ol class="layer-dot-list">
					<li>본 혜택은 회원 본인 호텔 투숙 시에 한해, 연간 4매 사용 가능합니다. (한번에 여러장 사용가능) </li>
<li>본 혜택은 공식 홈페이지를 통한 다이렉트 상품(BAR, PKG) 이용 시, 호텔 현장에서 즉시사용 가능합니다.</li>
<li>본 혜택은 체크인 당일 호텔 현장가입 시, 당일 투숙 건에도 즉시적용 가능합니다.</li>
<li>혜택 제외호텔 : 포항점(수영장 없음) 목포(7~8월 여름시즌 수영장 한시운영)</li>
<li>혜택 제외일자 : 경주(월 1회 정기휴무일/별도안내) 울산(매월 3주차 일요일 정기휴무) 목포(7~8월 수영장 운영기간 외 나머지 모든 기간) </li>
				</ol>
			</div>
		</div>
	</div>
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
						<span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_wh.png" alt="라한"/></span>
						<span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="https://www.lahanhotels.com/pohang/ko/main.do" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="https://www.lahanhotels.com//static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
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