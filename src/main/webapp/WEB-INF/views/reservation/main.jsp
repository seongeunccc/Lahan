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
 	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script> 
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
	
	<script>
	function removeOffClass() {
		  document.getElementById('header_icon').classList.remove('off');
		  console.log('removeOffClass 실행됨.')
		};
	</script>

	
	
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
						<div class="m-resv-list step1" >
							<div class="resv-step1-select select">
								<span class="badge resv-tit" style="margin-top: 20px;">호텔선택<!--호텔--></span>
								<form action="./test" method="post" id="reservation_Main" >
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
						<!-- 4. 프로모션 코드 //2차 오픈-->
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
						<!-- 5. 예약하기 -->
						<a href="javascript:;" id="resveBtn" onclick="resvStart1()" title="예약하기" class="m-btn-resv btn-gold">예약하기<!--예약하기--></a>
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
							<a href="${pageContext.request.contextPath}/hotel/brandIntroduce">
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
<a href="${pageContext.request.contextPath}/hotel/brandIntroduce" target="_blank"> [더보기] </a>
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
								<span class="m-icon"><img src="${pageContext.request.contextPath}/resources/images/icon_benefit_W.svg" alt="icon_benefit_W.svg" /></span>
								<strong>회원 특전</strong>
								<p>레이트 체크아웃, 웰컴스낵 등 가입 즉시 제공되는 풍성한 특전</p>
							</li>
							<li>
								<span class="icon_mid"><img src="${pageContext.request.contextPath}/resources/images/icon_point_W.svg" alt="icon_point_W.svg" /></span>
								<strong>포인트 적립 및 결제</strong>
								<p>현금처럼 이용가능한 포인트 3~5% 적립 </p>
							</li>
							<li>
								<span class="m-icon"><img src="${pageContext.request.contextPath}/resources/images/icon_membersOnly_W.svg" alt="icon_membersOnly_W.svg" /></span>
								<strong>회원전용 상품</strong>
								<p>멤버를 위한 연중 최적가 객실 상품과 프로모션</p>
							</li>
						</ul>
					</div>
					<div class="btn-box btn-inline-box mt80">
						<a href="${pageContext.request.contextPath}/clublahan/membership" title="혜택보기" class="btn btn-wh">혜택보기</a>
						<a href="${pageContext.request.contextPath}/clublahan/list" title="회원전용 상품" class="btn btn-gold">회원전용 상품</a>
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
                            	<span class="icon-imgs"><img src="https://www.lahanhotels.com/static/pc/images/hub/icon/pics_wh_22x22.png" alt="icon image"></span>
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
		
		 <%@ include file="/WEB-INF/views/footer.jsp" %> 
		
		
		<div class="loading-box" style="display: none;">
			<div class="loading"></div>
			<p class="loading-txt">LOADING</p>
	    </div>
		<div class="dimmed"></div>
		<div class="dimmed2"></div>


<form id="form" method="post" action="${pageContext.request.contextPath}/resv/step2">
<!--     <input type="hidden" name="adult" id="adult" value="">
	<input type="hidden" name="children" id="children" value="">
	<input type="hidden" name="night" id="night" value=""> -->
	<!-- <input type="hidden" name="check_in_text" id="check_in_text" value="">
	<input type="hidden" name="check_out_text" id="check_out_text" value="">
	<input type="hidden" name="check_in" id="check_in" value="">
	<input type="hidden" name="check_out" id="check_out"value=""> -->
	<input type="hidden" name="pms_seq_no" id="pms_seq_no" value="">
	<input type="hidden" name="SS_PMS_CODE" id="SS_PMS_CODE" value="">
	<input type="hidden" name="SS_PMS_SEQ_NO" id="SS_PMS_SEQ_NO" value="">
<!-- 	<input type="hidden" name="Prm_code" id="Prm_code" value=""> -->
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