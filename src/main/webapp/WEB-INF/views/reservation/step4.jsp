<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
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
		<form id="form" method="post" action="/resv/stepCom.do">
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
							<li >
								<span>Step2<!-- Step2 --></span>
								<p>객실 선택<!-- 객실 선택 --></p>
							</li>
							<li >
								<span>Step3<!-- Step3 --></span>
								<p>옵션 선택<!-- 옵션 선택 --></p>
							</li>
							<li class="on">
								<span>Step4<!-- Step4 --></span>
								<p>예약정보 입력<!-- 예약정보 입력 --></p>
							</li>
						</ul>
					</div>
					<div class="resvbox-wrap">
						<div class="resvbox-wrap-inner">
							<div class="resvbox-wrap-left info-input">
								<!-- 고객정보 입력 -->
								<div class="resvbox-wrap-list">
									<div class="info-input-tit">
										<strong>고객정보 입력<!-- 고객정보 입력 --></strong>
										
										<span class="resv-wr-necessary">* 표시 필수 입력 사항<!-- * 표시 필수 입력 사항 --></span>
									</div>
									<div id="guestInfo">
										<div class="info-input-list necessary">
											<span>투숙자명<!-- 투숙자명 --></span>
											<div class="info-input-box info-input-ty01">
												
												
													<input type="text" style="text-transform: uppercase;" data-valid="Y" data-msg="이름을 입력해주세요." onKeyup="this.value=this.value.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g,'');" maxlength="35" id="rsvn_gest_lastname"  
													name="rsvn_gest_lastname" class="esse readInfo" placeholder="이름" value="${memberinfo.name}" readonly /><!-- 성 -->
												
											</div>
										</div>
										<div class="info-input-list necessary" id="emailArea">
											<span>이메일<!-- 이메일 --></span>
											<div class="resv-emailbox">
												<!-- <div class="emailWrap"> -->
													<input type="text"  data-msg="이메일을 입력해주세요."  id="email" class="esse readInfo" 
													placeholder="이메일을 입력해주세요. "   value="${memberinfo.email}" readonly />
												
											<!-- 	</div> -->
						
											</div>
										</div>
										<div class="info-input-list necessary">
											<span>휴대폰번호<!-- 휴대폰번호 --></span>
											<div class="resv-phonebox">
												<div class="phoneSelect">
													<div class="select-wrap phone readInfo">
														<div class="selected readInfo select-nationCode">
															
															
																
						                                        	<span class="selected-value active">+82(대한민국)</span>
							                                    
																<em class="select-arrow"></em>
															
														</div>
														<ul class="select-box phoneUl">
															
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KOR">+82(대한민국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AFG">+93(아프가니스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AGO">+244(앙골라)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AIA">+1264(앵귈라)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ALB">+355(알바니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AND">+376(안도라)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ANT">+(네덜란드령 안틸레스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ARE">+971(아랍에미리트)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ARG">+54(아르헨티나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ARM">+374(아르메니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ATG">+1268(앤티가 바부다)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AUS">+61(오스트레일리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AUT">+43(오스트리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="AZE">+994(아제르바이잔)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BDI">+257(부룬디)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BEL">+32(벨기에)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BEN">+229(베냉)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BFA">+226(부르키나파소)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BGD">+880(방글라데시)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BGR">+359(불가리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BHR">+973(바레인)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BHS">+1242(바하마)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BLR">+375(벨라루스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BLZ">+501(벨리즈)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BMU">+1441(버뮤다)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BOL">+591(볼리비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BRA">+55(브라질)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BRB">+1246(바베이도스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BRN">+673(브루나이)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BTN">+975(부탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="BWA">+267(보츠와나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CAF">+236(중앙아프리카 공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CAN">+1(캐나다)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CHE">+41(스위스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CHL">+56(칠레)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CHN">+86(중화인민공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CMR">+237(카메룬)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="COG">+242(콩고 공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="COK">+682(쿡 제도)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="COL">+57(콜롬비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CRI">+506(코스타리카)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CUB">+53(쿠바)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CYP">+357(키프로스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="CZE">+420(체코)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DEU">+49(독일)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DJI">+253(지부티)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DMA">+1(도미니카 연방)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DNK">+45(덴마크)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DOM">+1890(도미니카 공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="DZA">+213(알제리)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ECU">+593(에콰도르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="EGY">+20(이집트)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ERI">+291(에리트레아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ESP">+34(스페인)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="EST">+372(에스토니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ETH">+251(에티오피아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="FIN">+358(핀란드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="FJI">+679(피지)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="FRA">+33(프랑스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="FRO">+298(페로 제도)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GAB">+241(가봉)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GBR">+44(영국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GEO">+995(조지아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GHA">+233(가나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GIB">+350(지브롤터)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GIN">+224(기니)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GMB">+220(감비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GNQ">+240(적도 기니)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GRC">+30(그리스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GRD">+1(그레나다)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GTM">+502(과테말라)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GUF">+594(프랑스령 기아나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GUM">+1671(괌)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="GUY">+592(가이아나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="HKG">+852(홍콩)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="HND">+504(온두라스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="HTI">+509(아이티)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="HUN">+36(헝가리)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IDN">+62(인도네시아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IND">+91(인도)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IOT">+246(영국령 인도양 지역)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IRL">+353(아일랜드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IRN">+98(이란)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="IRQ">+964(이라크)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ISL">+354(아이슬란드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ISR">+972(이스라엘)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ITA">+39(이탈리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="JAM">+1876(자메이카)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="JOR">+962(요르단)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="JPN">+81(일본)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KAZ">+327(카자흐스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KEN">+254(케냐)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KGZ">+331(키르기스스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KHM">+855(캄보디아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="KWT">+965(쿠웨이트)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LAO">+856(라오스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LBN">+961(레바논)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LBR">+231(라이베리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LBY">+218(리비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LCA">+1758(세인트루시아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LIE">+423(리히텐슈타인)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LKA">+94(스리랑카)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LSO">+266(레소토)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LTU">+370(리투아니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LUX">+352(룩셈부르크)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="LVA">+371(라트비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MAC">+853(마카오)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MAR">+212(모로코)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MCO">+377(모나코)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MDA">+373(몰도바)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MDG">+261(마다가스카르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MDV">+960(몰디브)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MEX">+52(멕시코)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MLI">+223(말리)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MLT">+356(몰타)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MMR">+95(미얀마)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MNG">+976(몽골)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MOZ">+258(모잠비크)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MSR">+1664(몬트세랫)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MUS">+230(모리셔스)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MWI">+265(말라위)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="MYS">+60(말레이시아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NAM">+264(나미비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NER">+227(니제르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NGA">+234(나이지리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NIC">+505(니카라과)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NLD">+31(네덜란드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NOR">+47(노르웨이)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NPL">+977(네팔)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NRU">+674(나우루)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="NZL">+64(뉴질랜드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="OMN">+968(오만)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PAK">+92(파키스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PAN">+507(파나마)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PER">+51(페루)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PHL">+63(필리핀)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PNG">+675(파푸아뉴기니)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="POL">+48(폴란드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PRI">+1787(푸에르토리코)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PRK">+850(조선민주주의인민공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PRT">+351(포르투갈)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PRY">+595(파라과이)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="PYF">+689(프랑스령 폴리네시아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="QAT">+974(카타르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="RUS">+7(러시아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SAU">+966(사우디아라비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SDN">+249(수단)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SEN">+221(세네갈)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SGP">+65(싱가포르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SLE">+232(시에라리온)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SLV">+503(엘살바도르)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SMR">+378(산마리노)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SOM">+252(소말리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="STP">+239(상투메 프린시페)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SUR">+597(수리남)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SVK">+421(슬로바키아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SVN">+386(슬로베니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SWE">+46(스웨덴)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SWZ">+268(스와질란드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SYC">+248(세이셸)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="SYR">+963(시리아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TCD">+235(차드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TGO">+228(토고)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="THA">+66(태국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TJK">+992(타지키스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TKM">+993(투르크메니스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TON">+676(통가)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TTO">+1(트리니다드 토바고)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TUN">+216(튀니지)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TUR">+90(터키)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TWN">+886(중화민국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="TZA">+255(탄자니아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="UGA">+256(우간다)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="UKR">+380(우크라이나)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="URY">+598(우루과이)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="USA">+1(미국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="UZB">+998(우즈베키스탄)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="VCT">+1784(세인트빈센트 그레나딘)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="VEN">+58(베네수엘라)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="VGB">+1(영국령 버진아일랜드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="VIR">+1(미국령 버진아일랜드)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="VNM">+84(베트남)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="YEM">+967(예멘)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ZAF">+27(남아프리카 공화국)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ZMB">+260(잠비아)</li>
						                                    
						                                        <li class="option" onclick="setValue(this,'rsvn_nation_code')" code="ZWE">+263(짐바브웨)</li>
						                                    
														</ul>
													</div>
												</div>
												<div class="info-input-box">
													<input type="hidden" value="" name="rsvn_nation_code" id="rsvn_nation_code">
													<input type="text" name="phone" id="phone" class="esse readInfo" data-msg="휴대폰번호를 입력해주세요."
													value="${memberinfo.phone}" readonly />
												</div>
											</div>
										</div>
										<div class="info-input-list necessary">
											<span>생년월일<!-- 생년월일 --></span>
											<div class="resv-monthbox">
												<div class="info-input-box first">
													<input type="number" value="${memberinfo.birth}" data-valid="Y" class="readInfo" data-msg="생년월일(연도)을 입력해주세요."   name="yearYYYY" id="yearYYYY" class="esse" placeholder="YYYY"  oninput="nextFocus(this,'4','yearMM')"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" readonly />
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<!-- //고객정보 입력 -->
								<!-- 결제정보 입력 -->
								<div class="resvbox-wrap-list">
									<div class="info-input-tit">
										<strong>결제정보<!-- 결제정보 --></strong>
										<span class="resv-wr-necessary">* 표시 필수 입력 사항<!-- * 표시 필수 입력 사항 --></span>
									</div>
									<div class="info-input-inline">
										<div class="info-input-list first necessary">
											<span>카드번호<!-- 카드번호 --></span>
											<div class="info-input-box">
												<input type="number" data-valid="Y" name="cardNum1" id="cardNum1" oninput="nextFocus(this,'4','cardNum2')" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" data-msg="카드번호를 입력해주세요.">
												<input type="number" data-valid="Y" name="cardNum2" id="cardNum2" oninput="nextFocus(this,'4','cardNum3')" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" data-msg="카드번호를 입력해주세요.">
												<input type="number" data-valid="Y" name="cardNum3" id="cardNum3" oninput="nextFocus(this,'4','cardNum4')" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" data-msg="카드번호를 입력해주세요.">
												<input type="number" data-valid="Y" name="cardNum4" id="cardNum4" oninput="this.value=this.value.slice(0, 4);" data-msg="카드번호를 입력해주세요.">
											</div>
										</div>
										<div class="info-input-list last necessary">
											<span>유효기간<!-- 유효기간 --></span>
											<div class="resv-cardinfo">
												<div class="monthSelect-ty01">
													<div class="select-wrap year">
														<div class="selected">
															<span class="selected-value">년<!-- 년 --></span>
															<em class="select-arrow"></em>
														</div>
														<ul class="select-box">
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2024">2024</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2025">2025</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2026">2026</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2027">2027</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2028">2028</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2029">2029</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2030">2030</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2031">2031</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2032">2032</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2033">2033</li>
															
																<li class="option" onclick="setValue(this,'cardYYYY')" code="2034">2034</li>
															
														</ul>
													</div>
												</div>
												<input type="hidden" id="cardYYYY" name="cardYYYY" data-valid="Y" data-msg="카드 유효기간(연도)을 선택해주세요." >
												<div class="monthSelect-ty01">
													<div class="select-wrap month">
														<div class="selected">
															<span class="selected-value">월<!-- 월 --></span>
															<em class="select-arrow"></em>
														</div>
														<ul class="select-box">
															
																<li class="option" onclick="setValue(this,'cardMM')" code="01">01</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="02">02</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="03">03</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="04">04</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="05">05</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="06">06</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="07">07</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="08">08</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="09">09</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="10">10</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="11">11</li>
															
																<li class="option" onclick="setValue(this,'cardMM')" code="12">12</li>
															
														</ul>
													</div>
												</div>
												<input type="hidden" id="cardMM" name="cardMM" data-valid="Y" data-msg="카드 유효기간(월)을 선택해주세요." >
											</div>
										</div>
									</div>
									<!-- 2023-04-28 결제정보 안내 문구 -->
									<ul class="info-input-guide">
										<li>신용카드 정보는 예약 보증 이외의 용도로 사용되지 않으며, 체크인시 현장에서 직접 결제가 필요합니다.<!-- 신용카드 정보는 예약 보증 이외의 용도로 사용되지 않으며, 체크인시 현장에서 직접 결제가 필요합니다. --></li>
										<li>고객님의 신용카드 정보는 안전하게 보관됩니다.<!-- 고객님의 신용카드 정보는 안전하게 보관됩니다. --></li>
									</ul>
								</div>
								<!-- //결제정보 입력 -->
								<!-- 개인정보 수집 및 이용에 대한 동의(필수) -->
								<div class="resvbox-wrap-list agree-termbox first"><!-- 비회원일 때 none 추가 -->
									<div class="info-input-tit">
										<strong>개인정보 수집 및 이용에 대한 동의(필수)<!-- 개인정보 수집 및 이용에 대한 동의(필수) --></strong>
										<span class="frm frm-chk type02">
											<input type="checkbox" id="check-agree01"><label for="check-agree01">동의<!-- 동의 --></label>
										</span>
									</div>
									<div class="joinScrollBox">
										<div class="joinAgrInner">
											<div class="joinAgreeTxt">
												<p><b>* 필수항목에 대한 개인정보 수집 및 이용 미동의 시, 예약서비스의 제공이 불가능 할 수 있습니다.  </b><br><br>

라한호텔은 고객님에 대한 투숙 및 관련 서비스 제공을 위하여 아래와 같이 고객님의 개인정보를 수집,이용,보관 처리합니다. 아래 내용을 확인하신 후 개인정보 수집에 동의하여 주시기 바랍니다. 보다 자세한 내용은 당사의 개인정보 처리방침을 확인하시기 바랍니다. <br><br>

<b>비회원 필수 수집항목</b> <br>
- 이름, 이메일, 휴대폰번호,생년월일<br>
- 신용카드 번호, 신용카드 유효기간<br><br>

<b>회원 필수 수집항목</b> <br>
- 신용카드 번호, 신용카드 유효기간<br>
- (클럽라한 멤버십 회원가입 시 수집한 이름, 휴대전화, 생년월일, 이메일 정보 이용) <br><br>

<b>필수 수집항목 수집 및 이용 목적</b><br>
예약 고객이 실제 투숙 시 본인확인 및 개인식별, 만19세 미만 여부 확인,예약 취소 및 노쇼의 경우 예약취소 수수료 결제<br><br>

<b>보유기간</b><br>
- 실제투숙 시,원칙적으로 퇴숙일로부터1년간 보관<br>
- 예약취소 시,원칙적으로 예약취소일로부터7일간 보관<br>
- 단,관계법령(전자상거래법 등)에 의하여 그 이상 보유할 필요가 있는 경우 법령상 정한 기간동안 보유 <br>
- 자세한 보유기간은 당사의 개인정보 처리방침 참고요망<br><br>

※더 나은 서비스를 위하여 고객님의 개인정보를 협력 업체 등과 공유할 필요가 있는 경우에는해당 내용 및 업체명을 개인정보처리방침에 수시로 업데이트하여 이용자에게 고지 합니다. </p>
											</div>
										</div>
									</div>
								</div>
								<!-- //개인정보 수집 및 이용에 대한 동의(필수) -->
								<!-- 취소규정에 대한 동의 -->
								<div class="resvbox-wrap-list agree-termbox last"><!-- 2023-03-02 class추가 -->
									<div class="info-input-tit">
										<strong>취소규정에 대한 동의(필수)<!-- 취소규정에 대한 동의 --></strong>
										<span class="frm frm-chk type02">
											<input type="checkbox" id="check-agree02"><label for="check-agree02">동의<!-- 동의 --></label>
										</span>
									</div>
									<div class="joinScrollBox">
										<div class="joinAgrInner">
											<div class="joinAgreeTxt">
												<div class="conseNights-guide ty-02">
													<p><li>입실 2일전 18:00 취소 시, 별도 취소 비용 없습니다.</li>
<li>입실 2일전 18:00 이후 ~ 입실 당일 취소 시, 첫날 객실료의 100% 수수료가 발생합니다.</li>
<li>입실 2일전 18:00 이후, 예약 변경은 불가합니다.</li>
<li>입실 1일전 00:00부터 입실 당일까지 첫날 객실료의 100% 수수료가  발생합니다.</li>
<li>노쇼의 경우, 첫날 객실료의 100%가 부과됩니다.</li>
</p>


												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //취소규정에 대한 동의 -->
							</div>
							<div class="resvbox-wrap-right">
								<div class="resvbox-wrap-right-inner">
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>호텔<!-- 호텔 --></span>
											<p>${dto.hotel }</p>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>체크인 / 체크아웃<!-- 체크인 / 체크아웃 --></span>
											<p><span>${dto.check_in_text } - ${dto.check_out_text }</span><span> ${dto.night}박<!-- 박 --></span></p>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>인원<!-- 인원 --></span>
											<p>성인<!-- 성인 --> ${dto.adult} / 소인<!-- 소인 --> ${dto.children}</p>
										</div>
									</div>
								</div>
								<div class="resvbox-wrap-right-inner">
									<strong class="resvbox-option-tit">${roomdto.room_name}</strong>
									<div class="resvbox-wrap-list ty-03">
										<div class="resvbox-wrap-list-inner">
											<div class="resvbox-option-left">
												<p>상품 / 객실<!-- 패키지/객실 --></p>
											</div>
											<div class="resvbox-option-right">
												<p>${totalPrice}</strong> 원<!-- 원 --></p>
											</div>
										</div>
									</div>
						
<!-- 									<div class="resvbox-wrap-inner grey-bg">기본 및 비회원일 때 // 회원일 때 none 삭제
										<p>
											지금 바로, 클럽라한에 가입하세요!<br/><br/>본 상품을 회원 가입 후 이용하시면 <br/><b>현금처럼 사용가능한 포인트지금 바로, 클럽라한 가입 후 포인트 적립과 할인 혜택을 받으세요.<br/>본 상품을 회원 가입 후 이용하시면 <b></b>와 회원 혜택이 제공됩니다.</b>가 적립됩니다.
											
										</p>
										<a href="/hub/ko/join/step1.do" title="회원가입 바로가기" class="btn-more link-txt">회원가입 바로가기회원가입 바로가기</a>
									</div> -->
									
								</div>
								<div class="resvbox-charge">
									<span>VAT 포함<!-- VAT 포함 --></span><!-- 데이터값 받아오기 -->
									<div class="resvbox-charge-table">
										<strong>최종 결제 예정 금액<!-- 최종 결제 예정 금액 --></strong>
										<span><strong id="totalPrice">${totalPrice}</strong>원<!-- 원 --></span><!-- 데이터값 받아오기 -->
									</div>
									<div class="btn-block-box 1">
										<a href="#;" title="예약완료" onclick="letsgoresv()" class="btn-comResv btn-gold">예약완료<!-- 예약하기 --></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 컨텐츠 끝 -->
				</div>
			</section>
			

</div>
</form>

	<form id="form11" method="post" action="${pageContext.request.contextPath}/resv/step5">
	<input type="hidden" name="adult" id="adult" value="${dto.adult}">
	<input type="hidden" name="children" id="children" value="${dto.children}">
	<input type="hidden" name="night" id="night" value="${dto.night}">
	<input type="hidden" name="check_in_text" id="check_in_text" value="${dto.check_in_text}">
	<input type="hidden" name="check_out_text" id="check_out_text" value="${dto.check_out_text}">
	<input type="hidden" name="hotel" id="hotel" value="${dto.hotel}">
	<input type="hidden" name="check_in" id="check_in" value="${dto.check_in}">
	<input type="hidden" name="check_out" id="check_out" value="${dto.check_out}">
	<input type="hidden" name="total" id="total" value="${dto.total}">
	<input type="hidden" name="prm_code" id="prm_code" value="${dto.prm_code}">
	<input type="hidden" name="check_Out_Day" id="check_Out_Day" value="${dto.check_Out_Day}">
	<input type="hidden" name="check_In_Day" id="check_In_Day" value="${dto.check_In_Day}">
	<!-- RoomDto  -->
	<input type="hidden" name="room_name" id="room_name" value="${roomdto.room_name}">
	<input type="hidden" name="price" id="price" value="${roomdto.price}">
	<input type="hidden" name="totalPrices" id="totalPrices" value="${totalPrice}">
	<input type="hidden" name="requestMessage" id="requestMessage" value="${requestMessage}">
	<input type="hidden" name="id" id="id" value="${memberinfo.id}">
	<input type="hidden" name="creditcardNo" id="creditcardNo" value="">
	</form>
	<script>
	
	const langCode = "ko";
	const loignUrl = window.location.origin+"/hub/"+langCode+"/login/loginForm.do?nextURL="+window.location.href+"?"+$('#form').serialize();
	const totalPrice = "229500.0";
	const isLogin = "false";
	const discount = "";
	const guestInfo = $("#guestInfo").html();
	const rsvn_nation_tmpr1 = "+82(대한민국)";
	const rsvn_nation_code = "KOR";
	let resvToggle = false;

	function setValue(e,target){
		$("#"+target).val($(e).attr('code'));
	}
	
	function nextFocus(e,length,id){
		$(e).val($(e).val().slice(0, 4));
		if($(e).val().length == length){
			$("#"+id).focus();
		}
	}
	function cardCheck(){
		if($("#cardNum1").val()==null||$("#cardNum1").val()=="")
			return true;
		if($("#cardNum2").val()==null||$("#cardNum1").val()=="")
			return true;
		if($("#cardNum3").val()==null||$("#cardNum3").val()=="")
			return true;
		if($("#cardNum4").val()==null||$("#cardNum4").val()=="")
			return true;
		
		return false;
	}
	
	//예약가자! 
	function letsgoresv(){
		if(cardCheck()){
			alert("유효한 카드번호를 입력하세요.");
			return ;
		}else{
			$("#creditcardNo").val($("#cardNum1").val()+"-"+$("#cardNum1").val()+"-"+$("#cardNum1").val()+"-"+$("#cardNum1").val());  //카드번호 저장
		}		
		document.getElementById("form11").submit();
	
		
	}

	
	</script>
		</div>

		
		<%@ include file="/WEB-INF/views/footer.jsp" %> 

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
	<!-- // 221228 메인 타이틀 모션 추가 -->
</body>
</html>