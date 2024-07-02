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
		<div id="container" class="container">
			<section class="sub-contents">
				<div class="sub-contents-wrap resv-contents">
					<!-- 컨텐츠 시작 -->
					<div class="resvStepWrap">
						<ul>
							<li>
								<span>Step1<!-- Step1 --></span>
								<a href="/hub/ko/resv/step1.do"><p>호텔/날짜/인원 선택<!-- 호텔/날짜/인원 선택 --></p></a>
							</li>
							<li >
								<span>Step2<!-- Step2 --></span>
								<a href="/hub/ko/resv/step2.do?adult=2&children=0&night=1&check_in_text=2024.07.23%20(%ED%99%94)&check_out_text=2024.07.24%20(%EC%88%98)&prm_seq_no=&pms_seq_no=231&SS_PMS_CODE=HLP1&SS_PMS_SEQ_NO=231&htNm=%EB%9D%BC%ED%95%9C%ED%98%B8%ED%85%94%20%ED%8F%AC%ED%95%AD&check_in=2024-07-23&check_out=2024-07-24&sysCode=LHPOH&room_code=&rate_code=&rate_seq_no=&room_seq_no=&hotelCode=16&rsvn_reqmatter=&memberCouponSeq=&memberBene=&step1Param=&step2Param=adult%3D2%26children%3D0%26night%3D1%26check_in_text%3D2024.07.23%2520(%25ED%2599%2594)%26check_out_text%3D2024.07.24%2520(%25EC%2588%2598)%26prm_seq_no%3D%26pms_seq_no%3D231%26SS_PMS_CODE%3DHLP1%26SS_PMS_SEQ_NO%3D231%26htNm%3D%25EB%259D%25BC%25ED%2595%259C%25ED%2598%25B8%25ED%2585%2594%2520%25ED%258F%25AC%25ED%2595%25AD%26check_in%3D2024-07-23%26check_out%3D2024-07-24%26sysCode%3DLHPOH%26room_code%3D%26rate_code%3D%26rate_seq_no%3D%26room_seq_no%3D%26hotelCode%3D16%26rsvn_reqmatter%3D%26memberCouponSeq%3D%26memberBene%3D%26step1Param%3D%26step2Param%3Dadult%253D2%2526children%253D0%2526night%253D1%2526check_in_text%253D2024.07.23%252520(%2525ED%252599%252594)%2526check_out_text%253D2024.07.24%252520(%2525EC%252588%252598)%2526check_in%253D2024-07-23%2526check_out%253D2024-07-24%2526prm_seq_no%253D%2526pms_seq_no%253D231%2526SS_PMS_CODE%253DHLP1%2526SS_PMS_SEQ_NO%253D231%2526Prm_code%253D%2526htNm%253D%2525EB%25259D%2525BC%2525ED%252595%25259C%2525ED%252598%2525B8%2525ED%252585%252594%252520%2525ED%25258F%2525AC%2525ED%252595%2525AD%2526sysCode%253DLHPOH%2526hotelCode%253D16%2526step1Param%253D%2526step2Param%253D%2526step3Param%253D%2526step4Param%253D%2526month%253D%2526year%253D%2526searchRoomCode%253D%2526searchRateCode%253D%2526step2Type%253D%26step3Param%3D%26step4Param%3D%26langCode%3Dko%26searchRoomCode%3D%26searchRateCode%3D%26step2Type%3Dpackage%26step2Sort%3D%26month%3D%26year%3D%26searchRoomDivisArr%3D&step3Param=&step4Param=&langCode=ko&searchRoomCode=&searchRateCode=&step2Type=room&step2Sort=&month=&year=&searchRoomDivisArr="><p>객실 선택<!-- 객실 선택 --></p></a>
							</li>
							<li class="on">
								<span>Step3<!-- Step3 --></span>
								<p>옵션 선택<!-- 옵션 선택 --></p>
							</li>
							<li>
								<span>Step4<!-- Step4 --></span>
								<p>예약정보 입력<!-- 예약정보 입력 --></p>
							</li>
						</ul>
					</div>
					<div class="resvbox-wrap">
						<div class="resvbox-wrap-inner">
							<div class="resvbox-wrap-left">
								
								<!-- 옵션, 스페셜 이벤트 옵션, 회원 제공 혜택(회원일때), 요청사항 -->
								<strong>스페셜 옵션<!-- 스페셜 옵션 --></strong>
								<div class="resvbox-wrap-list conseNights">
									
										<span class="conseNights-tit">07/23 (화)</span>
										<ul class="optionWrap last" >
											<!-- 여기 li 속성에 DB에서 불러온 값 for 문 돌리면 될듯-->
													<li>
														<div class="optionList">
															<span>성인 조식</span>
															<span>22,000</b>원<!-- 원 ~ --></span>
														</div>
														<div class="numPeople numPeopleTy02">
															<button type="button" onclick="minusBtn(this,'22000.0','성인 조식','option','0','0')" count_range="minus" class="ppBtn btnDown blank"></button>
															<input type="text" class="count 0opt0 optInput" rsvn_opt_seq_no="4909" option_name="성인 조식" rate_kind="BREA" sale_date="2024-07-23" sale_rate_net="22000.0" name="num1" value="0" readonly="readonly"/>
															<button type="button" onclick="plusBtn(this,'2','22000.0','성인 조식','option','0', '0')" count_range="plus" class="ppBtn btnUp"></button>
														</div>
													</li>
											
													<li>
														<div class="optionList">
															<span>소인 조식</span>
															<span>15,000</b>원<!-- 원 ~ --></span>
														</div>
														<div class="numPeople numPeopleTy02">
															<button type="button" onclick="minusBtn(this,'15000.0','소인 조식','option','1','0')" count_range="minus" class="ppBtn btnDown blank"></button>
															<input type="text" class="count 0opt1 optInput" rsvn_opt_seq_no="7691" option_name="소인 조식" rate_kind="BFCH" sale_date="2024-07-23" sale_rate_net="15000.0" name="num1" value="0" readonly="readonly"/>
															<button type="button" onclick="plusBtn(this,'2','15000.0','소인 조식','option','1', '0')" count_range="plus" class="ppBtn btnUp"></button>
														</div>
													</li>
											
										</ul>
									
								</div>
								<div class="conseNights-guide">
									<ul>
										<li>소인조식 적용 대상은 48개월 ~ 초등학생 이하입니다.<!-- 어린이 조식 추가 비용 적용 대상은 37개월 이상 만 12세 이하입니다. --></li>
										<li>사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.<!-- 사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다. --></li>
									</ul>
								</div>
								
								
								
								<div class="resvbox-wrap-list mb20">
									<strong>요청사항(선택)<!-- 요청사항(선택) --></strong>
									<div>
										<textarea name="requestOp01" id="requestOp" cols="30" rows="10" placeholder="기타 정보 및 의견이 있으신 경우 내용을 입력해 주세요.&#13;&#10;최대 2,000byte 까지 입력이 가능합니다."></textarea> <!-- 기타 정보 및 의견이 있으신 경우 내용을 입력해 주세요.&#13;&#10;최대 2,000byte 까지 입력이 가능합니다. -->
									</div>
								</div>
								<p class="guideOp-txt">※ 일부 요청사항은 호텔 상황에 따라 부득이하게 반영되지 않을 수 있는 점, 양해 부탁드립니다.<!-- 일부 요청사항은 호텔 상황에 따라 부득이하게 반영되지 않을 수 있는 점, 양해 부탁드립니다. --></p>
							</div>
							<div class="resvbox-wrap-right">
								<div class="resvbox-wrap-right-inner">
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>호텔<!-- 호텔 --></span>
											<p>라한호텔 포항</p>
										</div>
										<div class="resvbox-option-right">
											<a href="${pageContext.request.contextPath}/resv/step1" title="재검색" class="btn-research">재검색<!-- 재검색 --></a>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>체크인 / 체크아웃<!-- 체크인 / 체크아웃 --></span>
											<p><span>2024.07.23 (화) - 2024.07.24 (수)</span><span> 1박<!-- 박 --></span></p>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>인원<!-- 인원 --></span>
											<p>성인<!-- 성인 --> 2 / 소인<!-- 소인 --> 0</p>
										</div>
									</div>
								</div>
								<div class="resvbox-wrap-right-inner last">
									<strong class="resvbox-option-tit">[5%할인] 홈페이지 예약 특별가 / 디럭스 더블</strong>
									<div class="resvbox-wrap-list ty-03">
										<div class="resvbox-wrap-list-inner">
											<div class="resvbox-option-left">
												<p>상품 / 객실<!-- 패키지/객실 --></p>
											</div>
											<div class="resvbox-option-right">
												<p>152,000</strong> 원<!-- 원 --></p>
											</div>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-03 conseNights-list" id="optionDiv" style="display: none;" >
										<span>스페셜 옵션<!-- 스페셜 옵션 --></span>
										
											<span class="conseNights-subtit" id="0dateSpan" style="display: none;">07/23 (화)</span>
											
												<div class="resvbox-wrap-list-inner" id="0optDiv0" style="display: none;">
													<div class="resvbox-option-left">
														<p>성인 조식 x <span id="0opt0count">0</span></p>
													</div>
													<div class="resvbox-option-right">
														<p><span id="0opt0price">0</span>원<!-- 원 ~ --></p>
													</div>
												</div>
											
												<div class="resvbox-wrap-list-inner" id="0optDiv1" style="display: none;">
													<div class="resvbox-option-left">
														<p>소인 조식 x <span id="0opt1count">0</span></p>
													</div>
													<div class="resvbox-option-right">
														<p><span id="0opt1price">0</span>원<!-- 원 ~ --></p>
													</div>
												</div>
											
										
									</div>
									<div class="resvbox-wrap-list ty-03" id="spclOptionDiv" style="display: none;">
										<span>기간한정 옵션<!-- 기간한정 옵션 --></span>
										
									</div>
									
								</div>
								<!-- 회원가입 바로가기 안내 영역 // 비회원일 때 -->
								
								<div class="resvbox-wrap-inner grey-bg">
									<p>
										지금 바로, 클럽라한에 가입하세요!<br/><br/>본 상품을 회원 가입 후 이용하시면 <br/><b>현금처럼 사용가능한 포인트<!-- 지금 바로, 클럽라한 가입 후 포인트 적립과 할인 혜택을 받으세요.<br/>본 상품을 회원 가입 후 이용하시면 <b>--></b>와 회원 혜택이 제공됩니다.<!-- </b>가 적립됩니다. -->
										
									</p>
									<a href="${pageContext.request.contextPath}/join/step1" title="회원가입 바로가기" class="btn-more link-txt">회원가입 바로가기<!-- 회원가입 바로가기 --></a>
								</div>
								

								<div class="resvbox-charge">
									<span>VAT 포함<!-- VAT 포함 --></span>
									<div class="resvbox-charge-table">
										<strong>최종 결제 예정 금액<!-- 최종 결제 예정 금액 --></strong>
										<span><strong id="totalPrice">152,000</strong> 원<!-- 원 --></span>
									</div>
									
									
										<div class="btn-inline-box"><!-- 기본 및 비회원일 때 -->
											<a href="#none" title="비회원예약" onclick="next()" class="btn-memResv btn-gold-line">비회원예약<!-- 비회원예약 --></a>
											<a href="#none" title="회원예약" onclick="loginPage()" class="btn-memResv btn-gold">회원예약<!-- 회원예약 --></a>
										</div>
									
								</div>
							</div>
						</div>
					</div>
					<!-- 컨텐츠 끝 -->
				</div>
			</section>
		</div>

		<form id="form" method="post" action="/hub/ko/resv/step3.do">
			


	<input type="hidden" name="adult" id="adult" value="2">
	<input type="hidden" name="children" id="children" value="0">
	<input type="hidden" name="night" id="night" value="1">
	<input type="hidden" name="check_in_text" id="check_in_text" value="2024.07.23 (화)">
	<input type="hidden" name="check_out_text" id="check_out_text" value="2024.07.24 (수)">
	<input type="hidden" name="prm_seq_no" id="prm_seq_no" value="">
	<input type="hidden" name="pms_seq_no" id="pms_seq_no" value="231">
	<input type="hidden" name="SS_PMS_CODE" id="SS_PMS_CODE" value="HLP1">
	<input type="hidden" name="SS_PMS_SEQ_NO" id="SS_PMS_SEQ_NO" value="231">
	<input type="hidden" name="htNm" id="htNm" value="라한호텔 포항">
	<input type="hidden" name="check_in" id="check_in" value="2024-07-23">
	<input type="hidden" name="check_out" id="check_out" value="2024-07-24">
	<input type="hidden" name="sysCode" id="sysCode" value="LHPOH">
	<input type="hidden" name="room_code" id="room_code" value="DDB">
	<input type="hidden" name="rate_code" id="rate_code" value="RO5DC">
	<input type="hidden" name="rate_seq_no" id="rate_seq_no" value="2585">
	<input type="hidden" name="room_seq_no" id="room_seq_no" value="2414">
	<input type="hidden" name="hotelCode" id="hotelCode" value="16">
	<input type="hidden" name="rsvn_reqmatter" id="rsvn_reqmatter" value="">
	<input type="hidden" name="memberCouponSeq" id="memberCouponSeq" value="">
	<input type="hidden" name="memberBene" id="memberBene" value="">
	<input type="hidden" name="step1Param" id="step1Param" value="">
	<input type="hidden" name="step2Param" id="step2Param" value="adult=2&children=0&night=1&check_in_text=2024.07.23%20(%ED%99%94)&check_out_text=2024.07.24%20(%EC%88%98)&prm_seq_no=&pms_seq_no=231&SS_PMS_CODE=HLP1&SS_PMS_SEQ_NO=231&htNm=%EB%9D%BC%ED%95%9C%ED%98%B8%ED%85%94%20%ED%8F%AC%ED%95%AD&check_in=2024-07-23&check_out=2024-07-24&sysCode=LHPOH&room_code=&rate_code=&rate_seq_no=&room_seq_no=&hotelCode=16&rsvn_reqmatter=&memberCouponSeq=&memberBene=&step1Param=&step2Param=adult%3D2%26children%3D0%26night%3D1%26check_in_text%3D2024.07.23%2520(%25ED%2599%2594)%26check_out_text%3D2024.07.24%2520(%25EC%2588%2598)%26prm_seq_no%3D%26pms_seq_no%3D231%26SS_PMS_CODE%3DHLP1%26SS_PMS_SEQ_NO%3D231%26htNm%3D%25EB%259D%25BC%25ED%2595%259C%25ED%2598%25B8%25ED%2585%2594%2520%25ED%258F%25AC%25ED%2595%25AD%26check_in%3D2024-07-23%26check_out%3D2024-07-24%26sysCode%3DLHPOH%26room_code%3D%26rate_code%3D%26rate_seq_no%3D%26room_seq_no%3D%26hotelCode%3D16%26rsvn_reqmatter%3D%26memberCouponSeq%3D%26memberBene%3D%26step1Param%3D%26step2Param%3Dadult%253D2%2526children%253D0%2526night%253D1%2526check_in_text%253D2024.07.23%252520(%2525ED%252599%252594)%2526check_out_text%253D2024.07.24%252520(%2525EC%252588%252598)%2526check_in%253D2024-07-23%2526check_out%253D2024-07-24%2526prm_seq_no%253D%2526pms_seq_no%253D231%2526SS_PMS_CODE%253DHLP1%2526SS_PMS_SEQ_NO%253D231%2526Prm_code%253D%2526htNm%253D%2525EB%25259D%2525BC%2525ED%252595%25259C%2525ED%252598%2525B8%2525ED%252585%252594%252520%2525ED%25258F%2525AC%2525ED%252595%2525AD%2526sysCode%253DLHPOH%2526hotelCode%253D16%2526step1Param%253D%2526step2Param%253D%2526step3Param%253D%2526step4Param%253D%2526month%253D%2526year%253D%2526searchRoomCode%253D%2526searchRateCode%253D%2526step2Type%253D%26step3Param%3D%26step4Param%3D%26langCode%3Dko%26searchRoomCode%3D%26searchRateCode%3D%26step2Type%3Dpackage%26step2Sort%3D%26month%3D%26year%3D%26searchRoomDivisArr%3D&step3Param=&step4Param=&langCode=ko&searchRoomCode=&searchRateCode=&step2Type=room&step2Sort=&month=&year=&searchRoomDivisArr=">
	<input type="hidden" name="step3Param" id="step3Param" value="">
	<input type="hidden" name="step4Param" id="step4Param" value="">
	<input type="hidden" name="langCode" id="langCode" value="ko">
	<input type="hidden" name="searchRoomCode" id="searchRoomCode" value="">
	<input type="hidden" name="searchRateCode" id="searchRateCode" value="">





			<input type="hidden" name="spclHtml" id="spclHtml">
			<input type="hidden" name="optHtml" id="optHtml">

		</form>
	</div>

	<script>
	const langCode = "ko";
	const loignUrl = window.location.origin+"/hub/"+langCode+"/login/loginForm.do?nextURL="+window.location.href+"?"+$('#form').serialize();
	const pckrmPriceOnly = "152000.0";
	let pckrmPrice = "152000.0";
	let initIdxOpt = 0; //옵션인풋 생성 인덱스
	let optPrice = 0; // 옵션값
	let couponPrice = 0;//쿠폰값
	let optAsync = false;

	$(document).ready(function(){
		const step3Param = $("#form").serialize();
		$("#step3Param").val(step3Param);
	});

	//회원예약시
	function loginPage(){
		location.href = loignUrl;
	}

	//+버튼
	function plusBtn(e,max,price,name,type,optIdx,dateIdx){
		let value = Number($(e).prev().val());
		if(value == Number(max)){
			return;
		}else{
			$(e).prev().val(value+1);
		}
		if(type=="option"){
			// 옵션값 확인후 최종 결제창 표시
			let allcnt = 0;
			$("[class*='optInput']").each(function(index, item){
				allcnt =  Number(allcnt)+ Number($(item).val());
			});
			if(0 < allcnt){
				$("#optionDiv").show();
			}

			let optcnt = 0;
			$("[class*='"+dateIdx+"opt']").each(function(index, item){
				optcnt =  Number(optcnt)+ Number($(item).val());
			});
			if(0 < optcnt){
				$("#"+dateIdx+"dateSpan").show();
			}

			value = Number($(e).prev().val());
			if(0 < value){
				$("#"+dateIdx+"opt"+optIdx+"count").text(value);
				$("#"+dateIdx+"opt"+optIdx+"price").text((value*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
				$("#"+dateIdx+"optDiv"+optIdx).show();
			}
			pckrmPrice = Number(pckrmPrice)+Number(price);
			setTotalPrice();
		}else{
			// 옵션값 확인후 최종 결제창 표시
			let allcnt = 0;
			$("[class*='spclInput']").each(function(index, item){
				allcnt =  Number(allcnt)+ Number($(item).val());
			});
			if(0 < allcnt){
				$("#spclOptionDiv").show();
			}

			value = Number($(e).prev().val());
			if(0 < value){
				$("#spcl"+optIdx+"count").text(value);
				$("#spcl"+optIdx+"price").text((value*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
				$("#spclDiv"+optIdx).show();
			}
			pckrmPrice = Number(pckrmPrice)+Number(price);
			setTotalPrice();
		}
	}
	//-버튼
	function minusBtn(e,price,name,type,optIdx,dateIdx){
		let value = Number($(e).next().val());
		if(value == 0){
			return;
		}else{
			$(e).next().val(value-1);
		}
		if(type=="option"){
			// 옵션값 확인후 최종 결제창 표시
			let allcnt = 0;
			$("[class*='optInput']").each(function(index, item){
				allcnt =  Number(allcnt)+ Number($(item).val());
			});
			if(0 == allcnt){
				$("#optionDiv").hide();
			}

			let optcnt = 0;
			$("[class*='spcl"+optIdx+"']").each(function(index, item){
				optcnt =  Number(optcnt)+ Number($(item).val());
			});
			if(0 == optcnt){
				$("#"+dateIdx+"dateSpan").hide();

			}

			value = Number($(e).next().val());
			$("#"+dateIdx+"opt"+optIdx+"count").text(value);
			$("#"+dateIdx+"opt"+optIdx+"price").text((value*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			if(0 == value){
				$("#"+dateIdx+"optDiv"+optIdx).hide();
			}else{
				$("#"+dateIdx+"optDiv"+optIdx).show();
			}
			pckrmPrice = Number(pckrmPrice)-Number(price);
			setTotalPrice();
		}else{
			// 옵션값 확인후 최종 결제창 표시
			let allcnt = 0;
			$("[class*='spclInput']").each(function(index, item){
				allcnt =  Number(allcnt)+ Number($(item).val());
			});
			if(0 == allcnt){
				$("#spclOptionDiv").hide();
			}

			value = Number($(e).next().val());
			$("#spcl"+optIdx+"count").text(value);
			$("#spcl"+optIdx+"price").text((value*price).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
			if(0 == value){
				$("#spclDiv"+optIdx).hide();
			}else{
				$("#spclDiv"+optIdx).show();
			}
			pckrmPrice = Number(pckrmPrice)-Number(price);
			setTotalPrice();
		}
	}

	//옵션 인풋 생성
	function setOptionInput(item){
		const cnt = $(item).val();
		if(0 < cnt ){
			const obj ={
				sale_date : $(item).attr("sale_date"),
				rsvn_opt_qty : cnt,
				rsvn_opt_seq_no : $(item).attr("rsvn_opt_seq_no"),
				option_name : $(item).attr("option_name"),
			}

			for(const [key , value] of Object.entries(obj)){
				const form = document.getElementById("form");
				const input = document.createElement('input');
				input.setAttribute("type", "hidden");
				input.setAttribute("name", "dailyList["+initIdxOpt+"]."+key);
				input.setAttribute("value", value);
				form.appendChild(input);
			}
			initIdxOpt++;
		}

	}



	//쿠폰적용 (쿠폰번호,타입,할인가격,할인율)
	function selCoupon(seq,type,price,rate,text,enumCode){
		if(type==""){
			couponPrice=0;
			setTotalPrice();
			$("#memberCouponSeq").val("");
			$("#couponUpgDiv").addClass("none");
			$("#coponPriceDiv").addClass("none");
			$("#couponTextDiv").addClass("none");
		}else if(type=="DISCOUNT_AMOUNT" && enumCode =="ROOM"){
			//가격할인
			couponPrice = Number(price);
			setTotalPrice();
			$("#memberCouponSeq").val(seq);
			$("#coponPriceDiv").removeClass("none");
			$("#couponUpgDiv").addClass("none");
			$("#couponTextDiv").addClass("none");
			$("#coponPrice").text("- "+couponPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		}else if(type=="DISCOUNT_RATE" && enumCode =="ROOM"){
			//할인율
			couponPrice = Number(pckrmPriceOnly*rate/100);
			setTotalPrice();
			$("#memberCouponSeq").val(seq);
			$("#coponPriceDiv").removeClass("none");
			$("#couponUpgDiv").addClass("none");
			$("#couponTextDiv").addClass("none");
			$("#coponPrice").text("- "+couponPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		}else if(type=="ROOM_PASS"){
			//숙박권
			couponPrice = Number(pckrmPriceOnly);
			setTotalPrice();
			$("#memberCouponSeq").val(seq);
			$("#coponPriceDiv").removeClass("none");
			$("#couponUpgDiv").addClass("none");
			$("#couponTextDiv").addClass("none");
			$("#coponPrice").text("- "+couponPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
		}else if(type=="ROOM_VIEW_UPGRADE"){
			//뷰업그레이드
			upgCouponApply(type,seq);
		}else if(type=="ROOM_TYPE_UPGRADE"){
			//객실업그레이드
			upgCouponApply(type,seq);
		}else{
			couponPrice = 0;
			setTotalPrice();
			$("#memberCouponSeq").val(seq);
			$("#couponUpgDiv").addClass("none");
			$("#coponPriceDiv").addClass("none");
			$("#couponTextDiv").removeClass("none");
			$("#couponText").text(text);
		}
	}


	//쿠폰적용(객실,뷰)
	function upgCouponApply(type,seq){
		//쿠폰 사용 시 예약 가능 객실 조회
		jQuery.ajax({
            type : "POST",
            url : "/api/resv/urpCouponApply.json",
            dataType : "json",
            data : $("#form").serialize()+"&type="+type,
            async : true,
            global : false,
            success : function(data){
            	if (data.re == "success") {
        			$("#coponPriceDiv").addClass("none");
        			$("#couponUpgDiv").removeClass("none");
        			$("#couponTextDiv").addClass("none");
        			$("#couponUpg").text(data.roomNm);
        			$("#memberCouponSeq").val(seq);
        			couponPrice = 0;
        			setTotalPrice();
                }else if(data.re == "empty"){
                	alert("업그레이드 가능한 객실이 없습니다.")
                	couponPrice=0;
        			setTotalPrice();
        			$("#memberCouponSeq").val("");
        			$("#couponUpgDiv").addClass("none");
        			$("#coponPriceDiv").addClass("none");
        			$("#couponTextDiv").addClass("none");
                }
            },
            error:function(r, s, e){
                alert("API 통신중 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
                return false;
            },
			beforeSend: function() {
		    	showLoading();
		    },
		    complete: function() {
				hideLoading();
		    },
		});
	}

	//총 가격 표시
	function setTotalPrice(){
		var totalPrice =  Number(pckrmPrice)-Number(couponPrice);
		let totalPriceText = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','); //소수점버림, 3자리수 콤마 찍어주기
		$("#totalPrice").text(totalPriceText);
	}

	function addReqmatter(e,msg){
		if($(e).prop("checked")){
			$("#memBeneDiv").show();
			$("#memBeneText").text(msg);
			$("#memberBene").val($(e).val());
		}else{
			$("#memBeneDiv").hide();
			$("#memBeneText").text('');
			$("#memberBene").val("");
		}
	}

	function ckcoupon(e){
		if($(e).prop("checked")){
			$(".couponText").show();
			$("#couponDiv").removeClass("disabled");
		}else{
			couponPrice=0;
			setTotalPrice();
			$("#couponDiv").addClass("disabled");
			$(".couponText").hide();
			$(".couponText.active").text("쿠폰을 선택해주세요.");<!-- 쿠폰을 선택해주세요. -->
			$("#memberCouponSeq").val("");
			$("#couponUpgDiv").addClass("none");
			$("#coponPriceDiv").addClass("none");
			$("#couponTextDiv").removeClass("none");
		}
	}

	//스텝4
	function next(){
		if(optAsync == false){
			optAsync = true;
			//스페셜옵션List 넘길값 세팅
			$("[class*='spclInput']").each(function(index, item){
				setOptionInput(item);
			});
			$("#spclHtml").val($("#spclOptionDiv")[0].outerHTML);
			//옵션List 넘길값 세팅
			$("[class*='optInput']").each(function(index, item){
				setOptionInput(item);
			});
			$("#optHtml").val($("#optionDiv")[0].outerHTML);
			//쿠폰값 세팅

			//요청사항
			$("#rsvn_reqmatter").val($("#requestOp").val());

			const step4Param = $("#form").serialize();
			$("#step4Param").val(step4Param);

			$("#form").attr("action","/hub/ko/resv/step4.do");
			showLoading();
			$("#form").submit();
		}
	}
	</script>
		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>