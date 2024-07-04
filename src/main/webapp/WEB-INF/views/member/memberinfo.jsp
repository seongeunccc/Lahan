<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한</title>

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
        window.onload = function() {
            const currentMembership = '${memberinfo.membership}'.trim();
            const nextGradeElement = document.getElementById('nextGrade');

            let nextGrade;
            switch(currentMembership) {
                case 'SILVER':
                    nextGrade = 'GOLD';
                    break;
                case 'GOLD':
                    nextGrade = 'DIAMOND';
                    break;
                case 'DIAMOND':
                    nextGrade = '최고 등급입니다';
                    break;
                default:
                    nextGrade = '등급 없음';
            }

            nextGradeElement.innerText = nextGrade;
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
				<section class="sub-contents mypage">
					<div class="sub-contents-wrap">
						<!-- 컨텐츠 시작 -->
						<div class="top-menu-wrap">

							<ul class="top-menu">
								<li class="on"><a href="/hub/ko/mypage.do">마이페이지<!-- 마이페이지 --></a></li>
								<li><a href="/hub/ko/mypage/mypoint/myPointForm.do">마이포인트<!-- 마이포인트 --></a></li>
								<li><a href="/hub/ko/mypage/mycoupon/myCouponForm.do">마이쿠폰<!-- 마이쿠폰 --></a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/myResv">예약조회/확인<!-- 예약조회/확인 --></a></li>
								<li><a href="/hub/ko/mypage/update/pwCheckForm.do">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a></li>
							</ul>
						</div>
						
						

						<div class="sub-tit-wrap">
							<h3 class="sub-tit01">
								마이페이지
								<!-- 마이페이지 -->
							</h3>
						</div>
						<div class="myAccountInfo">
							<dl class="myInfoList">
								<dt>이름</dt>
								<dt>${memberinfo.name }</dt>
							</dl>
							<dl class="myInfoList">
								<dt>회원아이디</dt>
								<dt>${memberinfo.id }</dt>
								<dd id="mbrNumber"></dd>
							</dl>
							<dl class="myInfoList">
								<dt>회원등급</dt>
								<dt>${memberinfo.membership }</dt>
								<!-- <dd class="grade" id="currentGrade"></dd> -->
								<!-- 등급별 클래스 silver / gold / diamond 입니다  -->
							</dl>
							<dl class="myInfoList">
								<dt>보유포인트</dt>
								<dt>${memberinfo.point} P</dt>
							</dl>
							<dl class="myInfoList">
								<dt>가입일</dt>
								<dt>${memberinfo.joindate}</dt>
							
							</dl>
						</div>
						
						
						<div class="myMemberArea">
							<div class="mmbArea">
								<div class="mypageMainTit">
									<h1>적립 및 등급 현황</h1>
									<a href="/hub/ko/clublahan/membership.do" target="_blank"
										class="moreBtn">등급별 혜택보기 </a>
								</div>
								<div class="mmbBox grade">
									<div class="mygradeCircle">
										<!-- 등급별 클래스 silver / gold / diamond 입니다  -->
										<div class="circlewrap">
											<div class="upgradeNum">
												<span></span>
											</div>
											<div id="upgradeCircle" class="circle">
												<!--w10 ~ w100 10단위로 클래스 생성  -->
												<div class="mygrade">
													<div class="gradeList">
														<p>현재등급</p>							
														<span class="grade" id="circleCurrentGrade">${memberinfo.membership }</span>														
														<div class="occupy" id="totalPaymentAmount">지금까지 결재금액(포인트 아님, 칼럼 추가)</div>
													</div>
												</div>
												<div class="slice1 slice-list"></div>
												<div class="slice2 slice-list"></div>											
											</div>
											<div>Next Grade : <span id="nextGrade"></span></div>
											<div>필요 결제 금액 : <span id="nextGrade"></span></div> 
										</div>
									</div>
									<div id="upgradeInfo" class="bottomTxt">
										<!-- 등급별 클래스 silver / gold / diamond 입니다  -->

									</div>
								</div>
							</div>
							<div class="mmbArea">
								<div class="mypageMainTit">
									<h1>인센티브 혜택</h1>
									<a href="/hub/ko/clublahan/membership.do" target="_blank"
										class="moreBtn">혜택 상세보기 </a>
								</div>
								<div class="mmbBox">
									<div id="incentiveBar" class="incentiveBar_new ">
										<!-- 7박일때 w07 : w01 ~ w20 클래스 생성 -->
										<div id="incentiveItemArea" class="topBarWap">
											<div class="barTd circleBox btd03">
												<p>
													수영장 or 사우나<br />1인 무료
												</p>
											</div>
											<div class="barTd circleBox btd05">
												<p>
													2인 조식<br />무료
												</p>
											</div>
											<div class="barTd circleBox btd20">
												<p>
													주중 디럭스<br />숙박권
												</p>
											</div>
										</div>
									</div>
									<div class="incentiveBottom">
										<div class="bottom-table">
											<div class="box">
												<div class="txt_wrap">
													<strong>현재 투숙일 수 </strong>
													<p>2024-07-02일 기준</p>
												</div>
												<div id="currentNights" class="incentive_wrap">
													<p>
														<em>0</em> 박
													</p>
												</div>
											</div>
											<div class="box">
												<div class="txt_wrap">
													<strong id="benefitsTitle"></strong>
													<p id="benefitsItem"></p>
												</div>
												<div id="benefitsCompletionMessage" class="coupon_wrap"
													style="display: none;">
													<button type="button" class="coupon">쿠폰발급 완료</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="mypageMainTit">
							<h1>최근 포인트 적립/사용 내역</h1>
							<a href="/hub/ko/mypage/mypoint/myPointForm.do" class="moreBtn">포인트내역
								더보기 </a>
						</div>
						<div id="points" class="sub-board-list mypagemain">
							<table class="table-group">
								<colgroup>
									<col width="280px">
									<col width="*">
									<col width="390px">
									<col width="390px">
								</colgroup>
								<thead>
									<tr>
										<td>날짜</td>
										<td>호텔</td>
										<td>적립포인트</td>
										<td>사용포인트</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="4">
											<!-- 테이블 안에 데이터 없음 이미지 넣어야 할 경우 colspan 맞춰줘야됨 -->
											<div class="nodata-wrap">
												<img src="/static/pc/images/hub/icon/ico_nodata.png"
													class="nodata_img">
												<p>데이터가 없습니다.</p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="mpBottmGuide type02">
							<ul>
								<li>※ 적립 포인트는 2024년 07월 02일 기준입니다.</li>
								<li>※ 당일 적립된 포인트는 익일 확인 가능합니다.</li>
								<li>※ 적립된 포인트는 1,000p부터 사용 가능합니다.</li>
							</ul>
						</div>
						<!-- 컨텐츠 끝 -->
					</div>
				</section>
			</div> <%@ include file="/WEB-INF/views/footer.jsp"%></body>
</html>