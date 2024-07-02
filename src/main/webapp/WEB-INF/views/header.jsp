<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<header id="header" class="header">
			<!--(HEAD 최종수정일 : 2024-04-01 19:13)-->

			<div class="h-wrap">
				<div class="h-box-left">
					<h1 class="logo">
						<a href="./main" title="메인으로 이동">
							<img src="${pageContext.request.contextPath}/resources/images/main_logo.png" alt="LAHAN"/>
							<img src="${pageContext.request.contextPath}/resources/images/main-logo-bold.png" alt="LAHAN" class="off"/>
							<span class="fixedd_logo"><img src="${pageContext.request.contextPath}/resources/images/main_logo_bl.png" alt="LAHAN3"/></span>
						</a>
					</h1> 
					
					<ul class="nav-list">
						<li>
							<a href="/hub/ko/hotel/brandIntroduce.do">라한</a>
						</li>
						<li>
							<a href="/hub/ko/package/list.do">스페셜 오퍼</a>
						</li>
						<li>
							<a href="/hub/ko/clublahan/membership.do">클럽라한</a>
						</li>
						<li>
							<a href="/hub/ko/onlineshop/subMain.do">온라인샵</a>
						</li>
					</ul>
				</div>
				<div class="h-box-right">
					<ul class="set-wrap">
						<li><a href="${pageContext.request.contextPath}/join/step1" title="회원가입">회원가입<!-- 회원가입 --></a></li>
						<li><a href="${pageContext.request.contextPath}/login/loginform" title="로그인">로그인<!-- 로그인 --></a></li>
                        <li><a href="/hub/ko/login/loginNonMemForm.do" title="예약확인" class="" layer-data="select1">예약확인<!-- 예약확인 --></a></li>   
					</ul>
					<a href="javascript:;" title="호텔찾기" class="btn-search-lahan open_layer" layer-data="search1"><span>호텔찾기<!-- 호텔찾기 --></span></a>
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
					<a href="/hub/ko/resv/step1.do" title="예약하기" class="btn-rev btn-gold" layer-data="select1">예약하기<!-- 예약하기 --></a>
				</div>
			</div>
            <div class="all-menulist">
				<div class="all-menulist-wrap">
					<ul class="all-1depth">
						<li><a href="/hub/ko/hotel/brandIntroduce.do" title="라한">라한<!-- 라한--></a></li>
						<li><a href="/hub/ko/hotel/brandIntroduce.do" title="브랜드 소개">브랜드 소개<!-- 브랜드 소개--></a></li>
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
