<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한 : 사이트맵 </title>

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
			<!--(레이아웃명([PC][국문] - 사이트맵 레이아웃) 최종수정일 : 2022-12-09 09:37)-->
			<section class="sub-contents">
				<div class="sub-contents-wrap">
					<!-- 컨텐츠 시작 -->
					<div class="sub-tit-wrap">
						<h3 class="sub-tit01">사이트맵</h3>
					</div>
					
					<div class="stiemap_wrap">
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>라한</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/hotel/brandIntroduce.do">브랜드 소개</a></li>
								<li>
									<a href="/hub/ko/hotel/hotelIntroduce.do">호텔 소개</a>
									<ul class="site-sub">
										<li><a href="/hub/ko/hotel/hotelIntroduce.do">전체보기</a></li>
										<li><a href="/hub/ko/hotel/gyeongjuDc.do">라한셀렉트 경주</a></li>
										<li><a href="/hub/ko/hotel/jeonjuDc.do">라한호텔 전주</a></li>
										<li><a href="/hub/ko/hotel/pohangDc.do">라한호텔 포항</a></li>
										<li><a href="/hub/ko/hotel/ulsanDc.do">호텔현대 바이 라한 울산</a></li>
										<li><a href="/hub/ko/hotel/mokpoDc.do">호텔현대 바이 라한 목포</a></li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>스페셜 오퍼</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/package/list.do">패키지</a></li>
								<li><a href="/hub/ko/promtn/list.do">프로모션</a></li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>클럽라한</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/clublahan/membership.do">멤버십 소개</a></li>
								<li>
									<a href="/hub/ko/clublahan/list.do">회원 전용상품</a>
									<ul class="site-sub">
										<li><a href="/hub/ko/clublahan/list.do">패키지</a></li>
										<li><a href="/hub/ko/clublahan/promtnlist.do">프로모션</a></li>
									</ul>
								</li>
								<li><a href="/hub/ko/clublahan/mbershipInq/list.do">멤버십 문의</a></li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>온라인샵</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S01">PB</a></li>
								<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S02">상품권</a></li>
								<li><a href="/hub/ko/onlineshop/subMain.do?searchOnshopSe=S03">선물세트</a></li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>공지사항</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/notice/generalInfo/list.do">일반안내</a></li>
								<li><a href="/hub/ko/notice/financialDisclosure/list.do">결산공고</a></li>
								<li><a href="/hub/ko/notice/certificatesAwards/list.do">인증/수상 내역</a></li>
								<li><a href="/hub/ko/notice/recruitment/list.do">채용</a></li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>고객문의</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/customer/contact.do">연락처</a></li>
								<li><a href="/hub/ko/customer/faq/list.do">자주 묻는 질문(FAQ)</a></li>
								<li><a href="/hub/ko/customer/qnaForm.do">일반문의(제안/예약/서비스/칭찬 등)</a></li>
								<li><a href="/hub/ko/customer/consigned.do">위탁운영문의</a></li>
								<li><a href="/hub/ko/customer/reports.do">제보(부정행위)</a></li>
							</ul>
						</div>
						<div class="sitemap_box">
							<div class="sitemap_tit">
								<h3>마이페이지</h3>
							</div>
							<ul class="sitemap_menu">
								<li><a href="/hub/ko/mypage.do">마이페이지</a></li>
								<li><a href="/hub/ko/mypage/mypoint/myPointForm.do">마이포인트</a></li>
								<li><a href="/hub/ko/mypage/mycoupon/myCouponForm.do">마이쿠폰</a></li>
								<!-- <li><a href="#none">예약조회/확인</a></li> -->
								<li><a href="/hub/ko/mypage/update/pwCheckForm.do">개인정보관리/탈퇴</a></li>
							</ul>
						</div>
					</div><!-- //sitemap_wrap -->
					
					<!-- 컨텐츠 끝 -->
				</div>
			</section>
		
		</div>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>