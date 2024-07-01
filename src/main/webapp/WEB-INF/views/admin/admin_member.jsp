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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_codmmon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_main.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/라한_contents2.css">
	
	
	
	<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contents.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/h-common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/printThis.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/resv-cal.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/resv.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/date_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/num_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/string_util.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bluewaves_common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/paging_util.js"></script>
	
	
	
	
	
	
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
  <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MTWJWS8');</script>
    <!-- End Google Tag Manager -->



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
	

        
		<header id="header" class="header">
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
							<a href="/admin/member.do">회원관리</a>
						</li>
						<li>
							<a href="/admin/reservation.do">예약관리</a>
						</li>
						<li>
							<a href="/admin/add.do">호텔/상품 관리</a>
						</li>
						<li>
							<a href="/admin/notice.do">공지/문의 관리</a>
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
					<a href="javascript:;" title="전체메뉴보기" class="btn-all">
						<span></span>
						<span></span>
						<span></span>
					</a>
					
				</div>
			</div>
            <div class="all-menulist">
				<div class="all-menulist-wrap">
					<ul class="all-1depth">
						<li><a href="/admin/member.do" title="회원관리">회원관리<!-- 라한--></a></li>
						<li><a href="/admin/member.do" title="회원 리스트">회원 리스트<!-- 브랜드 소개--></a></li>
						<li>
							<a href="/hub/ko/hotel/hotelIntroduce.do" title="호텔 소개">호텔 소개<!-- 호텔 소개 --></a>
							<ul class="all-2depth">
								<li><a href="/hub/ko/hotel/hotelIntroduce.do" title="전체보기">전체보기<!-- 전체보기 --></a></li>
								<li><a href="/hub/ko/hotel/gyeongjuDc.do" title="라한셀렉트 경주">라한셀렉트 경주<!-- 라한셀렉트 경주 --></a></li>
								<li><a href="/hub/ko/hotel/jeonjuDc.do" title="라한호텔 전주">라한호텔 전주<!-- 라한호텔 전주 --></a></li>
								<li><a href="/hub/ko/hotel/pohangDc.do" title="라한호텔 포항">라한호텔 포항<!-- 라한호텔 포항 --></a></li>
								<li><a href="/hub/ko/hotel/ulsanDc.do" title="호텔현대 바이 라한 울산">호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></a></li>
								<li><a href="/hub/ko/hotel/mokpoDc.do" title="호텔현대 바이 라한 목포">호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></a></li>
							</ul>
						</li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/package/list.do" title="스페셜 오퍼">스페셜 오퍼<!-- 스페셜 오퍼 --></a></li>
						<li><a href="/hub/ko/package/list.do" title="패키지">패키지<!-- 객실 패키지--></a></li>
						<li><a href="/hub/ko/promtn/list.do" title="프로모션">프로모션<!-- 프로모션 --></a></li>
						<li><a href="/hub/ko/spclguide/list.do" title="프로모션">스페셜 가이드<!-- 스페셜 가이드 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/clublahan/membership.do" title="클럽라한">클럽라한<!-- 클럽라한--></a></li>
						<li><a href="/hub/ko/clublahan/membership.do" title="멤버십 소개">멤버십 소개<!-- 멤버십 소개--></a></li>
						<li>
							<a href="/hub/ko/clublahan/list.do" title="회원 전용 상품">회원 전용 상품<!-- 회원 전용상품 --></a>
							<ul class="all-2depth">
								<li><a href="/hub/ko/clublahan/list.do" title="패키지">패키지<!-- 객실패키지 --></a></li>
								<li><a href="/hub/ko/clublahan/promtnlist.do" title="프로모션">프로모션<!-- 프로모션 --></a></li>
							</ul>
						</li>
						<li><a href="/hub/ko/clublahan/mbershipInq/list.do" title="멤버십 문의">멤버십 문의<!-- 멤버십 문의 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/onlineshop/subMain.do" title="온라인샵">온라인샵<!-- 온라인샵 --></a></li>
						<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S01" title="PB">PB<!-- PB --></a></li>
						<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S02" title="상품권">상품권<!-- 상품권 --></a></li>
						<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S03" title="선물세트">선물세트<!-- 선물세트 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/notice/generalInfo/list.do" title="공지사항">공지사항<!-- 공지사항 --></a></li>
						<li><a href="/hub/ko/notice/generalInfo/list.do" title="일반안내">일반안내<!-- 일반안내 --></a></li>
						<li><a href="/hub/ko/notice/financialDisclosure/list.do" title="결산공고">결산공고<!-- 결산공고--></a></li>
						<li><a href="/hub/ko/notice/certificatesAwards/list.do" title="인증/수상 내역">인증/수상 내역<!-- 인증/수상 내역 --></a></li>
						<li><a href="/hub/ko/notice/recruitment/list.do" title="채용">채용<!-- 채용 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/customer/contact.do" title="고객문의">고객문의<!-- 고객문의 --></a></li>
						<li><a href="/hub/ko/customer/contact.do" title="연락처">연락처<!-- 연락처 --></a></li>
						<li><a href="/hub/ko/customer/faq/list.do" title="자주 묻는 질문 (FAQ)">자주 묻는 질문 (FAQ)<!-- 자주 묻는 질문(FAQ) --></a></li>
						<li><a href="/hub/ko/customer/qnaForm.do" title="일반문의">일반문의<!-- 일반문의 --></a></li>
						<li><a href="/hub/ko/customer/consigned.do" title="위탁운영 문의">위탁운영 문의<!-- 위탁운영 문의 --></a></li>
						<li><a href="/hub/ko/customer/reports.do" title="제보">제보<!-- 제보 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="/hub/ko/mypage.do" title="마이페이지">마이페이지<!-- 마이페이지 --></a></li>
						<li><a href="/hub/ko/mypage/mypoint/myPointForm.do" title="마이포인트">마이포인트<!-- 마이포인트 --></a></li>
						<li><a href="/hub/ko/mypage/mycoupon/myCouponForm.do" title="마이쿠폰">마이쿠폰<!-- 마이쿠폰 --></a></li>
<!--			예약조회/확인			
     <li><a href="#none" title="예약조회/확인">예약조회/확인</a></li>
-->
						<li><a href="/hub/ko/mypage/update/pwCheckForm.do" title="개인정보관리/탈퇴">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a></li>
					</ul>
				</div>
			</div>
		
		</header>
		
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
                
                

<input type="hidden" id="langCode" value="ko"/>
<form id="form" name="form">
</form>
<div id="container" class="container">
    <section class="sub-contents mypage">
        <div class="sub-contents-wrap">
        
        

            <div class="sub-tit-wrap">
                <h3 class="sub-tit01">회원관리<!-- 마이페이지 --></h3>
            </div>
               <div class="myAccountInfo">
                <dl class="myInfoList">
                    <dt>아이디 </dt>
                    <dd id="mbrId">${member.id}</dd>
                </dl>
                <dl class="myInfoList">
                    <dt>이름 </dt>
                    <dd id="mbrName">${member.name}</dd>
                </dl>
                <dl class="myInfoList">
                    <dt>생년월일 </dt>
                    <dd id="mbrBirth">${member.birth}</dd>
                </dl>
                <dl class="myInfoList">
                    <dt>회원등급 </dt>
                    <dd class="grade" id="currentGrade">${member.membership}</dd><!-- 등급별 클래스 silver / gold / diamond 입니다  -->
                </dl>
                <dl class="myInfoList">
                    <dt>보유 포인트 </dt>
                    <dd id="point"><a href="/hub/ko/mypage/mypoint/myPointForm.do">${member.point} P</a></dd>
                </dl>
                <dl class="myInfoList">
                    <dt> 회원가입일 </dt>
                    <dd id="joinDate">${member.joindate}</dd>
                </dl>
                <dl class="myInfoList">
                    <dt> 탈퇴일 </dt>
                    <dd id="withdrawdate">${member.withdraw}</dd>
                </dl>
                <dl class="myInfoList">
                    <dt>탈퇴 </dt>
                    <dd id="withdraw"> <form action="${pageContext.request.contextPath}/member/withdraw" method="post">
                    <input type="hidden" name="id" value="${member.id}">
                    <button type="submit">탈퇴</button>
                </form></dd><!-- 등급별 클래스 silver / gold / diamond 입니다  -->
                </dl>
            </div>
		</div>
		
		</section>
		</div>
		</section>
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
						</div>c
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
		
	
		
		
</body>
</html>