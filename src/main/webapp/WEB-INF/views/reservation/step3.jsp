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
<script>
function discount(){	
	var currentPrice = $("#totalPrice").text()
	var discountRate = parseFloat($("#discountRate").text())/100;;
	 var newPrice = currentPrice * (1-discountRate);
	  $("#totalPrice").text(newPrice.toFixed(0) + " 원");
}

function goToNextPage(){
	$("#totalPrices").val($("#totalPrice").text());
	$("#requestMessage").val( $("#requestOp").val());
	document.getElementById('form').submit();
	
}

window.onload = function() {
	if( $("#discountRate").text()!=null && $("#discountRate").text()!="")
	discount();
	};
</script>
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
			
<c:set var="dto" value="${dto}"/>
<c:set var="roomList" value="${roomList}"/>
	

	<link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/resv.css">
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
			<!-- 					<strong>스페셜 옵션스페셜 옵션</strong>
								<div class="resvbox-wrap-list conseNights">
									
										<span class="conseNights-tit"> 07/23 (화)</span>
										<ul class="optionWrap last" >
											여기 li 속성에 DB에서 불러온 값 for 문 돌리면 될듯
													<li>
														<div class="optionList">
															<span>성인 조식</span>
															<span>22,000</b>원원 ~</span>
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
															<span>15,000</b>원원 ~</span>
														</div>
														<div class="numPeople numPeopleTy02">
															<button type="button" onclick="minusBtn(this,'15000.0','소인 조식','option','1','0')" count_range="minus" class="ppBtn btnDown blank"></button>
															<input type="text" class="count 0opt1 optInput" rsvn_opt_seq_no="7691" option_name="소인 조식" rate_kind="BFCH" sale_date="2024-07-23" sale_rate_net="15000.0" name="num1" value="0" readonly="readonly"/>
															<button type="button" onclick="plusBtn(this,'2','15000.0','소인 조식','option','1', '0')" count_range="plus" class="ppBtn btnUp"></button>
														</div>
													</li>
											
										</ul>
									
								</div> -->
							<!-- 	<div class="conseNights-guide">
									<ul>
										<li>소인조식 적용 대상은 48개월 ~ 초등학생 이하입니다.어린이 조식 추가 비용 적용 대상은 37개월 이상 만 12세 이하입니다.</li>
										<li>사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.</li>
									</ul>
								</div> -->
								
								
								
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
											<p><span>${dto.check_in_text} - ${dto.check_out_text}</span><span> ${dto.night}박<!-- 박 --></span></p>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>인원<!-- 인원 --></span>
											<p>성인<!-- 성인 --> ${dto.adult} / 소인<!-- 소인 --> ${dto.children}</p>
										</div>
									</div>
									<c:if test="${not empty proCodeDto}">
									<div class="resvbox-wrap-list ty-02">
										<div class="resvbox-option-left">
											<span>프로모션</span>
											<p>프로모션 코드<!-- 성인 --> ${proCodeDto.procode} / 할인율<!-- 소인 --></p><p id="discountRate">${proCodeDto.rate*100}%</p>
										</div>
									</div>
									<script>discount();</script>
									</c:if>
								</div>
								<div class="resvbox-wrap-right-inner last">
									<strong class="resvbox-option-tit">${roomdto.room_name}</strong>
									<div class="resvbox-wrap-list ty-03">
										<div class="resvbox-wrap-list-inner">
											<div class="resvbox-option-left">
												<p>상품 / 객실<!-- 패키지/객실 --></p>
											</div>
											<div class="resvbox-option-right">
												<p>${roomdto.price}</strong> 원<!-- 원 --></p>
											</div>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-03 conseNights-list" id="optionDiv" style="display: none;" >
										<span>스페셜 옵션<!-- 스페셜 옵션 --></span>
										
											<span class="conseNights-subtit" id="0dateSpan" style="display: none;"> 07/23 (화)</span>
											
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
								</div>
								<!-- 회원가입 바로가기 안내 영역 // 비회원일 때 -->
								
								<div class="resvbox-wrap-inner grey-bg">
									<p>
										지금 바로, 클럽라한에 가입하세요!<br/><br/>본 상품을 회원 가입 후 이용하시면 <br/><b>현금처럼 사용가능한 포인트<!-- 지금 바로, 클럽라한 가입 후 포인트 적립과 할인 혜택을 받으세요.<br/>본 상품을 회원 가입 후 이용하시면 <b>--></b>와 회원 혜택이 제공됩니다.<!-- </b>가 적립됩니다. -->
										
									</p>
									<a href="${pageContext.request.contextPath}/join/step1" title="회원가입 바로가기" class="btn-more link-txt">회원가입 바로가기<!-- 회원가입 바로가기 --></a>
								</div>
								
	<!-- 								<div class="resvbox-wrap-list ty-03" style="display: none;" id="memBeneDiv">회원일 때 노출 // non e
										<span>클럽라한 회원혜택클럽라한 회원혜택</span>
										<div class="resvbox-wrap-list-inner" id="memBeneDivContents">
											<div class="resvbox-option-left">
												<p id="memBeneText"></p>
											</div>
										</div>
									</div>
									<div class="resvbox-wrap-list ty-03 couponBox">회원일 때, 쿠폰 영역 // 비회원일 때 none 추가
										<div class="resvbox-option-checkbox">
											<span>클럽라한 전용쿠폰클럽라한 전용 쿠폰</span>
											<span class="frm frm-chk type02">
												<input type="checkbox" id="coupon01" onclick="ckcoupon(this)"><label for="coupon01">쿠폰사용쿠폰사용</label>
											</span>
										</div>
										<div class="coupon-selectbox">
											<div class="coupon-selectbox-wrap select-wrap disabled" id="couponDiv">사용가능한 쿠폰이 없을 때 class disabled 추가
												<div class="select-coupon selected">
													
														<span class="selected-value">사용가능한 쿠폰이 없습니다.사용가능한 쿠폰이 없습니다.</span>
													
													
												</div>
												<ul class="select-box">
													
														<li class="option">사용가능한 쿠폰이 없습니다.사용가능한 쿠폰이 없습니다.</li>
													
													
												</ul>
											</div>
										</div> -->
										
										
										
										
								<div class="resvbox-charge">
									<span>VAT 포함<!-- VAT 포함 --></span>
									<div class="resvbox-charge-table">
										<strong>최종 결제 예정 금액<!-- 최종 결제 예정 금액 --></strong>
										<span><strong id="totalPrice">${roomdto.price}</strong> 원<!-- 원 --></span>
									</div>
									
									
										<div class="btn-inline-box"><!-- 기본 및 비회원일 때 -->
											<a href="#none" title="비회원예약" onclick="goToNextPage()" class="btn-memResv btn-gold-line">비회원예약<!-- 비회원예약 --></a>
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

<form id="form" method="post" action="${pageContext.request.contextPath}/resv/step4" >
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
	<input type="hidden" name="room_name" id="room_name" value="">
	<input type="hidden" name="price" id="price" value="${roomdto.price}">
	<input type="hidden" name="totalPrices" id="totalPrices" value="">
	<input type="hidden" name="requestMessage" id="requestMessage" value="">
	
	</form>
	</div>

	<script>
	const langCode = "ko";
	const loignUrl = window.location.origin+"/hub/"+langCode+"/login/loginForm.do?nextURL="+window.location.href+"?"+$('#form').serialize();
	const pckrmPriceOnly = $(#price).val();
	let pckrmPrice = $(#price).val();
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


	</script>
	
		</div>
<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>