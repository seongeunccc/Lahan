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
    
    
    
	<link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/resv.css">
	<script src="https://www.lahanhotels.com/static/pc/js/resv.js"></script>
    
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
	
			<div id="container" class="container">
			<section class="sub-contents">
				<div class="sub-contents-wrap resv-contents">
					<!-- 컨텐츠 시작 -->
					<div class="resvStepWrap">
						<ul>
							<li>
								<span>Step1<!-- Step1 --></span>
								<a href="${pageContext.request.contextPath}/resv/step1"><p>호텔/날짜/인원 선택<!-- 호텔/날짜/인원 선택 --></p></a>
							</li>
							<li class="on">
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
					<div class="resvbox-list resv-calendar-ty02">
						<div class="m-resv-wrap st2-type">
							<div class="m-resv-inner">
								<!-- 1. 호텔 -->
								<div class="m-resv-list step1">
									<span class="selected-badge">호텔<!-- 호텔 --></span>
									<p id="htNmText">라한호텔 포항</p>
								</div>
								<!-- 2. 날짜 -->
								<div class="m-resv-list step2 revArea">
									<span class="selected-badge">체크인 / 체크아웃<!-- 체크인 / 체크아웃 --></span>
									
									<div class="chkInout">
										<div class="resv-step2-box">
											<div>
												<div class="resv-selected-txt checkDate" id="ChekinDate">
													<span id="chkInDate">2024.07.16 </span>
													<span class="mini-date" id="ckinDay">(화)</span>
												</div>
											</div>
											<span class="code-text">−</span>
											<div>
												<div class="resv-selected-txt checkDate" id="ChekoutDate">
													<span id="chkOutDate">2024.07.17 </span>
													<span class="mini-date" id="ckoutDay">(수)</span>
												</div>
											</div>
											<p class="night-txt"><span id="nightText">1</span>박<!-- 박 --></p>
										</div>
										<!-- 달력 -->
										<div class="mainCalendar clearCont">
											<div class="calContainer calendarS"></div>
										</div>
									</div>
								</div>
								<!-- 3. 인원 -->
								<div class="m-resv-list step3">
									<span class="selected-badge first">성인<!-- 성인 --></span>
									<div class="numPeople">
										<button type="button" count_range="minus" class="ppBtn btnDown" onclick="minus('num1',this,1)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
										<input type="text" class="count" name="num1" id="num1" value="2" readonly="readonly">
										<button type="button" count_range="plus" class="ppBtn btnUp" onclick="plus('num1',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
									</div>
									<span class="selected-badge last">소인<!-- 소인 --></span>
									<div class="numPeople">
										<button type="button" count_range="minus" class="ppBtn btnDown" onclick="minus('num2',this,0)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
										<input type="text" class="count" name="num2" id="num2" value="0" readonly="readonly">
										<button type="button" count_range="plus" class="ppBtn btnUp" onclick="plus('num2',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
									</div>
								</div>
							</div>
						</div>
						<!-- 4. 재검색/ 예약 첫 페이지로 이동합니다 -->
						<a href="#none" onclick="reSearch()" title="재검색" class="m-btn-resv btn-navy">재검색<!-- 재검색 --></a>
					</div>
					<!-- 패키지, 객실, 회원전용 탭 메뉴 -->

					<div class="tab-contents">
						<ul class="tab-contents-list">
							<li class="active" onclick="step2Page('package')"><a href="#none" title="패키지/상품">패키지/상품<!-- 패키지/상품 --></a></li>
							<li  onclick="step2Page('room')"><a href="#none" title="객실">객실<!-- 객실 --></a></li>
							<li  onclick="step2Page('member')"><a href="#none" title="회원전용">회원전용<!-- 회원전용 --></a></li>
						</ul>
						
						<div class="club-joinbox">
							<span>CLUB LAHAN</span>
							<p>지금 바로 무료멤버십 가입하고, 포인트 적립 및 할인혜택을 받으세요!<!-- 지금 바로 무료멤버십 가입하고, 포인트 적립 및 할인혜택을 받으세요! --></p>
							<a href="/hub/ko/join/step1.do" title="멤버십 가입하기">멤버십 가입하기<!-- 멤버십 가입하기 --></a>
						</div>
						
						
						<div class="recommond-contents row-reverse-list">
							<div class="recommond-box select">
								<div class="as-select selected">
									
										<span class="select-recommond selected-value">추천순<!-- 추천순 --></span>
									
									
									
									
								</div>
								<ul class="recommond-wrap">
									<li class="option" onclick="setSort('r')">추천순<!-- 추천순 --></li>
									<li class="option" onclick="setSort('lp')">낮은가격순<!-- 낮은가격순 --></li>
									<li class="option" onclick="setSort('hp')">높은가격순<!-- 높은가격순 --></li>
									<li class="option" onclick="setSort('d')">최신순<!-- 최신순 --></li>
								</ul>
							</div>
						</div>
						
						
					</div>

					<!-- ####### 패키지 ####### -->
					
						
						<div class="tab-contents-info2">
							<ul>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시즌</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=257747&sysCode=LHPOH" alt=""/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">여행의 백미 with 백미당</p>
													<p class="cont-pack">달콤한 백미당 아이스크림과 시원한 여름 호캉스 즐기기</p>
													<p class="cont-info">객실 1박 + 조식 2인 + 백미당 아이스크림 2개 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2024.07.01 &#45; 2024.08.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'BMD1')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>173,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'11632','BMD1')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom11632">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시즌</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=230550&sysCode=LHPOH" alt="    "/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">레디 투 트래블 with 위글위글</p>
													<p class="cont-pack">여행하기 좋은 이 달, 라한호텔과 위글위글이 준비한 레디백 받고, 특별한 호캉스 즐기기!</p>
													<p class="cont-info">객실 1박 + 위글위글 레디백 1개 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2024.05.02 &#45; 2024.07.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'RTT')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>138,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'11012','RTT')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom11012">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시그니처</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=95067&sysCode=LHPOH" alt="나혼포 썸네일"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">나 혼자 포항</p>
													<p class="cont-pack">비즈니스 고객을 위한 여유로운 구성의 맞춤 혜택</p>
													<p class="cont-info">객실 + 조식 뷔페 1인 + 주중 14시 체크인</p>
													<p class="cont-date">2022.12.14 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'SAP')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>153,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'1564','SAP')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom1564">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시그니처</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=95220&sysCode=LHPOH" alt="BED&amp;BREAKFAST 썸네일"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">BED & BREAKFAST</p>
													<p class="cont-pack">요일 별 특선 메뉴로 매일 맛있는 조식 뷔페</p>
													<p class="cont-info">객실 + 조식 뷔페 2인 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2023.01.01 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'BFINC1')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>173,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'7304','BFINC1')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom7304">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시즌</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=239603&sysCode=LHPOH" alt=""/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">스페셜 쿠폰</p>
													<p class="cont-pack">3인 이상 투숙 고객에게 안성맞춤</p>
													<p class="cont-info">객실 1박(코리안, 스위트타입 객실 한정) + 쿠폰 2종(조식 2인 이용시 추가 1인 무료, 엑스트라베드 또는 이불 1채 무료제공)</p>
													<p class="cont-date">2024.04.22 &#45; 2024.08.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'SCOU')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>134,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'11138','SCOU')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom11138">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시그니처</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=237936&sysCode=LHPOH" alt="bar"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">[5%할인] 홈페이지 예약 특별가</p>
													<p class="cont-pack">라한호텔을 이용할 수 있는 최적가 상품</p>
													<p class="cont-info">룸온니 상품</p>
													<p class="cont-date">2023.01.01 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'RO5DC')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>133,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'2585','RO5DC')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom2585">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">시그니처</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=224802&sysCode=LHPOH" alt="OCEAN BUBBLE 썸네일"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">OCEAN HEALING</p>
													<p class="cont-pack">  </p>
													<p class="cont-info">객실 1박 + 조식 2인 + 사해소금 입욕제 1종 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2024.03.22 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'OCHL')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>174,000</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'10911','OCHL')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom10911">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">스위트</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=212063&sysCode=LHPOH" alt="1"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">스윗 스위트</p>
													<p class="cont-pack">스위트 객실에서 즐기는 스윗한 시간</p>
													<p class="cont-info">스위트 객실 1박 + 컵와인 2개 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2024.02.01 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'SWS')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>220,400</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'10497','SWS')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom10497">

										</div>
									</li>
								
									<li>
										<div class="content-info-show">
											<div class="contents-info-left">
												<span class="badge-box">
													
														<i class="cont-badge badge-ty01">스위트</i>
													
												</span>
												<img src="https://www.lahanhotels.com//util/file/download.do?fileSn=95314&sysCode=LHPOH" alt="STAY HAPPY 썸네일"/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner">
													<p class="cont-tit">STAY HAPPY TOGETHER</p>
													<p class="cont-pack">가족 모두가 편안하게 즐길 수 있는 스위트 패키지</p>
													<p class="cont-info">패밀리/코리안 스위트 + 조식 뷔페 2인 + 키즈 기프트 + 주중 레이트 체크아웃 13시</p>
													<p class="cont-date">2022.12.14 &#45; 2024.12.31</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'SHT')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
														
														
															<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>279,400</b>원 ~<!-- 원 ~ --></p>
															<button type="button" onclick="selRoom(this,'4099','SHT')" class="btn-select btn-gold"><span>객실 선택<!-- 객실 선택 --></span></button>
														
													
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="packRoom4099">

										</div>
									</li>
								
							</ul>
						</div>
						
						
					
					<!-- ####### 패키지 ####### -->

					<!-- ####### 룸 ####### -->
					
					<!-- ####### 룸 ####### -->


					<!-- 컨텐츠 끝 -->
				</div>
			</section>
			<form id="form" method="post" action="/api/resv/step3.do">
				


	<input type="hidden" name="adult" id="adult" value="2">
	<input type="hidden" name="children" id="children" value="0">
	<input type="hidden" name="night" id="night" value="1">
	<input type="hidden" name="check_in_text" id="check_in_text" value="2024.07.16 (화)">
	<input type="hidden" name="check_out_text" id="check_out_text" value="2024.07.17 (수)">
	<input type="hidden" name="prm_seq_no" id="prm_seq_no" value="">
	<input type="hidden" name="pms_seq_no" id="pms_seq_no" value="231">
	<input type="hidden" name="SS_PMS_CODE" id="SS_PMS_CODE" value="HLP1">
	<input type="hidden" name="SS_PMS_SEQ_NO" id="SS_PMS_SEQ_NO" value="231">
	<input type="hidden" name="htNm" id="htNm" value="라한호텔 포항">
	<input type="hidden" name="check_in" id="check_in" value="2024-07-16">
	<input type="hidden" name="check_out" id="check_out" value="2024-07-17">
	<input type="hidden" name="sysCode" id="sysCode" value="LHPOH">
	<input type="hidden" name="room_code" id="room_code" value="">
	<input type="hidden" name="rate_code" id="rate_code" value="">
	<input type="hidden" name="rate_seq_no" id="rate_seq_no" value="">
	<input type="hidden" name="room_seq_no" id="room_seq_no" value="">
	<input type="hidden" name="hotelCode" id="hotelCode" value="16">
	<input type="hidden" name="rsvn_reqmatter" id="rsvn_reqmatter" value="">
	<input type="hidden" name="memberCouponSeq" id="memberCouponSeq" value="">
	<input type="hidden" name="memberBene" id="memberBene" value="">
	<input type="hidden" name="step1Param" id="step1Param" value="">
	<input type="hidden" name="step2Param" id="step2Param" value="adult=2&children=0&night=1&check_in_text=2024.07.16%20(%ED%99%94)&check_out_text=2024.07.17%20(%EC%88%98)&check_in=2024-07-16&check_out=2024-07-17&prm_seq_no=&pms_seq_no=231&SS_PMS_CODE=HLP1&SS_PMS_SEQ_NO=231&Prm_code=&htNm=%EB%9D%BC%ED%95%9C%ED%98%B8%ED%85%94%20%ED%8F%AC%ED%95%AD&sysCode=LHPOH&hotelCode=16&step1Param=&step2Param=&step3Param=&step4Param=&month=&year=&searchRoomCode=&searchRateCode=&step2Type=">
	<input type="hidden" name="step3Param" id="step3Param" value="">
	<input type="hidden" name="step4Param" id="step4Param" value="">
	<input type="hidden" name="langCode" id="langCode" value="ko">
	<input type="hidden" name="searchRoomCode" id="searchRoomCode" value="">
	<input type="hidden" name="searchRateCode" id="searchRateCode" value="">





				<input type="hidden" name="step2Type" id="step2Type" value="package">
				<input type="hidden" name="step2Sort" id="step2Sort" value="">
				<input id="searchMonth" name="month" value="" type="hidden">
				<input id="searchYear" name="year" value="" type="hidden">
				<input id="searchRoomDivisArr" name="searchRoomDivisArr" value="" type="hidden">
			</form>
		</div>

	</div>
	<!-- 객실 설명 -->
	<div id="layerPopup">
		<div id="roomDetailPop" class="layerPop">
		</div>
	</div>
	<!-- 패키지 설명 -->
	<div id="layerPopup">
		<div id="packDetailPop" class="layerPop">
		</div><!-- //layerPop -->
	</div>

	<!-- 다른 날짜 요금 -->
	<div id="layerPopup">
		<div id="chargeDetailPop" class="layerPop">

		</div>
	</div>

	<script>
	const langCode = "ko";
	const loignUrl = window.location.origin+"/hub/"+langCode+"/login/loginForm.do?nextURL="+window.location.href+"?"+$('#form').serialize();

	$(document).ready(function(){
		//초기 체크인 체크아웃 세팅
		/* const ckin = $("#chkInDate").text();
		const ckiout = $("#chkOutDate").text();
		commonJs.calendarMgr._setChkInDate(ckin);
		commonJs.calendarMgr._setChkOutDate(ckiout);
		commonJs.initResvCalendar($(".calContainer")); */
		hotlCalendar(true);
		fillterDivis();
		const step2Param = $("#form").serialize();
		$("#step2Param").val(step2Param);
	});

	//객실 설명 > 객실 설명 팝업 close
	$(document).on("click", "#roomDetailPop .layer-close", function() {
		$("#roomDetailPop, .dimmed").hide();
		$("body").removeClass("scrollLock");
	});

	//다른 날짜 요금 팝업 close
	$(document).on("click", "#chargeDetailPop .layer-close", function() {
		$("#chargeDetailPop, .dimmed2").hide();
		$("body").removeClass("scrollLock");
	});

	//패키지 설명 > 패키지 설명 팝업 close
	$(document).on("click", "#packDetailPop .layer-close", function() {
		$("#packDetailPop, .dimmed").hide();
		$("body").removeClass("scrollLock");
	});

	//상품선택//객실선택
	$(".btn-select").on("click", function(){
		$(this).toggleClass("on");
		if( $(this).hasClass("on") ){
			$(this).parents(".content-info-show").addClass("color");
			$(this).parents(".content-info-show").siblings(".content-info-hide").css({ "display":"flex" });
		} else {
			$(this).parents(".content-info-show").removeClass("color");
			$(this).parents(".content-info-show").siblings(".content-info-hide").css({ "display":"none" });

		}
	});

	//패키지 객실선택
	function selRoom(e,rate_seq_no,rate_code){
		if($(e).hasClass("on") ){
			return;
		}

		$("#rate_seq_no").val(rate_seq_no);
		var pram = $("#form").serialize()+"&rate_code="+rate_code
		$.ajax({
			type : "POST"
			,url : "/hub/ko/api/resv/packageRoomList.do?"
			,cache : false
			,dataType : "html"
			,data : pram
			,async : true
			,success:function(data){
				$("#packRoom"+rate_seq_no).html(data);
			},
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				hideLoading();
		    },
		});
	}

	//객실 패키지 선택
	function selPackage(e,room_seq_no){
		if($(e).hasClass("on") ){
			return;
		}

		$("#room_seq_no").val(room_seq_no);
		$.ajax({
			type : "POST"
			,url : "/hub/ko/api/resv/roomPackageList.do"
			,cache : false
			,dataType : "html"
			,data : $("#form").serialize()
			,async : true
			,success:function(data){
				$("#roomPackage"+room_seq_no).html(data);
			},
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				hideLoading();
		    },
		});
	}

	//다른날짜 객실 요금
	function diffPriceRoom(e,room_code){
		$("#room_code").val(room_code);

		$.ajax({
			type : "POST"
			,url : "/api/resv/diffPriceRoom.do"
			,cache : false
			,dataType : "html"
			,data : $("#form").serialize()
			,async : true
			,success:function(data){
				$("#chargeDetailPop").html(data);
				$("body").addClass("scrollLock");
				$("#chargeDetailPop, .dimmed2").show();
			},
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				//hideLoading();
		    	$(".loading-box").hide();
		    },
		});
	}

	//다른날짜 패키지 요금
	function diffPricePackage(e,rate_code){
		$("#rate_code").val(rate_code);

		$.ajax({
			type : "POST"
			,url : "/api/resv/diffPricePackage.do"
			,cache : false
			,dataType : "html"
			,data : $("#form").serialize()
			,async : true
			,success:function(data){
				$("#chargeDetailPop").html(data);
				$("body").addClass("scrollLock");
				$("#chargeDetailPop, .dimmed2").show();
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				//hideLoading();
		    	$(".loading-box").hide();
		    },
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			}
		});
	}

	//다른날짜요금 ㄴ토글
	function chargeView(e,type){
		if(type=="next"){
			$("#chargeNextBtn").hide();
			$("#chargePrevBtn").show();
			$("#chargePrev").hide();
			$("#chargeNext").show();
		}else{
			$("#chargeNextBtn").show();
			$("#chargePrevBtn").hide();
			$("#chargePrev").show();
			$("#chargeNext").hide();
		}
	}


	function listEmpty(txt){
		alert(txt);
	}

	//객설 설명
	function roomInfo(e, room_code){
		$("#room_code").val(room_code);

		$.ajax({
			type : "POST"
			,url : "/api/resv/roomInfo.do"
			,cache : false
			,dataType : "html"
			,data : $("#form").serialize()
			,async : true
			,success:function(data){
				$("#roomDetailPop").html(data);
			},
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				hideLoading();
		    },

		});
	}

	//패키지 설명
	function packageInfo(e, rate_code){
		$("#rate_code").val(rate_code);

		$.ajax({
			type : "POST"
			,url : "/api/resv/packageInfo.do"
			,cache : false
			,dataType : "html"
			,data : $("#form").serialize()
			,async : true
			,success:function(data){
				$("#packDetailPop").html(data);
			},
			error:function(r, s, e){
				alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
			},
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				hideLoading();
		    },
		});
	}

	function step2Page(type){
		$("#step2Sort").val("");

		$("#step2Type").val(type);

		showLoading();
		$("#rate_seq_no").val("");
		$("#room_seq_no").val("");
		$("#form").attr("action","/hub/ko/resv/step2.do");
		$("#form").submit();
	}

	function setSort(sort){
		$("#step2Sort").val(sort);
		$("#form").attr("action","/hub/ko/resv/step2.do");
		$("#rate_seq_no").val("");
		$("#room_seq_no").val("");
		showLoading();


		// 선택된 목록 가져오기
	  	const query = 'input[name="searchRoomDivis"]:checked';
	  	const selectedEls =
	      	document.querySelectorAll(query);

	  	// 선택된 목록에서 value 찾기
	  	let ckecked = '';
	  	selectedEls.forEach((el) => {
	  		ckecked += el.value + ',';
	  	});
	  	$("#searchRoomDivisArr").val(ckecked);
		$("#form").submit();
	}

	function next(room_seq_no, rate_seq_no, rate_code, goLogin){
		if($("#step2Type").val()=="member"){
			const isLogin = "false";
			if(isLogin == "false"){
				alert("해당 상품은클럽라한 회원에게만 제공됩니다.\n로그인페이지로 이동합니다."); /* 해당 상품은클럽라한 회원에게만 제공됩니다.\n로그인페이지로 이동합니다. */
				location.href = loignUrl;
				return;
			} else {
				var sysCode = $("#sysCode").val();
	
				$.ajax({
					type : "GET"
					,url : "/hub/api/resv/resveHistChk.json?sysCode="+sysCode+"&check_in="+$("#check_in").val()
					,cache : false
					,async : true
					,success:function(data){
						if(data.isLogin === true) {
							var roomCnt = 5;
							if(sysCode === "LHGYJ") {	// 경주
								roomCnt = 5;
							} else {
								roomCnt = 3;
							}
							if(data.result >= roomCnt) {
								alert("체크인 날짜 기준, 예약 가능한 횟수를 초과하였습니다. 추가 문의사항은 통합예약실(1644-8005)로 연락 바랍니다.");
								return;
							}
						} 
						
						$("#room_seq_no").val(room_seq_no);
						$("#rate_code").val(rate_code);
						$("#rate_seq_no").val(rate_seq_no);

						//호텔 선택여부
						if($("#pms_seq_no").val() == "" || $("#SS_PMS_SEQ_NO").val() == "" || $("#SS_PMS_CODE").val() == ""){
							alert("호텔을 선택해주세요.");
							return;
						}

						//객실 / 패키지 선택 여부
						if($("#room_seq_no").val() == "" || $("#rate_seq_no").val() == "" || $("#rate_code").val() == "" ){
							alert("호텔을 선택해주세요.");
							return;
						}

						showLoading();
						$("#form").attr("action","/hub/ko/resv/step3.do");
						$("#form").submit();
						
					},
					error:function(r, s, e){
						alert(alertAjaxError.replace("{1}", r.status).replace("{2}", r.responseText));
					}
				});
				
				
			}
		} else {			
			$("#room_seq_no").val(room_seq_no);
			$("#rate_code").val(rate_code);
			$("#rate_seq_no").val(rate_seq_no);
	
			//호텔 선택여부
			if($("#pms_seq_no").val() == "" || $("#SS_PMS_SEQ_NO").val() == "" || $("#SS_PMS_CODE").val() == ""){
				alert("호텔을 선택해주세요.");
				return;
			}
	
			//객실 / 패키지 선택 여부
			if($("#room_seq_no").val() == "" || $("#rate_seq_no").val() == "" || $("#rate_code").val() == "" ){
				alert("호텔을 선택해주세요.");
				return;
			}
	
			showLoading();
			$("#form").attr("action","/hub/ko/resv/step3.do");
			$("#form").submit();
		}

	}

	//재검색
	function reSearch(){
		$("#rate_seq_no").val("");
		$("#room_seq_no").val("");
		//$("#searchRoomCode").val("");
		//$("#searchRateCode").val("");
		$("#form").attr("action","/hub/ko/resv/step2.do");
		showLoading();
		resvStart();
	}
	//객실구분 필터링
	function fillterDivis(){
		// 선택된 목록 가져오기
	  	const query = 'input[name="searchRoomDivis"]:checked';
	  	const selectedEls =
	      	document.querySelectorAll(query);

	  	// 선택된 목록에서 value 찾기
	  	let ckecked = '';
	  	selectedEls.forEach((el) => {
	  		ckecked += el.value + ' ';
	  	});

	  	if(ckecked == ""){
		  	$(".roomLi").each(function(index,item){
		  		$(item).show();
		  	})
	  	}else{
		  	$(".roomLi").each(function(index,item){
		  		if(ckecked.includes($(item).attr("room-divison")) ){
		  			$(item).show();
		  		}else{
		  			$(item).hide();
		  		}
		  	})
	  	}

	}

	function goLogin(){
		alert("해당 상품은클럽라한 회원에게만 제공됩니다.\n로그인페이지로 이동합니다."); /* 해당 상품은클럽라한 회원에게만 제공됩니다.\n로그인페이지로 이동합니다. */
		location.href = loignUrl;
	}
	</script>

		</div>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 	
		
		
		
		
	
</body>
</html>