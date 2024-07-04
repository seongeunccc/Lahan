<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한 : 예약하기</title>

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
<script type="text/javascript">

var today = new Date();
const dayNames = ['(일)', '(월)', '(화)', '(수)', '(목)', '(금)', '(토)'];

function setCalendar(){
	var setNextDate = today.toISOString().substring(0, 10);
	var nextDay = new Date(today);
	nextDay.setDate(today.getDate()+1);	
	document.getElementById('checkInDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('checkInDate').min = new Date().toISOString().substring(0, 10);
	document.getElementById('checkOutDate').value = nextDay.toISOString().substring(0, 10);	
	const day = dayNames[today.getDay()];
	console.log("체크인하는 날의 요일~ : "+day);
	document.getElementById('checkInDay').innerHTML = '<span >'+ day +'</span>';
	document.getElementById('checkOutDay').innerHTML = '<span >'+dayNames[nextDay.getDay()] +'</span>';
	calculateDateDifference();
}

function setCheckOutDate() {
    var checkInDateValue = document.getElementById('checkInDate').value;
    document.getElementById('checkInDay').innerHTML = '<span >'+ dayNames[new Date(checkInDateValue).getDay()] +'</span>';
    var checkInDate = new Date(checkInDateValue);
    var nextDay = new Date(checkInDate);
    nextDay.setDate(checkInDate.getDate() + 1);
	console.log("체크아웃 : "+nextDay.toISOString().substring(0, 10));
    
    document.getElementById('checkOutDate').min = nextDay.toISOString().substring(0, 10);
    if (new Date(document.getElementById('checkOutDate').value) <= nextDay) {
        document.getElementById('checkOutDate').value = nextDay.toISOString().substring(0, 10);
        document.getElementById('checkOutDay').innerHTML = '<span >'+dayNames[nextDay.getDay()] +'</span>';
    }
    calculateDateDifference();
};

function calculateDateDifference() {
	//숙박일수 계산
	console.log('calculateDateDifference()')
    var checkInDateValue = document.getElementById('checkInDate').value;
    var checkOutDateValue = document.getElementById('checkOutDate').value;

    if (checkInDateValue && checkOutDateValue) {
        var checkInDate = new Date(checkInDateValue);
        var checkOutDate = new Date(checkOutDateValue);

        var timeDifference = checkOutDate - checkInDate;
        var dayDifference = timeDifference / (1000 * 3600 * 24); /* 1일 계산해서 나눔 */

        console.log("체크인 날짜: " + checkInDateValue);
        console.log("체크아웃 날짜: " + checkOutDateValue);
        console.log("차이 일수: " + dayDifference + "일");

        // 차이 일수를 UI에 표시하는 예시
        document.getElementById('nightText').innerText = dayDifference ;
    }
};

//요일 세팅하기(date는 8자리 날짜. day는 값을 바꿀 곳의 id)
function setDay(date, day){
	var checkDay = new Date(document.getElementById(date).value);
	console.log(checkDay);
	document.getElementById(day).innerHTML = '<span>'+dayNames[checkDay.getDay()] +'</span>';
}

//처음에 실행할 것.
window.onload = function() {
setCalendar();
removeOffClass();
};

//프로모션 코드 유효성 검사 / 비동기 fetch
function setPromo() {
  	 var promoCode = $("#prtmCode").val();
  	 console.log(promoCode)
  	 console.log(typeof(promoCode))
  	 	fetch('/lahan/searchProcode?promoCode=' + encodeURIComponent(promoCode))
	    .then(response => {
	        if (!response.ok) {
	            throw new Error('Network response was not ok');
	        }
	        return response.json();
	    })
	    .then(result => {
	        console.log(result);
	        // 여기서 가져온 데이터를 처리할 수 있습니다.
	        if(result.procode!=null){
	        	alert("유효한 프로모션 코드입니다.");
	        	$("#Prm_code").val($("#prtmCode").val());
	        }else{
	        	alert("유효하지 않은 프로모션 코드입니다.");
	        }
	    })
	    .catch(error => {
	        console.error('Fetch Error:', error);
	        // 에러 처리 로직을 추가할 수 있습니다.
	    });
}
    
//호텔 체크 여부 확인
function ckSelectHotel(){
	if($("#hotel").val()!= null){
		return false;
	}else{
		alert("호텔을 선택해주세요.");
		return true;
	}
}


//예약하기 누르면 값 넘기기~
function resvStart1(){
	if(ckSelectHotel())
		return;
	
	document.getElementById('adult').value = document.getElementById('num1').value;
	document.getElementById('children').value = document.getElementById('num2').value;
	$('#night').val($('#nightText').text());
 	$("#check_in_text").val($("#checkInDate").val() +" "+$("#checkInDay").text()); // 체크인 텍스트 
	$("#check_out_text").val($("#checkOutDate").val() +" "+$("#checkOutDay").text()); // 체크아웃 텍스트
    $("#check_in").val($("#checkInDate").val().replace(/\./gi, "-").trim()); // 체크인 날짜
    $("#check_out").val($("#checkOutDate").val().replace(/\./gi, "-").trim()); // 체크아웃 날짜
    $("#check_In_Day").val($("#checkInDay").text());
    $("#check_Out_Day").val($("#checkOutDay").text());
    
    
	$("#htNm").val($("#htNmText").text());
    
	document.getElementById('reservation_Main').submit();
};




</script>
<style>
.calenderSet{
background-color : none;
font-family : Gotham-Medium, Yoon730 ;
margin: 0;
border: none;
color: black; 
font-size: 14px;
width: 170px;
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
	<script src="https://www.lahanhotels.com/static/pc/js/resv.js"></script>
	<!-- js -->
	<div id="container" class="container">
		<section class="sub-contents">
			<div class="sub-contents-wrap resv-contents">
				<!-- 컨텐츠 시작 -->
				<div class="resvStepWrap">
					<ul>
						<li class="on">
							<span>Step1<!-- Step1 --></span>
							<p>호텔/날짜/인원 선택<!-- 호텔/날짜/인원 선택 --></p>
						</li>
						<li>
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
				<div class="resvbox-list">
					<!-- 4. 프로모션 코드 -->
						<div class="m-resv-list step4">
							<a href="#none" title="프로모션코드" class="btn-prcode">프로모션코드<!-- 프로모션코드 --></a>
							<div class="resv-step4-prcode close">
								<p class="prcode-guidetxt">&#8251; 기업체 코드 또는 프로모션 코드를 입력해주세요.<!-- 기업체 코드 또는 프로모션 코드를 입력해주세요. --></p>
								<button type="button" class="btn-prcode-close" onclick='$(".resv-step4-prcode").removeClass("open");'><span>닫기</span></button>
								<div class="prcode-box">
									<input type="text" id="prtmCode" class="prcode-input" maxlength="8" autocomplete="off" placeholder="프로모션 코드" /><!-- 프로모션 코드 8자리 -->
									<a href="#" onclick="setPromo()" title="확인" class="btn btn-black-line btn-com">확인<!-- 확인 --></a>
								</div>
							</div>
						</div>
					<div class="m-resv-wrap ver1">
						<div class="m-resv-inner">
							<!-- 1. 호텔 선택 -->
							<div class="m-resv-list step1">
								<div class="resv-step1-select select">
									<span class="badge resv-tit">호텔선택<!-- 호텔선택 --></span>
								<form action="${pageContext.request.contextPath}/resv/step2" method="post" id="reservation_Main" >
<select id="hotel" name="hotel" class="hotel-select-box" style=" --swiper-theme-color: #007aff; background-color : transparent;
    --swiper-navigation-size: 44px; color: #222; cursor: pointer;  padding: 0;    margin: 0;    box-sizing: border-box;    outline: none;    -webkit-tap-highlight-color: transparent;
    -webkit-text-size-adjust: none;    word-break: keep-all;    -webkit-font-smoothing: antialiased;    display: inline-block;    border : none;    font-size: 20px;    font-family: 'Yoon770';    letter-spacing: -0.8px;" >
								 	<option class="option"  value="" selected disabled hidden>호텔을 선택해주세요.</option>
									<option  class="option" value='호텔현대 바이 라한 목포'>호텔현대 바이 라한 목포<!--호텔현대 바이 라한 목포--></option>
									<option  class="option" value='호텔현대 바이 라한 울산'>호텔현대 바이 라한 울산<!--호텔현대 바이 라한 울산--></option>
									<option  class="option" value='라한호텔 포항'>라한호텔 포항<!--라한호텔 포항--></option>
									<option  class="option" value='라한호텔 전주'>라한호텔 전주<!--라한호텔 전주--></option>									
									<option  class="option" value='라한셀렉트 경주'>라한셀렉트 경주<!--라한셀렉트 경주--></option>
								</select>
								<input type="submit" value="값 넘어가는지 테스트~~" style="display: none;"><!-- 값 넘어가는지 테스트~~ --><!-- style="display: none;" -->
								
								
								<input type="hidden" name="adult" id="adult" value="">
								<input type="hidden" name="children" id="children" value="">
								<input type="hidden" name="night" id="night" value="">
								<input type="hidden" name="check_in_text" id="check_in_text" value="">
								<input type="hidden" name="check_out_text" id="check_out_text" value="">
								<input type="hidden" name="check_in" id="check_in" value="">
								<input type="hidden" name="check_out" id="check_out"value="">
								<input type="hidden" name="Prm_code" id="Prm_code" value="">
								<input type="hidden" name="check_In_Day" id="check_In_Day" value="">
								<input type="hidden" name="check_Out_Day" id="check_Out_Day" value="">
								</form>
								</div>
							</div>
							
							
							<!-- 2. 날짜 선택 -->
						<div class="m-resv-list step2 "><!-- revArea -->
						<form action="/nextPage" name="resv" id="resv"  >
							<div class="chkInout">
								<div class="resv-step2-box">
									<div>
									<span class="badge resv-tit">체크인<!--체크인--></span>
									<div class="resv-selected-txt checkDate" id="ChekinDate">
										<input type="date"  id="checkInDate"  min="2024-07-02" value="2024-07-02"  
										onchange="setCheckOutDate()" class="calenderSet"><span id="checkInDay"></span> 
									
									</div>
								</div>
								<div class="night-wrap">
									<span><b id="nightText">2</b>박<!-- 박 --></span>
								</div>
								<div>
									<span class="badge resv-tit">체크아웃<!--체크아웃--></span>
									<div class="resv-selected-txt checkDate" id="ChekoutDate">
								<input type="date"  id="checkOutDate" min="2024-07-03" value="2024-07-03" class="calenderSet" 
								onchange="calculateDateDifference(); setDay('checkOutDate','checkOutDay')"><span id="checkOutDay"></span> 
								
									</div>
								</div>
							</div>
	
							</div>
							</form>
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
							<!-- 5. 객실 검색 -->
							<a href="javascript:;" id="resveBtn" onclick="resvStart1()" title="예약하기" class="m-btn-resv btn-gold">예약하기<!--예약하기--></a>
						</div>
					</div>
				</div>
				<p class="resv-info-txt"><!-- 호텔, 날짜, 인원을 선택해주세요. -->호텔, 날짜, 인원을 선택해주세요.</p>
				<!-- 컨텐츠 끝 -->
			</div>
		</section>
	
	</div>
<script>
$(document).ready(function(){
	setReservInit();
	
	var sysCode = 'HUBSITE';
	if(sysCode != '' && sysCode != 'HUBSITE'){
		selHotel(sysCode);
	}
});

$(".prcode-box .btn-com, .btn-prcode-close").on("click", function () {
	$(".resv-step4-prcode").removeClass("open");
});


</script>
 
	
	
	</div>
	
  

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
</body>
</html>