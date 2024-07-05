<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <title>라한</title>
    <meta http-equiv="content-language" content="kr">
	<meta name="robots" content="index,follow">
	<meta name="title" content="LA HAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta name="author" content="라한셀렉트">
	<meta name="description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta name="keywords" content="라한호텔, 라한셀렉트, 라한호텔 경주, 라한호텔 포항, 라한호텔 전주, 호텔현대 바이 라한 울산, 호텔현대 바이 라한 목포">

	<meta property="og:locale" content="ko_KR">
	<meta property="og:type" content="website">
	<meta property="og:rich_attachment" content="true">
	<meta property="og:site_name" content="라한셀렉트">
	<meta property="og:title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta property="og:description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta property="og:image" content="https://www.lahanhotel.com/static/pc/assets/img/header/logo_glad.svg">
	<meta property="og:url" content="https://www.lahanhotel.com/gyeongju/ko/main.do">

	<meta name="twitter:card" content="main_logo_bl">
	<meta name="twitter:site" content="라한셀렉트">
	<meta name="twitter:title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
	<meta name="twitter:description" content="라한셀렉트 공식 홈페이지, 라한호텔 경주/포항/전주/울산/목포, 호텔 소개, 위치안내, 객실소개, 요금 및 예약, 리조트 및 컨벤션 호텔, 부대시설 안내">
	<meta name="twitter:image" content="https://www.lahanhotel.com/static/pc/assets/img/header/logo_glad.svg">
	<meta name="twitter:creator" content="라한셀렉트">
	<link rel="canonical" href="https://www.lahanhotels.com/">

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
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contents.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contents1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contents2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/h-common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/printThis.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/resv-cal.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/resv.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/date_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/num_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/string_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bluewaves_common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/paging_util.js"></script>
    

    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MTWJWS8');</script>
    <!-- End Google Tag Manager -->
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
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTWJWS8"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    
    
    <div class="wrap sub">
    
		<div class="skip-nav">
			<a href="#header">푸터 영역 바로가기</a>
			<a href="#container">컨텐츠 바로가기</a>
			<a href="#footer">푸터 영역 바로가기</a>
		</div>
		
		    <%@ include file="/WEB-INF/views/header.jsp" %> 
        
		<%-- <header id="header" class="header">
			<!--(HEAD 최종수정일 : 2024-04-01 19:13)-->

			<div class="h-wrap">
				<div class="h-box-left">
					<h1 class="logo">
						<a href="./main" title="메인으로 이동">
							<img src="${pageContext.request.contextPath}/resources/images/main_logo.png" alt="LAHAN"/>
							<img src="${pageContext.request.contextPath}/resources/images/main-logo-bold.png" alt="LAHAN" class="off"/>
							<span class="fixedd_logo"><img src="${pageContext.request.contextPath}/resources/images/hub/main_logo_bl.png" alt="LAHAN3"/></span>
						</a>
					</h1> 
					
					<ul class="nav-list">
						<li>
							<a href="/lahan/admin/member.do">회원관리</a>
						</li>
						<li>
							<a href="/lahan/admin/reservation.do">예약관리</a>
						</li>
						<li>
							<a href="/lahan/admin/hotel.do">호텔/상품 관리</a>
						</li>
						<li>
							<a href="/lahan/admin/notice.do">공지/문의 관리</a>
						</li>
					</ul>
				</div>
				<div class="h-box-right">
					<ul class="set-wrap">
						
						<li><a href="/api/login/logout.json" title="로그아웃">로그아웃<!-- 로그아웃 --></a></li>
                     
					</ul>
					
					<div class="lang-box select">
						<div class="as-select selected">
							<span class="select-lang selected-value">
                                KOR
                            </span>
						</div>
						<ul class="lang-wrap">
							<li class="option" value="ENG" onclick="location.href='/hub/en/main.do';">ENG</li>
						</ul>
					</div>					
				</div>
			</div>	
		</header> --%>
		<div id="container" class="container">
			<!--(레이아웃명([PC][국문] - 라한 소개 > 호텔소개 레이아웃) 최종수정일 : 2022-12-01 18:14)-->
			<script type="text/javascript">
$(document).ready(function(){
	$(".select-box li").click(function(){

		var $selected = $(this).closest('.select-box').siblings('.selected');

		var val = $(this).attr("value");
		var hiddenId = $(this).attr("hiddenId");
		if(hiddenId != "" && hiddenId != undefined) {
			$("#"+hiddenId).val(val);
		}

	});
	$("#registBtn").hide();

	$("#qaType > li").each(function() {
		var this_ = $(this);
		if(this_.attr("selected") == "selected") {
			$("#ty").val(this_.attr("value"));
			$("#tyText").text(this_.text());
		}
	});
});



}

// 바이트 체크
function fnChkByte(obj, maxByte){
    var str = obj.value;
    var str_len = str.length;

    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";

   for(var i=0; i<str_len; i++){
     one_char = str.charAt(i);
     if(escape(one_char).length > 4){
        rbyte += 2;                                         //한글2Byte
     }else{
        rbyte++;                                            //영문 등 나머지 1Byte
     }

     if(rbyte <= maxByte){
        rlen = i+1;                                          //return할 문자열 갯수
     }
 }

    if(rbyte > maxByte){
      alert("최대 2,000byte 까지 입력이 가능합니다.");
      str2 = str.substr(0,rlen);                                  //문자열 자르기
      obj.value = str2;
      fnChkByte(obj, maxByte);
    }else{
      document.getElementById('cn').innerText = rbyte;
    }
 }



function fncRegist() {
    var form = document.getElementById('askForm');

    // 폼 필드 설정
    form.hotel.value = document.getElementById('hotelInput').value;
    form.sort.value = document.getElementById('sortInput').value;
    form.title.value = document.getElementById('titleInput').value;
    form.contents.value = document.getElementById('contentsInput').value;

    // 폼 제출
    form.submit();
}
/* 
function fncRegist() {

	
	
	
	//이메일,전화번호 정규식
	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	var regExp = /^\d{2,3}-\d{3,4}-\d{4}$/;

	if ($.trim($('#place').val()) == "") {
		alert('호텔을 선택해 주세요');//지점을 선택해 주세요
		$("#place").val();
		$("#placeFc").attr("tabindex", -1).focus();
		return false;
	}
	if ($.trim($('#ty').val()) == "") {
		alert('문의 유형을 선택해 주세요');//문의 유형을 선택해 주세요
		$("#ty").val();
		$("#tyFc").attr("tabindex", -1).focus();
		return false;
	}

	if ($.trim($('#title').val()) == "") {
		alert('제목을 입력해주세요');//제목을 입력해주세요
		$("#title").val();
		$("#title").focus();
		return false;
	}
	if ($.trim($('#cn').val()) == "") {
		alert('내용을 입력해주세요');//내용을 입력해주세요
		$("#cn").val();
		$("#cn").focus();
		return false;
	}

	var file = $("#uploadBtn03");
	var fileVal = file.val();
	if( fileVal != "" ){
		var ext = fileVal.split('.').pop().toLowerCase(); //확장자분리 pop 마지막요소 반환
		//아래 확장자가 있는지 체크
		if($.inArray(ext, ['png', 'jpg' , 'pdf']) == -1) {
		  alert('10BM 미만의 파일형식 [png, jpg, pdf ] 파일만 업로드 할수 있습니다.');  //10BM 미만의 파일형식 [png, jpg , pdf ] 파일만 업로드 할수 있습니다.
		  $("#fileName").focus();
		  return false;
		}

		//파일사이즈 체크
		var sizeinbytes = $("#uploadBtn03")[0].files[0].size;
		var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
	    var i = 0;
	    var checkSize = 1024 * 1024 * 10;
	    var size = 1024 * 1024 * 10;

	    while (checkSize > 900) {
	        checkSize /= 1024;
	        i++;
	    }

	    checkSize = (Math.round(checkSize * 100) / 100) + ' ' + fSExt[i];
	    var fSize = sizeinbytes;


	    if (fSize > size) {
    		alert('10BM 미만의 파일형식 [png, jpg, pdf ] 파일만 업로드 할수 있습니다.');  //10BM 미만의 파일형식 [png, jpg , pdf ] 파일만 업로드 할수 있습니다.
			$("#fileName").focus();
			return false;
	    }
	}
 */
	

	

	


	if(!confirm("등록하시겠습니까?")) {//등록하시겠습니까?
		return false;
	}

	var form = $('#inquiry')[0];
	var formData = new FormData(form);
	var langCode = $("#langCode").val();

	jQuery.ajax({
		type: "POST",
		url: "/hub/"+langCode+"/customer/qna.json",
		data: formData,
		enctype:'multipart/form-data',
		processData: false,
		contentType: false,
		cache: false,
		success: function(data) {
			var resultCode = data.resultCode;

			if (resultCode == "FAIL") {
				alert('문의글 전송이 실패했습니다.'); //문의글 전송이 실패했습니다.
				return false;
			}else if (resultCode == "SUCCESS") {
				$(".modal").addClass("show");
				alert('문의글 전송이 완료되었습니다');//문의글 전송이 완료되었습니다
				location.reload();
			}

		},
		error:function(r, s, e){
			alert('Ajax 통신중 에러가 발생하였습니다.\nError Code : \"{1}\"\nError : \"{2}\"'.replace("{1}", r.status).replace("{2}", r.responseText));
		}

	});

	/* location.reload(); */
}





</script>


			
			<section class="sub-visual">
	            <div class="sub-visual-wrap">
	               <div class="sub-visual-list">	                  
	                  <div class="sub-nav-wrap bgType dotColor1">
	                     	                     <ul class="sub-nav">
	                      <!--   <li><a href="/lahan/admin/notice.do">공지사항</a></li>
	                        <li><a href="/lahan/admin/ask.do"  class="on">1:1문의하기</a>	</li> -->
	                     </ul>
	                  </div>	                  
	                  	<div class="sub-visual-txt brand-lahan">
	                  		<h3 class="sub-tit02">1:1 문의하기</h3>
                            <p>Lahan hotel에게 궁금한 점을 남겨주세요.</p>
	                  	</div>
	                	<img src="${pageContext.request.contextPath}/resources/images/admin_notice_topimg.jpg" alt="sub visual">
	               </div>
	            </div>
	         </section>
	        
			<%-- form id="inquiry" name="inquiry">
			
	<input type="hidden" id="id" name="id" value='id'>
	<input type="hidden" id="hotel" name="hotel" value="${hotel}">
	<input type="hidden" id="sort" name="sort" value="${sort}">
	<input type="hidden" id="title" name="title" value="${title}">
	<input type="hidden" id="contents" name="contents" value="${contents}"> --%>
			<section class="sub-contents customer">
			 <form id="askForm" action="/lahan/ask/adding.do" method="post">
				<div class="sub-contents-wrap">

					<!-- 컨텐츠 시작 -->

					<div class="sub-tit-wrap">
						<h3 class="sub-tit01"><!-- 일반문의 -->1:1 문의</h3>
					</div>
				
					<div class="intList-wrap">
						<div class="intList-tit-wrap">
							<h3><!-- 문의내용 -->문의내용</h3>
							<span><!-- * 표시 필수 입력 사항 -->* 표시 필수 입력 사항</span>
						</div>
						<ul class="intList">
							<li>
								<div class="intWrap">
									<div class="intBox">
										<div class="intArea">
											<span class="tit-wrap"><!-- 호텔 -->호텔<em class="essential"><!-- 필수 -->필수</em></span>
											<div class="txt-wrap">
												<div class="select-wrap">
												  <div class="selected" id="placeFc">
												      <input type="hidden" name="hotel" id="hotelInput">
												    <span class="selected-value" id="hotelText"><!-- 호텔을 선택해주세요. -->호텔을 선택해주세요.</span>
												    <em class="select-arrow"></em>
												 </div>
											   	    <ul class="select-box" id="hotelSelectBox">
                        <li class="option" onclick="selectHotel('라한셀렉트 경주')">라한셀렉트 경주</li>
                        <li class="option" onclick="selectHotel('라한호텔 전주')">라한호텔 전주</li>
                        <li class="option" onclick="selectHotel('라한호텔 포항')">라한호텔 포항</li>
                        <li class="option" onclick="selectHotel('호텔현대 바이 라한 울산')">호텔현대 바이 라한 울산</li>
                        <li class="option" onclick="selectHotel('호텔현대 바이 라한 목포')">호텔현대 바이 라한 목포</li>
                    </ul>
												</div>
											</div>
										</div>
									
										<div class="intArea">
											<span class="tit-wrap"><!-- 문의 유형 -->문의 유형<em class="essential"><!-- 필수 -->필수</em></span>
											<div class="txt-wrap">
												<div class="select-wrap">
												  <div class="selected" id="sort" >
												 	   <input type="hidden" name="sort" id="sortInput">
                    <span class="selected-value" id="sortText"><!-- 문의 유형을 선택해 주세요. -->문의 유형을 선택해 주세요.</span>
												    
												    <em class="select-arrow"></em>
												  </div>
												  <ul class="select-box" id="sortSelectBox">
                    <li class="option" onclick="selectSort('예약문의')">예약문의</li>
                    <li class="option" onclick="selectSort('상품/서비스')">상품/서비스</li>
                    <li class="option" onclick="selectSort('멤버십')">멤버십</li>
                    <li class="option" onclick="selectSort('제휴제안')">제휴제안</li>
                    <li class="option" onclick="selectSort('불편사항')">불편사항</li>
                    <li class="option" onclick="selectSort('기타')">기타</li>
                    <li class="option" onclick="selectSort('칭찬')">칭찬</li>
                </ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="intWrap">
									<div class="intBox">
										<span class="tit-wrap"><!-- 제목 -->제목<em class="essential"><!-- 필수 -->필수</em></span>
										<div class="txt-wrap">
											<div class="input-wrap"><!-- 제목 입력해 주세요. -->
											  <input name="title" id="title" type="text" value="${title}" placeholder="제목 입력해 주세요." >
											  
											</div>
										</div>
									</div>
								</div>
								<div class="intWrap">
									<div class="intBox">
										<span class="tit-wrap"><!-- 내용 -->내용<em class="essential"><!-- 필수 -->필수</em></span>
										<div class="txt-wrap">
											<div class="input-wrap"><!-- 내용을 입력해 주세요.  최대 2,000byte 까지 입력이 가능합니다. -->
											  <textarea name="contents" id="contents" value="${contents}" cols="30" rows="10" onkeyup="fnChkByte(this,'2000');" placeholder="내용을 입력해 주세요.  최대 2,000byte 까지 입력이 가능합니다." ></textarea>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class="intWrap">
									<div class="intBox">
										<span class="tit-wrap">첨부파일첨부파일</span>
										<div class="txt-wrap">
											<div class="fileUpload">
												<div class="intDel">
													<input type="text" id="fileName" placeholder='첨부파일( 파일형식 png, jpg , pdf /10MB 이하)' class="fileName" placeholder="" readonly="">
													<button type="button" class="btnDel">삭제</button>
												</div>
												<label for="uploadBtn03" class="fileBtn">파일첨부파일첨부</label>
												<input type="file" name="attachment"  id="uploadBtn03" class="uploadBtn">
											</div>
										</div>
									</div> -->
								</div>
							</li>
							
						</ul>
					</div>
					
<br><br><br>					<div class="btn-inline-box">
						<button type ="submit" class="btn btn-gold"><!-- 문의글 전송하기 -->문의글 전송하기</button>
					</div>
					<!-- 컨텐츠 끝 -->
				</div>
				</form>
			</section>
<script>
function selectHotel(hotel) {
    document.getElementById('hotelInput').value = hotel;
    document.getElementById('hotelText').innerText = hotel;
}

function selectSort(sort) {
    document.getElementById('sortInput').value = sort;
    document.getElementById('sortText').innerText = sort;
}
</script>
		<div class="dimmed"></div>
	</div>


		</div>
			
		<footer id="footer" class="footer">
			<!--(FOOTER 최종수정일 : 2023-02-28 08:19)-->

			<div class="f-wrap">
				<div class="f-box-top">
					<div class="box-top-inner">
						<ul class="f-nav-list">
                            <li><a href="https://www.lahanhotels.com/hub/ko/hotel/brandIntroduce.do" title="라한 브랜드">라한 브랜드<!-- 라한 브랜드 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/clublahan/membership.do" title="멤버십">멤버십<!-- 무료멤버십 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/notice/generalInfo/list.do" title="공지사항">공지사항<!-- 공지사항 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/customer/contact.do" title="제안/제보">제안/제보<!-- 고객문의 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/ethical/terms.do" title="윤리경영">윤리경영<!-- 윤리경영 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/sitemap.do" title="사이트맵">사이트맵<!-- 사이트맵 --></a></li>
						</ul>
						<ul class="f-nav-list">
							<li><a href="https://www.lahanhotels.com/hub/ko/termsUse/terms.do" title="이용약관">이용약관<!-- 이용약관 --></a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/terms/terms.do" title="개인정보처리방침" class="pr-po"><strong>개인정보처리방침<!-- 개인정보처리방침 --></strong></a></li>
						</ul>
					</div>
				</div>
				<div class="f-box-bottom">
					<div class="box-bottom-inner">
						<div class="box-bottom-left">
							<span class="f-logo">
								<img src="/static/pc/images/hub/footer_logo.png" alt="LAHAN LOGO"/>
							</span>
							<ul class="f-lahan-info">
								<li><b>라한프라퍼티스매니지먼트(주)<!-- (주)라한프라퍼티스 매니지먼트 --></b></li>
								<li>
									<p>주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층<!-- 주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층 --></p>

									<p>통합예약실 1644-8005<!-- 통합예약실 --></p>

								</li>
								<li>

									<p>사업자등록번호 666-86-01031<!-- 사업자등록번호 666&#45;86&#45;01031 --></p>

									<p>통신판매신고번호 2015-경북경주-0192호<!-- 통신판매신고번호 00구00000호 --></p>
								</li>
							</ul>
						</div>
						<div class="box-bottom-right">

							<ul class="f-cer-info">
								<li>
                                    <a href="https://isms.kisa.or.kr/main/ispims/issue/?certificationMode=list" target="_blank">
									    <span><img src="/static/pc/images/common/f-cer1.png" alt="호텔 예약 서비스 및 멤버십 서비스 인증 이미지"></span>
									    <span>인증범위. 라한호텔 예약 및 멤버십 서비스<br/>유효기간. 2023.12.06 ~ 2026.12.05<!-- 인증범위. 호텔 예약 서비스 및 멤버십 서비스<br/>유효기간. 2020.09.16 ~ 2023.09.15 --></span>
                        			</a>
								</li>
							</ul>

							<div class="f-site-info">
								<div class="f-select-wrap select">
									<div class="select-lahan selected">
										<span class="select-site selected-value">FAMILY SITE<!-- FAMILY SITE --></span>
									</div>
									<ul class="f-select-box">
										<!-- <li><a href="https://www.seamarqhotel.com/" title="GANGNEUNG" class="option" target="_blank">강릉 씨마크</a></li>강릉 씨마크 -->
										<li><a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="MOKPO" class="option" target="_blank">호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></a></li>
										<li><a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="ULSAN" class="option" target="_blank">호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></a></li>
										<li><a href="https://www.lahanhotels.com/pohang/ko/main.do" title="POHANG" class="option" target="_blank">라한호텔 포항<!-- 라한호텔 포항 --></a></li>
										<li><a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="JEONJU" class="option" target="_blank">라한호텔 전주<!-- 라한호텔 전주 --></a></li>
										<li><a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="GYEONGJU" class="option" target="_blank">라한셀렉트 경주<!-- 라한셀렉트 경주 --></a></li>
										<li><a href="https://www.lahanhotels.com/hub/ko/main.do" title="LAHAN" class="option" target="_blank">라한<!-- 라한 --></a></li>
									</ul>
								</div>
								<div class="f-sns-wrap">
									<a href="https://www.instagram.com/lahan_hotel/" title="Lahan Instagram" target="_blank"><span>라한 인스타그램<!-- 라한 인스타그램 --></span></a>
									<a href="https://www.facebook.com/LAHANHOTEL" title="Lahan Facebook" target="_blank"><span>라한 페이스북<!-- 라한 페이스북 --></span></a>
									<a href="https://pf.kakao.com/_Umxebxb" title="Lahan Kakaochanel" target="_blank"><span>라한 카카오채널<!-- 라한 카카오채널 --></span></a>
								</div>
								<p class="copTxt">&#169; 2022 by Lahan Hotels Co., Ltd<!-- &#169; 2022 by Lahan Hotels Co., Ltd --></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</footer>
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
						<span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_wh.png" alt="라한"/></span>
						<span><img src="/static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="https://www.lahanhotels.com/pohang/ko/main.do" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="/static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="/static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="/static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
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