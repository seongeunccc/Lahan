<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라한 : 개인정보관리/탈퇴 </title>

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
			<!--(페이지 URL)-->


<script>

    function checkPassword() {

        if (!validation()) {
            return false;
        }

        checkPasswordApi();
    }

    function validation() {
        if (jQuery("#password").val() == "") {
            alert("비밀번호를 입력해 주세요. ");
            return false;
        }
        return true;
    }

</script>


<form id="form" name="form">
    <input id="langCode" type="hidden" value="ko"/>
</form>
<div id="container" class="container">
    <section class="sub-contents mypage">
        <div class="sub-contents-wrap">
            <!-- 컨텐츠 시작 -->
            <div class="top-menu-wrap">
                











<ul class="top-menu">
    <li  ><a href="${pageContext.request.contextPath}/member/memberinfo">마이페이지<!-- 마이페이지 --></a></li>
    <li ><a href="/hub/ko/mypage/mypoint/myPointForm.do">마이포인트<!-- 마이포인트 --></a></li>
    <li ><a href="/hub/ko/mypage/mycoupon/myCouponForm.do">마이쿠폰<!-- 마이쿠폰 --></a></li>
	<li ><a href="${pageContext.request.contextPath}/mypage/myResv">예약조회/확인<!-- 예약조회/확인 --></a></li>
    
    <li  class="on">
        <a href="${pageContext.request.contextPath}/mypage/update">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a>
    </li>
</ul>
            </div>
            <div class="sub-tit-wrap">
                <h3 class="sub-tit01">개인정보관리 </h3>
            </div>
            <div class="member_info_wrap">
                <div class="gray-box-wrap mypage">
                    <div class="gray-box">
                        <div class="gray-box-inner">
                            <h3>비밀번호 확인 </h3>
                            <h4>
                                <span class="name-txt">${memberinfo.name}(${memberinfo.id})</span> 님의 안전한 정보보호를 위하여 비밀번호를 다시 한번 확인합니다. <br>
                                비밀번호가 타인에게 노출되지 않도록 주의하여 주세요. 
                            </h4>
                            <div class="gray-input mb0"><!-- 221208 mb0 class 추가 -->
                                <div class="input-wrap">
                                    <input id="password1" type="password" placeholder="비밀번호를 입력해 주세요. " data-valid="Y">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-inline-box mt80">
                    <a href="#none" id="checkBtn" title="확인" class="btn btnOK">확인 </a>
                </div>
            </div>
            <!-- 컨텐츠 끝 -->
        </div>
    </section>
</div>
		</div>	
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>