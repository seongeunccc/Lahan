<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한 : 예약 완료</title>
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	<link rel="stylesheet" href="https://www.lahanhotels.com/static/pc/css/hub/ko/resv.css">
	
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


<script>

</script>

<form name="form" method="post">

</form>

<div id="container" class="container">
    <div class="join-contents-wrap">
        <div class="joinTitWrap">
            <strong>호텔 예약</strong>
        </div>
        <div class="resvStepWrap">
            <ul>
                <li>
                    <span>Step1</span>
                    <p>호텔/날짜/인원 선택</p>
                </li>
                <li>
                    <span>Step2</span>
                    <p>객실 선택</p>
                </li>
                <li>
                    <span>Step3</span>
                    <p>옵션 선택</p>
                </li>
                <li >
                    <span>Step4</span>
                    <p>예약정보 입력</p>
                </li>
            </ul>
        </div>
        <div class="join-complete-Box">
            <div class="imgBox">
            <img src="${pageContext.request.contextPath}/resources/images/join_complete.png" alt="가입완료"/>
                
            </div>
            <div class="joinInfo">
                <p class="joinName">
	                <span class="userName">${joinDto.id} </span> 님,
                </p>
                <div class="completeTxt">예약이 정상적으로 완료되었습니다.<Br/>회원 전용 혜택과 특별한 서비스를 만나보세요.</div>
                <div class="numBox">
                    예약번호 <strong>${resvNo}</strong>
                </div>
            </div>
            <p class="txtguide">※ 예약 내역 확인 및 수정은 <span class="gold_txt">마이페이지 > 예약조회/확인</span>에서 가능합니다.</p>
        </div>
        <div class="joinBtnArea btn-inline-box">

            <a href="${pageContext.request.contextPath}/main" title="메인화면" class="btn btn-navy-line">메인화면</a>
            <a href="${pageContext.request.contextPath}/login/loginForm" title="로그인" class="btn btn-gold">로그인</a>
        </div>
    </div>
</div>
		</div>
 
<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>