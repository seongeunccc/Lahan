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
	<meta name="title" content="LAHAN ||  여행이 더 즐거운 곳, 라한셀렉트 공식 홈페이지">
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

    
    
    <div class="wrap sub">
    
		<div class="skip-nav">
			<a href="#header">푸터 영역 바로가기</a>
			<a href="#container">컨텐츠 바로가기</a>
			<a href="#footer">푸터 영역 바로가기</a>
		</div>
        <header id="header" class="header">
			<!--(HEAD 최종수정일 : 2024-04-01 19:13)-->

			<div class="h-wrap">
				<div class="h-box-left">
					<h1 class="logo">
						<a href="${pageContext.request.contextPath}/main" title="메인으로 이동">
						 	<img src="${pageContext.request.contextPath}/resources/images/main_logo.png" alt="LAHAN" id="header_icon" class="off"/>
							<img src="${pageContext.request.contextPath}/resources/images/main-logo-bold.png" alt="LAHAN" class="off"/>  
							<span class="fixedd_logo"><img src="${pageContext.request.contextPath}/resources/images/main_logo_bl.png" alt="LAHAN"/></span>
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
		</header>
		<div id="container" class="container">
			<!--(레이아웃명([PC][국문] - 라한 소개 > 호텔소개 레이아웃) 최종수정일 : 2022-12-01 18:14)-->
			
			
			<section class="sub-visual">
	            <div class="sub-visual-wrap">
	               <div class="sub-visual-list">	                  
	                  <div class="sub-nav-wrap bgType dotColor1">
	                     	                     <ul class="sub-nav">
	                        <li><a href="/lahan/admin/hotel.do">호텔관리</a></li>
	                        <li>
	                           <a href="/lahan/admin/product.do" class="on">상품관리</a>	                           
	                        </li>
	                     </ul>
	                  </div>	                  
	                  	<div class="sub-visual-txt brand-lahan">
	                  		<h3 class="sub-tit02">LAHAN's PRODUCT</h3>
                            <p>Lahan hotel만의 특별한 상품들을 관리해보세요.</p>
	                  	</div>
	                	<img src="${pageContext.request.contextPath}/resources/images/onlineshop.jpg" alt="sub visual">
	               </div>
	            </div>
	         </section>
			
			<br/><br/><br/><br/>		
			<button onclick="window.location.href='${pageContext.request.contextPath}/admin/upproduct'" class="btn btn-navy-line"
						style="font-family: 'Yoon740', sans-serif; font-size: 18px; width: 200px; height: 56px; margin: 0px 20px 0px 0px; padding: 0px 5px;">추가</button>
			<br/><br/><br/><br/>
			
	<%-- <div class="sub-contents-wrap ty-01">
			
	<ul class="tab-contents-list" id="seList">
	<li><a href="${pageContext.request.contextPath}/admin/upproduct" title="상품등록"class="btn btn-navy-line"
	style="font-family: 'Yoon740', sans-serif; font-size: 18px; width: 200px; height: 56px; margin: 0px 20px 0px 0px; padding: 0px 5px;"> 상품등록</a></li>
	</ul>
	</div> --%>
			
	<!-- <section class="sub-contents">
		<div class="sub-contents-wrap ty-01"> -->
			<!-- <div class="tab-contents">
				<ul class="tab-contents-list" id="seList">
					<li value="" onclick="fncGetList('','01');" class="active"><a>전체</a></li>
					<li value="S01" onclick="fncGetList('S01','01');" class=""><a>PB</a></li>				
				<li value="S02" onclick="fncGetList('S02','01');" class=""><a>상품권</a></li>
					<li value="S03" onclick="fncGetList('S03','01');" class=""><a>선물세트</a></li>
				</ul>
			</div> -->
			
			
			<%-- <div class="recommond-contents row-reverse-list">
		        <div class="recommond-box select">
		          <div class="as-select selected">
		            <span class="select-recommond selected-value" id="reSort">낮은가격순</span>
		          </div>
		          <ul class="recommond-wrap">
		            
                   	<li class="option" value="02" onclick="fncSearchList('02');">낮은가격순</li><!-- 낮은가격순 -->
                   	<li class="option" value="03" onclick="fncSearchList('03');">높은가격순</li><!-- 높은가격순 -->
                   	
		          </ul>
		        </div>
		      </div>
		      
		      <div class="tab-contents-info">
		      <ul class="onlineShop_list" id="shopList">
		        <li class="contents-info-list" onclick="fncGoDtl(50280)">
		        <div class="contents-info-top">     
		        <span><img src="${pageContext.request.contextPath}/resources/images/product_test1.jpg" alt="시그니처" 디퓨저="" 세트=""> 
		        </span>  
		         </div>   
		         <div class="contents-info-bottom">     
		          <div class="info-bottom-inner">       
		           <p class="cont-tit">시그니처 디퓨저 '리틀 포레스트’</p>       
		            <p class="cont-info">여행의 추억을 향기로 간직하는 방법.<br>유칼립투스향의 리틀 포레스트 디퓨저를 만나보세요</p>        
		            <p class="cont-price"><b>33,000</b> 원</p>      
		            </div>    
		            </div>  
		            </li>
		       
		      </ul>
		    </div> --%>
		
	</section>
			
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
	


	
	<!-- // 221228 메인 타이틀 모션 추가 -->

</body>
</html>