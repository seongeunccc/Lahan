<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한  : 예약하기</title>

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
	<script>
	function goToResvStep3(roomName, price){
	   
	    $('#room_name').val(roomName);
	    $('#price').val(price);
		document.getElementById('form').submit();
	}


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
	
			<div id="container" class="container">
			<section class="sub-contents">
				<div class="sub-contents-wrap resv-contents">
					<!-- 컨텐츠 시작 -->
					
					<c:set var="dto" value="${dto}"/>
					<c:set var="roomList" value="${roomList}"/>
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
									<p id="htNmText">${dto.hotel}</p>
								</div>
								<!-- 2. 날짜 -->
								<div class="m-resv-list step2 revArea">
									<span class="selected-badge">체크인 / 체크아웃<!-- 체크인 / 체크아웃 --></span>
									
									<div class="chkInout">
										<div class="resv-step2-box">
											<div>
												<div class="resv-selected-txt checkDate" id="ChekinDate">
													<span id="chkInDate">${dto.check_in} </span>
													<span class="mini-date" id="ckinDay">${resv.check_In_Day}</span>
												</div>
											</div>
											<span class="code-text">−</span>
											<div>
												<div class="resv-selected-txt checkDate" id="ChekoutDate">
													<span id="chkOutDate"> ${dto.check_out} </span>
													<span class="mini-date" id="ckoutDay">${dto.check_Out_Day}</span>
												</div>
											</div>
											<p class="night-txt"><span id="nightText">${dto.night}</span>박<!-- 박 --></p>
										</div>
										
									</div>
								</div>
								<!-- 3. 인원 -->
								<div class="m-resv-list step3">
									<span class="selected-badge first">성인<!-- 성인 --></span>
									<div class="numPeople">
										<button type="button" count_range="minus" class="ppBtn btnDown" onclick="minus('num1',this,1)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
										<input type="text" class="count" name="num1" id="num1" value="${dto.adult}" readonly="readonly">
										<button type="button" count_range="plus" class="ppBtn btnUp" onclick="plus('num1',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
									</div>
									<span class="selected-badge last">소인<!-- 소인 --></span>
									<div class="numPeople">
										<button type="button" count_range="minus" class="ppBtn btnDown" onclick="minus('num2',this,0)"></button><!-- 더이상 줄지 않을때 blank 클래스추가해주세요 -->
										<input type="text" class="count" name="num2" id="num2" value="${dto.children}" readonly="readonly">
										<button type="button" count_range="plus" class="ppBtn btnUp" onclick="plus('num2',this)"></button><!-- 더이상 눌리지 않을때 blank 클래스추가해주세요 -->
									</div>
								</div>
							</div>
						</div>
						<!-- 4. 재검색/ 예약 첫 페이지로 이동합니다 -->
						<a href="${pageContext.request.contextPath}/resv/step1" title="재검색" class="m-btn-resv btn-navy">재검색<!-- 재검색 --></a>
					</div>

					<!-- 패키지, 객실, 회원전용 탭 메뉴 -->
					<div class="tab-contents">
						<ul class="tab-contents-list">
							<li  onclick="step2Page('room')"><a href="#none" title="객실">객실<!-- 객실 --></a></li>
						</ul>
						
						<div class="club-joinbox">
							<span>CLUB LAHAN</span>
							<p>지금 바로 무료멤버십 가입하고, 포인트 적립 및 할인혜택을 받으세요!<!-- 지금 바로 무료멤버십 가입하고, 포인트 적립 및 할인혜택을 받으세요! --></p>
							<a href="${pageContext.request.contextPath}/join/step1" title="멤버십 가입하기">멤버십 가입하기<!-- 멤버십 가입하기 --></a>
						</div>
						
						
					<div class="recommond-contents row-reverse-list">

					</div>

					<!-- ####### 패키지 ####### -->
					
						
						<div class="tab-contents-info2">
							<ul>
								<c:forEach var="dto" items="${roomList}">
									<li class="roomLi" room-divison="NOMAL">
										<div class="content-info-show">
											<div class="contents-info-left">
												<!--  이미지 들어오는 부분 -->
												<img src="${dto.url} " alt=""/>
											</div>
											<div class="contents-info-right">
												<div class="info-bottom-inner ty-02">
													<p class="cont-tit">${dto.room_name}</p>
													<p class="cont-more">
														<a href="#none" onclick="packageInfo(this,'DDB')" title="자세히보기" class="link-txt">자세히보기<!-- 자세히보기 --></a>
													</p><!-- 패키지설명 popup 불러오기 -->
													
													<div class="cont-room-type">
													<dl>		
														<dt>투숙인원</dt>	
														<dd>${dto.room_min}인 (최대 ${dto.room_max}인)</dd>	
													</dl>		
													<dl>		
														<dt>침대타입</dt>	
														<dd>${dto.bed_type}</dd>	
													</dl>		
													<dl>		
														<dt>면적</dt>	
														<dd>	
															${dto.room_size}
														</dd>	
													</dl>		

												</div>
														
												<p class="cont-price"><span>1박(VAT)포함<!-- 1박(VAT 포함) --></span><b>${dto.price}</b>원 ~<!-- 원 ~ --></p>
												<button type="button" onclick="goToResvStep3('${dto.room_name}','${dto.price}')" class="btn-select btn-gold"><span>예약하기<!-- 객실 선택 --></span></button>
												</div>
											</div>
										</div>
										<div class="content-info-hide" id="">
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>


					<!-- 컨텐츠 끝 -->
				</div>
			</section>
	<form id="form" method="post" action="./test">
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
	<input type="hidden" name="price" id="price" value="">
	
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