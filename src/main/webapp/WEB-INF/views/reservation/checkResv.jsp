<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한 : 예약조회/확인 </title>
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
       <%@ include file="/WEB-INF/views/header.jsp" %> 

		<div id="container" class="container">
			<!--(페이지 URL)-->
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/hub/ko/resv.css">
<script src="${pageContext.request.contextPath}/js/hub/lodash.min.js"></script>
<script>
	
	function detailResv(rsvnNo,bsnsCode){
		location.href='/hub/ko/mypage/myResvPms.do?bsnsCode='+bsnsCode+'&rsvnNo='+rsvnNo
	}
	

</script>


<section class="sub-contents mypage">
	<div class="sub-contents-wrap">
		<div class="top-menu-wrap">
<ul class="top-menu">
    <li  ><a href="${pageContext.request.contextPath}/member/memberinfo">마이페이지<!-- 마이페이지 --></a></li>
    <li ><a href="/hub/ko/mypage/mypoint/myPointForm.do">마이포인트<!-- 마이포인트 --></a></li>
    <li ><a href="/hub/ko/mypage/mycoupon/myCouponForm.do">마이쿠폰<!-- 마이쿠폰 --></a></li>
	<li  class="on" ><a href="${pageContext.request.contextPath}/mypage/myResv">예약조회/확인<!-- 예약조회/확인 --></a></li>
    
    <li>
        <a href="/mypage/update/pwCheckForm.do">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a>
    </li>
</ul>
		</div>
		<div class="sub-tit-wrap">
			<h3 class="sub-tit01">예약조회/확인<!-- 예약조회/확인 --></h3>
		</div>
		<div class="mycoupon-wrap">
			<div class="mypageSerchBar">
			</div>
			<div class="sub-board-list mycoupon">
				<div class="recommond-contents row-reverse-list">
		
				</div>
				<div class="myReservation_wrap">
					<ul>
						
					</ul>
				</div>
			</div>
			<div class="sub-board-list mycoupon">
				<table class="table-group" id="tblTodo">
					<colgroup>
						<col style="width:260px;">
						<col>
						<col style="width:260px;">
						<col>
						<col style="width:260px;">
					</colgroup>
					<thead>
						<tr>
							<th>예약번호<!-- 예약번호 --></th>
							<th>호텔<!-- 호텔 --></th>
							<th>룸 타입<!-- 예약상태 --></th>
							<th>예약일<!-- 예약일 --></th>
							<th>투숙일<!-- 투숙일 --></th>
							<th>예약상태<!-- 예약상태 --></th>
						
	            		</tr>
	            		<c:forEach var="resvDto" items="${resvDto}">
	            		<tr>
	            			<th>${resvDto.reservation_id }<!-- 예약번호 --></th>
							<th>${resvDto.hotel}<!-- 호텔 --></th>
							<th>${resvDto.room_name}<!-- 룸타입 --></th>
							<th>${resvDto.reserv_date }<!-- 예약일 --></th>
							<th>${resvDto.checkin } - ${resvDto.checkout }<!-- 투숙일 --></th>
							<th>예약 완료<!-- 예약상태 --></th>
						</tr>
	            		</c:forEach>
	            	</thead>
	            	<tbody>
	            	</tbody>
	          	</table>
	        </div>
		</div>
		<!-- 컨텐츠 끝 -->
	</div>
</section>
<!-- 2023-05-18 예약 취소에 따른 수수료 규정 안내 -->
<div id="layerPopup">
	<div id="cancleGuidePop" class="layerPop">
		<div class="layer-head">
			<h3 class="tit">예약취소에 따른 수수료 규정 안내<!-- 예약취소에 따른 수수료 규정 안내 --></h3>
			<button type="button" class="layer-close">Close</button>
		</div>
		<div class="layer-cont">
			<div class="cancle-guide-wrap">
				<p>입실 2일전 18:00 이후 ~ 입실일 당일 취소 시,<br />첫날 객실료의 100% 수수료가 부과됩니다.</p>
				<div class="cancle-guide-list">
					<dl>
						<dt>통합예약실 :</dt><dd>1644-8005</dd>
						<!-- <dt>통합예약실 :</dt>
						<dd>1644-8005</dd> -->
					</dl>
					<dl>
						<dt>운영시간 :</dt><dd>09:00 - 18:00</dd>
						<!-- <dt>운영시간 :</dt>
						<dd>09:00 - 18:00</dd> -->
					</dl>
				</div>
				<p class="border-top-line">&#8251; 통합예약실 운영시간 전후에는 예약하신 호텔로 연락 바랍니다.<!-- &#8251; 통합예약실 운영시간 전후에는 예약하신 호텔로 연락 바랍니다. --></p>
			</div>
			<div class="btn-inline-box mt50">
				<a id="cancelATag" href="#none" title="확인"  class="btn btn-gold btn-com">확인<!-- 확인 --></a>
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %> 
<script>

let str = '[]';
let todoData = "";
if(str != ""){
	todoData  = JSON.parse(str.replaceAll("\n","\\n"));
}


$(function() {
	if(str != ""){
	setTable(1);
    setPaging(1);
	}

	$("#cancleGuidePop .layer-close, #cancleGuidePop .btn-com").on("click", function () {
		$("#cancleGuidePop, .dimmed2").hide();
		$("#cancelATag").attr("onclick","");
	});
});

//달력
$("#startDate, #endDate").datepicker({
	numberOfMonths: 1,
	dateFormat: "yy-mm-dd",
	showOtherMonths: true,
	selectOtherMonths: false,
	showOn: "both",
	buttonImageOnly: false,
	buttonImage: "/static/pc/images/hub/icon/icno_calendar_18x18.png",
});

$('#startDate').datepicker("option", "onClose", function ( selectedDate ) {
    $("#endDate").datepicker( "option", "minDate", selectedDate );
});



const countPerPage = 10; // 페이지당 데이터 건수
const showPageCnt = 10; // 화면에 보일 페이지 번호 개수


$(document).on('click', '#pages>a', function() {
 if (!$(this).hasClass('current')) {
   $(this).parent().find('a.current').removeClass('current');
   $(this).addClass('current');

   setTable(Number($(this).text()));
 }
});

$(document).on('click', 'div#paging>a', function() {
 const totalPage = Math.floor(todoData.length / countPerPage) + (todoData.length % countPerPage == 0 ? 0 : 1);
 const id = $(this).attr('id');

 if (id == 'first_page') {
   setTable(1);
   setPaging(1);
 } else if (id == 'prev_page') {
   let arrPages = [];
   $('div#paging>div#pages>a').each(function(idx, item) {
     arrPages.push(Number($(this).text()));
   });
   
   const prevPage = _.min(arrPages) - showPageCnt;
   setTable(prevPage);
   setPaging(prevPage);
 } else if (id == 'next_page') {
   let arrPages = [];
   $('div#paging>div#pages>a').each(function(idx, item) {
     arrPages.push(Number($(this).text()));
   });
   
   const nextPage = _.max(arrPages) + 1;
   setTable(nextPage);
   setPaging(nextPage);
 } else if (id == 'last_page') {
   const lastPage = Math.floor((totalPage - 1) / showPageCnt) * showPageCnt + 1;
   setTable(lastPage);
   setPaging(lastPage);
 }
});

/**
* 테이블에 데이터를 세팅합니다.
* @param {int} pageNum - Page Number
*/
function setTable(pageNum) {
$('#tblTodo>tbody').empty();

// filtering data
const filteredData = _.slice(todoData, (pageNum - 1) * countPerPage, pageNum * countPerPage);
//console.log(filteredData);


let sTbodyHtml = '';
for (let i = 0; i < filteredData.length; i++) {
 sTbodyHtml += '<tr>';
 sTbodyHtml += '  <td><a href="#none" onclick="detailResv(&quot;'+filteredData[i].cmsRsvnNo+'&quot;, &quot;'+filteredData[i].bsnsCode+'&quot;)" class="resrv_number">' + filteredData[i].cmsRsvnNo + '</a></td>';
 sTbodyHtml += '  <td>' + filteredData[i].hotelNm + '</td>';
 sTbodyHtml += '  <td>' + formatDate(filteredData[i].rsvnDate) + '</td>';
 sTbodyHtml += '  <td>' + formatDate(filteredData[i].arrvDate) + '</td>';
 sTbodyHtml += '  <td>' + filteredData[i].statusNm + '</td>';
 sTbodyHtml += '</tr>';
}
$('#tblTodo>tbody').append(sTbodyHtml);
}

/**
* 페이징 정보를 세팅합니다.
* @param {int} pageNum - Page Number
*/
function setPaging(pageNum) {
const currentPage = pageNum;
const totalPage = Math.floor(todoData.length / countPerPage) + (todoData.length % countPerPage == 0 ? 0 : 1);
//console.log(currentPage, totalPage);

showAllIcon();

if (currentPage <= showPageCnt) {
 $('#first_page').hide();
 $('#prev_page').hide();
}
if (
 totalPage <= showPageCnt ||
 Math.floor((currentPage - 1) / showPageCnt) * showPageCnt + showPageCnt + 1 > totalPage
) {
 $('#next_page').hide();
 $('#last_page').hide();
}

let start = Math.floor((currentPage - 1) / showPageCnt) * showPageCnt + 1;
let sPagesHtml = '';
for (const end = start + showPageCnt; start < end && start <= totalPage; start++) {
 sPagesHtml += '<a href="#none" class="' + (start == currentPage ? 'current' : '') + '">' + start + '</span>';
}
$('#pages').html(sPagesHtml);
}

function showAllIcon() {
$('#first_page').show();
$('#prev_page').show();
$('#next_page').show();
$('#last_page').show();
}

function formatDate(date) {

     var datetmp = date.replace(/-/g,'');			// - 는 모두 제거
     
     var y = parseInt(datetmp.substr(0, 4));
     var m = parseInt(datetmp.substr(4, 2));
     var d = parseInt(datetmp.substr(6,2));
  
     return '' + y + '.' +  m  + '.' + d;		
 }


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
</body>
</html>