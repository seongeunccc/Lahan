<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_main.css">
	
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

@
keyframes spin { 0% {
	-webkit-transform: rotate(0deg);
}

100
%
{
-webkit-transform
:
rotate(
360deg
);
}
}
@
-webkit-keyframes spin { 0% {
	-webkit-transform: rotate(0deg);
}

100
%
{
-webkit-transform
:
rotate(
360deg
);
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

<header id="header" class="header">
			<!--(HEAD 최종수정일 : 2024-04-01 19:13:00)-->

			<div class="h-wrap">
				<div class="h-box-left">
				
				
					<h1 class="logo">
						<a href="../main.html" title="메인으로 이동">
							<span><img src="../../../static/pc/images/hub/main_logo_bl.png" alt="LAHAN"/></span>
						</a>
					</h1>
				
					<ul class="nav-list">

    
    
        
        
		    
			
				
			
		
						<li>
							<a href="../hotel/brandIntroduce.html">라한</a>
						</li>
    

    
    
        
        
		    
			
				
			
		
						<li>
							<a href="../package/list.html">스페셜 오퍼</a>
						</li>
    

    
    
        
        
		    
			
				
			
		
						<li>
							<a href="../clublahan/membership.html">클럽라한</a>
						</li>
    

    
    
        
        
		    
			
				
			
		
						<li>
							<a href="../onlineshop/subMain.html">온라인샵</a>
						</li>
    

    
    

    
    

    
    

					</ul>
				</div>
				<div class="h-box-right">
					<ul class="set-wrap">


						<li><a href="../join/step1.html" title="회원가입">회원가입<!-- 회원가입 --></a></li>
						<li><a href="loginForm.html" title="로그인">로그인<!-- 로그인 --></a></li>
                        <li><a href="loginNonMemForm.html" title="예약확인" class="" layer-data="select1">예약확인<!-- 예약확인 --></a></li>   

						
					</ul>
					<a href="javascript:;" title="호텔찾기" class="btn-search-lahan open_layer" layer-data="search1"><span>호텔찾기<!-- 호텔찾기 --></span></a>
					<div class="lang-box select">
						<div class="as-select selected">
							<span class="select-lang selected-value">
                                KOR
                                
                            </span>
						</div>
						<ul class="lang-wrap">
                            
                            
							<li class="option" value="ENG" onclick="location.href='../../en/main.html';">ENG</li>
                            
						</ul>
					</div>
					<a href="javascript:;" title="전체메뉴보기" class="btn-all">
						<span></span>
						<span></span>
						<span></span>
					</a>
					<a href="../resv/step1.html" title="예약하기" class="btn-rev btn-gold" layer-data="select1">예약하기<!-- 예약하기 --></a>
				</div>
			</div>
            <div class="all-menulist">
				<div class="all-menulist-wrap">
					<ul class="all-1depth">
						<li><a href="../hotel/brandIntroduce.html" title="라한">라한<!-- 라한--></a></li>
						<li><a href="../hotel/brandIntroduce.html" title="브랜드 소개">브랜드 소개<!-- 브랜드 소개--></a></li>
						<li>
							<a href="../hotel/hotelIntroduce.html" title="호텔 소개">호텔 소개<!-- 호텔 소개 --></a>
							<ul class="all-2depth">
								<li><a href="../hotel/hotelIntroduce.html" title="전체보기">전체보기<!-- 전체보기 --></a></li>
								<li><a href="../hotel/gyeongjuDc.html" title="라한셀렉트 경주">라한셀렉트 경주<!-- 라한셀렉트 경주 --></a></li>
								<li><a href="../hotel/jeonjuDc.html" title="라한호텔 전주">라한호텔 전주<!-- 라한호텔 전주 --></a></li>
								<li><a href="../hotel/pohangDc.html" title="라한호텔 포항">라한호텔 포항<!-- 라한호텔 포항 --></a></li>
								<li><a href="../hotel/ulsanDc.html" title="호텔현대 바이 라한 울산">호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></a></li>
								<li><a href="../hotel/mokpoDc.html" title="호텔현대 바이 라한 목포">호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></a></li>
							</ul>
						</li>
					</ul>
					<ul class="all-1depth">
						<li><a href="../package/list.html" title="스페셜 오퍼">스페셜 오퍼<!-- 스페셜 오퍼 --></a></li>
						<li><a href="../package/list.html" title="패키지">패키지<!-- 객실 패키지--></a></li>
						<li><a href="../promtn/list.html" title="프로모션">프로모션<!-- 프로모션 --></a></li>
						<li><a href="../spclguide/list.html" title="프로모션">스페셜 가이드<!-- 스페셜 가이드 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="../clublahan/membership.html" title="클럽라한">클럽라한<!-- 클럽라한--></a></li>
						<li><a href="../clublahan/membership.html" title="멤버십 소개">멤버십 소개<!-- 멤버십 소개--></a></li>
						<li>
							<a href="../clublahan/list.html" title="회원 전용 상품">회원 전용 상품<!-- 회원 전용상품 --></a>
							<ul class="all-2depth">
								<li><a href="../clublahan/list.html" title="패키지">패키지<!-- 객실패키지 --></a></li>
								<li><a href="../clublahan/promtnlist.html" title="프로모션">프로모션<!-- 프로모션 --></a></li>
							</ul>
						</li>
						<li><a href="../clublahan/mbershipInq/list.html" title="멤버십 문의">멤버십 문의<!-- 멤버십 문의 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="../onlineshop/subMain.html" title="온라인샵">온라인샵<!-- 온라인샵 --></a></li>
						<li><a href="../onlineshop/subMain932d.html?searchOnshopSe=S01" title="PB">PB<!-- PB --></a></li>
						<li><a href="../onlineshop/subMainf93b.html?searchOnshopSe=S02" title="상품권">상품권<!-- 상품권 --></a></li>
						<li><a href="../onlineshop/subMain45ae.html?searchOnshopSe=S03" title="선물세트">선물세트<!-- 선물세트 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="../notice/generalInfo/list.html" title="공지사항">공지사항<!-- 공지사항 --></a></li>
						<li><a href="../notice/generalInfo/list.html" title="일반안내">일반안내<!-- 일반안내 --></a></li>
						<li><a href="../notice/financialDisclosure/list.html" title="결산공고">결산공고<!-- 결산공고--></a></li>
						<li><a href="../notice/certificatesAwards/list.html" title="인증/수상 내역">인증/수상 내역<!-- 인증/수상 내역 --></a></li>
						<li><a href="../notice/recruitment/list.html" title="채용">채용<!-- 채용 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="../customer/contact.html" title="고객문의">고객문의<!-- 고객문의 --></a></li>
						<li><a href="../customer/contact.html" title="연락처">연락처<!-- 연락처 --></a></li>
						<li><a href="../customer/faq/list.html" title="자주 묻는 질문 (FAQ)">자주 묻는 질문 (FAQ)<!-- 자주 묻는 질문(FAQ) --></a></li>
						<li><a href="../customer/qnaForm.html" title="일반문의">일반문의<!-- 일반문의 --></a></li>
						<li><a href="../customer/consigned.html" title="위탁운영 문의">위탁운영 문의<!-- 위탁운영 문의 --></a></li>
						<li><a href="../customer/reports.html" title="제보">제보<!-- 제보 --></a></li>
					</ul>
					<ul class="all-1depth">
						<li><a href="loginForm0a54.html" title="마이페이지">마이페이지<!-- 마이페이지 --></a></li>
						<li><a href="loginForm177a.html" title="마이포인트">마이포인트<!-- 마이포인트 --></a></li>
						<li><a href="loginFormc20d.html" title="마이쿠폰">마이쿠폰<!-- 마이쿠폰 --></a></li>
<!--			예약조회/확인			
     <li><a href="#none" title="예약조회/확인">예약조회/확인</a></li>
-->
						<li><a href="loginFormb29f.html" title="개인정보관리/탈퇴">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a></li>
					</ul>
				</div>
			</div>
		
		</header>
		<div id="container" class="container">
			<!--(페이지 URL)-->










<script>
    let SUBMIT_STATUS = false;
    const LOGIN_ID_COOKIE_NM = "loginId";
    jQuery(function(){

        const saveId = getCookie(LOGIN_ID_COOKIE_NM);
        if (saveId != undefined && saveId != null) {
            jQuery("#userId").val(saveId);
            jQuery("#saveUserIdCheck").prop("checked", true);
        }


        //id , pw input enter 이벤트 추가
        jQuery(document).on("keyup", "#userId, #password", function(event){
            if (event.keyCode === 13) {
                login();
            }
        });


        //id input keyup 이벤트
        jQuery(document).on("keyup", "#userId", function(){

            const $id = jQuery(this);
            let value = $id.val();

            //알파벳 , 숫자만 입력 가능하도록
            $id.val(value.replace(/[^a-z|A-Z|0-9]/g, ''));

            //대문자 입력시 소문자로 치환
            $id.val($id.val().toLowerCase());
            // ---- 아이디 정규식 체크 end
        });



    });

    function login() {
        if (!validation()) {
            return false;
        }
        loginApi();
    }

    //필수값 체크
    function validation() {

        let flag = true;

        //id 입력 체크
        if (jQuery("#userId").val() == "") {
            jQuery("#userId").closest(".input-wrap").find(".txtGuideWrap").addClass("on");
            flag = false;
        }else {
            jQuery("#userId").closest(".input-wrap").find(".txtGuideWrap").removeClass("on");
        }

        //pw 입력 체크
        if (jQuery("#password").val() == "") {
            jQuery("#password").closest(".input-wrap").find(".txtGuideWrap").addClass("on");
            flag = false;
        }else {
            jQuery("#password").closest(".input-wrap").find(".txtGuideWrap").removeClass("on");
        }

        return flag;
    }

    function snsLoginPopup(snsType) {
        $("#selectedSnsType").val(snsType);
		window.open('', 'snsLogin', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
        let loginUrl = "";
        switch (snsType) {
            case "GOOGLE" : loginUrl = "https://accounts.google.com/o/oauth2/auth?client_id=642751551440-tt5fnjle2ejeq7fdbnuqtnsvb7rfdv42.apps.googleusercontent.com&amp;response_type=code&amp;redirect_uri=https://www.lahanhotels.com/sns/google/callback.do&amp;scope=profile+email"; break;
            case "FACEBOOK" : loginUrl = "https://www.facebook.com/v2.5/dialog/oauth?client_id=2076315245911231&amp;response_type=code&amp;scope=email&amp;redirect_uri=https%3A%2F%2Fwww.lahanhotels.com%2Fsns%2Ffacebook%2Fcallback.do"; break;
            case "KAKAO" : loginUrl = "https://kauth.kakao.com/oauth/authorize?client_id=35ff55bdd6671142ae413edc7cd1bc78&amp;response_type=code&amp;redirect_uri=https://www.lahanhotels.com/sns/kakao/callback.do"; break;
            case "NAVER" : loginUrl = "https://nid.naver.com/oauth2.0/authorize?client_id=4QZQrDPw29Mu5pG0K9Ed&amp;response_type=code&amp;redirect_uri=https://www.lahanhotels.com/sns/naver/callback.do"; break;
        }
        document.snsLoginForm.action = loginUrl;
        document.snsLoginForm.target = "snsLogin";
        document.snsLoginForm.submit();
    }

    //로그인 성공시 callback
    function fncSnsLoginCallback() {
		snsLoginApi()
    }

    function snsLoginApi() {

         if(SUBMIT_STATUS){
            alert("이미 처리 중입니다. 잠시만 기다려주세요. ");
            return;
        }

        let langCode = jQuery("#langCode").val();

		jQuery.ajax({
			type : "POST",
			url : "/hub/api/login/snsLogin.json",
			dataType : "json",
			data : {
                nextURL: jQuery("#nextURL").val()
			},
			async : true,
			global : false,
			beforeSend : function() {
			    SUBMIT_STATUS = true;
			},
			complete: function () {
			    SUBMIT_STATUS = false;
			},
			success : function(data){
			    if (data.isSuccess == "true") {
			        //로그인 성공

					//로그인은 성공 했으나, 회원 상태에 따라 redirect
			        if (data.redirectURL) {
			            location.href = data.redirectURL;
			        }else {
			            //이동해야할 nextURL 있을 경우
			            if (data.nextURL != null) {
			                location.href = data.nextURL;
			            }else {
			                //메인페이지
			                location.href = `/hub/${langCode}/main.do`;
			            }
			        }

			    }else {
			        //로그인 실패
			        //결과 메세지가 있을 경우 메세지 출력
			        if (data.resultMsg != null && data.resultMsg != "") {
			            alert(data.resultMsg.replaceAll("\\n", "\n"));
			        }

			        //리다이렉트 url이 있을경우
			        //휴면
			        if (data.redirectURL != null) {
			            location.href = data.redirectURL;
			        }
			    }

			},
			error:function(r, s, e){
			    alert("API 통신중 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
			    return false;
			}
			})

    }

    function loginApi() {

        if(SUBMIT_STATUS){
            alert("이미 처리 중입니다. 잠시만 기다려주세요. ");
            return;
        }

        let langCode = jQuery("#langCode").val();
        jQuery.ajax({
            type : "POST",
            url : "/hub/api/login/login.json",
            dataType : "json",
            data : {
                userId: jQuery("#userId").val(),
                password: jQuery("#password").val(),
                nextURL: jQuery("#nextURL").val()
            },
            async : true,
            global : false,
            beforeSend : function() {
                SUBMIT_STATUS = true;
            },
            complete: function () {
                SUBMIT_STATUS = false;
            },
            success : function(data){
                if (data.isSuccess == "true") {
                    //로그인 성공

                    if(jQuery("#saveUserIdCheck").is(":checked")){
                        //로그인 id 저장
                        setCookie(LOGIN_ID_COOKIE_NM, jQuery("#userId").val(), 30);
                    }

					//로그인은 성공 했으나, 회원 상태에 따라 redirect
	                // 휴면 , pw만료
                    if (data.redirectURL) {
                        location.href = data.redirectURL;
                    }else {
                        //이동해야할 nextURL 있을 경우
	                    if (data.nextURL != null) {
	                        location.href = data.nextURL;
	                    }else {
	                        //메인페이지
	                        location.href = `/hub/${langCode}/main.do`;
	                    }
                    }

                }else {
                    //로그인 실패
                    //결과 메세지가 있을 경우 메세지 출력
                    if (data.resultMsg != null && data.resultMsg != "") {
                        alert(data.resultMsg.replaceAll("\\n", "\n"));
                    }

                    //리다이렉트 url이 있을경우
                    if (data.redirectURL != null) {
                        location.href = data.redirectURL;
                    }
                }

            },
            error:function(r, s, e){
                alert("API 통신중 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
                return false;
            }
        })
    }


</script>
<input type="hidden" id="nextURL" name="nextURL" value="" />
<form name="snsLoginForm" method="get"></form>
<form name="form" method="post">
<input type="hidden" id="langCode" name="" value="ko" />

    <div id="container" class="container login">
        <section class="sub-contents">
            <div class="sub-contents-wrap login">
                <!-- 컨텐츠 시작 -->
                <div class="sub-tit-wrap">
                    <h3 class="sub-tit01">로그인</h3>
                    <p class="sub-txt01">클럽라한에 오신 것을 환영합니다. 포인트 혜택 및 다양한 서비스를 이용해보세요.</p>
                </div>
                
                <div class="tab-wrap login">
                    <ul>
                        <li class="on"><a href="#none" title="회원" class="">회원</a></li>
                        <li><a href="loginNonMemForm.html" title="비회원" class="">비회원<!-- 비회원 --></a></li>
                    </ul>
                </div>
                <div class="login-wrap ty-02">
                    <div class="login-box">
                        <div class="input-login-wrap">
                            <div class="input-wrap">
                                <input type="text" id="userId" name="userId" placeholder="아이디를 입력해 주세요." maxlength="20">
                                <div class="txtGuideWrap"><!-- 에러 문구 활성화시 class on 추가 -->
                                    <ul class="txtGuide">
                                        <li class="error"><p>아이디를 입력해 주세요.</p></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="input-wrap">
                                <input type="password" id="password" name="password" placeholder="비밀번호를 입력해 주세요." maxlength="20">
                                <div class="txtGuideWrap"><!-- 에러 문구 활성화시 class on 추가 -->
                                    <ul class="txtGuide">
                                        <li class="error"><p>비밀번호를 입력해 주세요.</p></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="idsave-wrap">
									<span class="frm frm-chk">
					                  <input type="checkbox" id="saveUserIdCheck"><label for="saveUserIdCheck">아이디 저장</label>
					                </span>

                                <ul class="loginFind">
                                    <li><a href="findId.html">아이디/비밀번호 찾기</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="btn-inline-box">
                            <button type="button" class="loginbtn" onclick="login(); return false;">로그인</button>
                        </div>
                        <ul class="loginSns">
                            <li><a href="javascript:snsLoginPopup('NAVER')" class="lo-icon lo-naver"><span>네이버 로그인</span></a></li>
                            <li><a href="javascript:snsLoginPopup('GOOGLE')" class="lo-icon lo-google"><span>구글 로그인</span></a></li>
                            <li><a href="javascript:snsLoginPopup('KAKAO')" class="lo-icon lo-kakao"><span>카카오 로그인</span></a></li>
                            
                        </ul>
                    </div>
                    <div class="login-line">
                        <span></span>
                    </div>
                    <div class="login-box-wrap">
                        <div class="login-box">
                            <div class="login-txt-box">
                                <h3>아직 클럽라한의 멤버가 아니신가요?</h3>
                                <p>클럽라한 가입 후, 회원 전용 혜택과 특별한 서비스를 만나보세요.</p>
                            </div>
                            <div class="btn-inline-box">
                                <button type="button" onclick="location.href='../join/step1.html'" class="onlineMemBtn">신규 가입하기</button>
                            </div>
	                        <p class="join-guide-txt">클럽라한은 내국인 전용 멤버십으로, 가입을 위해서는 국내에서 개통한 본인명의의 휴대폰번호가 필요합니다.</p>
                        </div>
                        <div class="login-box">
                            <div class="login-txt-box">
                                <h3>이미 현장에서 가입하셨나요?</h3>
                                <p>간단한 본인인증 후, 마이페이지에서 포인트 및 상세정보를 확인하세요.</p>
                            </div>
                            <div class="btn-inline-box">
                                <button type="button" class="onlineMemBtn" onclick="location.href='../join/off/step1.html'">온라인 인증하기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 컨텐츠 끝 -->
            </div>
        </section>
    </div>

</form>
		</div>
		<footer id="footer" class="footer">
			<!--(FOOTER 최종수정일 : 2023-02-28 08:19:02)-->

			<div class="f-wrap">
				<div class="f-box-top">
					<div class="box-top-inner">
						<ul class="f-nav-list">
                            <li><a href="../hotel/brandIntroduce.html" title="라한 브랜드">라한 브랜드<!-- 라한 브랜드 --></a></li>
							<li><a href="../clublahan/membership.html" title="멤버십">멤버십<!-- 무료멤버십 --></a></li>
							<li><a href="../notice/generalInfo/list.html" title="공지사항">공지사항<!-- 공지사항 --></a></li>
							<li><a href="../customer/contact.html" title="제안/제보">제안/제보<!-- 고객문의 --></a></li>
							<li><a href="../ethical/terms.html" title="윤리경영">윤리경영<!-- 윤리경영 --></a></li>
							<li><a href="../sitemap.html" title="사이트맵">사이트맵<!-- 사이트맵 --></a></li>
						</ul>
						<ul class="f-nav-list">
							<li><a href="../termsUse/terms.html" title="이용약관">이용약관<!-- 이용약관 --></a></li>
							<li><a href="../terms/terms.html" title="개인정보처리방침" class="pr-po"><strong>개인정보처리방침<!-- 개인정보처리방침 --></strong></a></li>
						</ul>
					</div>
				</div>
				<div class="f-box-bottom">
					<div class="box-bottom-inner">
						<div class="box-bottom-left">
							<span class="f-logo">
								<img src="../../../static/pc/images/hub/footer_logo.png" alt="LAHAN LOGO"/>
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
									    <span><img src="../../../static/pc/images/common/f-cer1.png" alt="호텔 예약 서비스 및 멤버십 서비스 인증 이미지"></span>
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
										<li><a href="../../../mokpo/ko/main.html" title="MOKPO" class="option" target="_blank">호텔현대 바이 라한 목포<!-- 호텔현대 바이 라한 목포 --></a></li>
										<li><a href="../../../ulsan/ko/main.html" title="ULSAN" class="option" target="_blank">호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></a></li>
										<li><a href="../../../pohang/ko/main.html" title="POHANG" class="option" target="_blank">라한호텔 포항<!-- 라한호텔 포항 --></a></li>
										<li><a href="../../../jeonju/ko/main.html" title="JEONJU" class="option" target="_blank">라한호텔 전주<!-- 라한호텔 전주 --></a></li>
										<li><a href="../../../gyeongju/ko/main.html" title="GYEONGJU" class="option" target="_blank">라한셀렉트 경주<!-- 라한셀렉트 경주 --></a></li>
										<li><a href="../main.html" title="LAHAN" class="option" target="_blank">라한<!-- 라한 --></a></li>
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
                        <a href="../main.html" title="라한" target="_blank">
						<span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_wh.png" alt="라한"/></span>
						<span><img src="../../../static/pc/images/hub/search/lahan_bl.png" alt="라한"/></span>
						<p>라한<!-- 라한 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item2">
                        <a href="../../../gyeongju/ko/main.html" title="라한셀렉트 경주" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_select_wh.png" alt="라한셀렉트 경주"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_select_bl.png" alt="라한셀렉트 경주"/></span>
						    <p>라한셀렉트 경주<!-- 라한셀렉트 경주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item3">
                        <a href="../../../jeonju/ko/main.html" title="라한호텔 전주" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 전주"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 전주"/></span>
						    <p>라한호텔 전주<!-- 라한호텔 전주 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item4">
                        <a href="../../../pohang/ko/main.html" title="라한호텔 포항" target="_blank">
    						<span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hotels_wh.png" alt="라한호텔 포항"/></span>
	    					<span><img src="../../../static/pc/images/hub/search/lahan_hotels_bl.png" alt="라한호텔 포항"/></span>
		    				<p>라한호텔 포항<!-- 라한호텔 포항 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item5">
                        <a href="../../../ulsan/ko/main.html" title="호텔현대 바이 라한 울산" target="_blank">
   						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 울산"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 울산"/></span>
						    <p>호텔현대 바이 라한 울산<!-- 호텔현대 바이 라한 울산 --></p>
                        </a>
					</div>
					<div class="lahan-item lahan-item6">
                        <a href="../../../mokpo/ko/main.html" title="호텔현대 바이 라한 목포" target="_blank">
						    <span class="lahan-item-hover"><img src="../../../static/pc/images/hub/search/lahan_hd_wh.png" alt="호텔현대 바이 라한 목포"/></span>
						    <span><img src="../../../static/pc/images/hub/search/lahan_hd_bl.png" alt="호텔현대 바이 라한 목포"/></span>
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

</body>
</html>