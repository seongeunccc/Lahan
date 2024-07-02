<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <title>라한</title>
   
	<link rel="canonical" href="https://www.lahanhotels.com/">

	<!-- css -->
	<!-- <link rel="stylesheet" href="/static/pc/css/jquery-ui.min.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	
	<!-- <link rel="stylesheet" href="/static/pc/css/common/font.css"> -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
		
	<!-- <link rel="stylesheet" href="/static/pc/css/common/common.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	
	<!-- <link rel="stylesheet" href="/static/pc/css/hub/ko/h-common.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_h-common.css">
	
    <!-- <link rel="stylesheet" href="/static/pc/css/swiper-bundle.min.css"> -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	
	<!-- <link rel="stylesheet" href="/static/pc/css/hub/ko/contents.css"> -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_contents.css">
	
    <!-- <link rel="stylesheet" href="/static/pc/css/hub/ko/contents1.css"> -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_contents1.css">
    
    <!-- <link rel="stylesheet" href="/static/pc/css/hub/ko/contents2.css"> -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_contents2.css">
	
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
	

	<script type="text/javascript" src="https://www.lahanhotels.com//static/bluewaves/js/date_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com//static/bluewaves/js/num_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com//static/bluewaves/js/string_util.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com//static/bluewaves/js/bluewaves_common.js"></script>
    <script type="text/javascript" src="https://www.lahanhotels.com//static/bluewaves/js/paging_util.js"></script>
    

    <!-- Google Tag Manager -->
  <!--   <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MTWJWS8');</script> -->
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
<body>

<!-- <form id="form" name="form" method="post"> -->

<form action="./step3" method="post" onsubmit="return validateForm()">
    <input type="hidden" name="agreeEmail" value="${param.agreeEmail}">
    
<div id="container" class="container">
    <div class="join-contents-wrap">
        <div class="joinTitWrap">
            <strong>회원가입</strong>
        </div>
        <div class="joinStepWrap">
            <ul>
                <li>
                    <span>Step1</span>
                    <p>약관동의</p>
                </li>
                <li class="on">
                    <span>Step2</span>
                    <p>정보입력</p>
                </li>
                <li>
                    <span>Step3</span>
                    <p>가입완료</p>
                </li>
            </ul>
        </div>
        <div class="joinIfBox">
            <p>편리한 클럽라한 이용 및 가입 완료를 위하여 고객님의 멤버십 및<br/>개인 정보를 입력해 주시기 바랍니다.</p>
        </div>
        <div class="joinMemberBox top">
            <div class="mbBoxTit">
                <strong>멤버십 정보</strong>
                <span>* 표시 필수 입력 사항</span>
            </div>
            <div class="mbfrmList">
                <div class="mbfrm necessary">
                    <div id="idArea" class="floatInput join-id-overlap">
                        <!-- <span class="overlap_ico">중복 확인 완료</span>중복확인 완료 시 checked 추가 -->
                        <input type="text" id="id" name="id" data-valid='Y' placeholder="아이디를 입력해 주세요." aria-required="true" maxlength="20">
                        <span class="overlapBtn"><button type="button" id="existsIdBtn" class="btn-inactive">아이디 중복 확인</button></span><!-- 중복확인 완료 시 overlapBtn -  display:none -->
                        <div id="idRangeAlert" class="alert_red" style="display: none;">영문(소문자), 6~20자리 입력이 필요합니다.</div>
	                    <div id="idDuplicateAlert" class="alert_red" style="display: none;">아이디 중복확인을 해주세요</div>
                    </div>
                </div>
                <div id="pw1Area" class="mbfrm necessary">
                    <input type="password" name="pw" id="pw1" data-valid='Y' placeholder="비밀번호를 입력해 주세요." aria-required="true" maxlength="20">
                    <div class="alert_red" style="display: none;">8~20자의 영문과 숫자, 특수문자(!@#$%^&*)를 혼용하여 입력해주세요. </div>
                    <div class="guide_goldTxt">※ 8~20자의 영문과 숫자, 특수문자(!@#$%^&*)를 혼용하여 입력해주세요. </div>
                </div>
                <div id="pw2Area" class="mbfrm necessary">
                    <input type="password" id="pw2" name="confirmPassword" data-valid='Y' placeholder="한번 더 같은 비밀번호를 입력해 주세요." aria-required="true" maxlength="20">
                    <div class="alert_red" style="display: none;">한번 더 같은 비밀번호를 입력해 주세요.</div>
                </div>
            </div>
        </div>
        <div class="joinMemberBox bottom">
            <div class="mbBoxTit">
                <strong>개인 정보</strong>
                <span>* 표시 필수 입력 사항</span>
            </div>
            <div class="mbfrmList">
                <div class="mbfrm necessary">
                    <input type="text" id="mbrName" name="name" data-valid='Y' placeholder="이름을 입력해 주세요." aria-required="true">
                    <div class="alert_red" style="display: none;">이름을 입력해 주세요.</div>
                </div>
                <div id="eNameArea" class="mbfrm necessary">
                    <div class="floatInput">
                        
                        <input type="text" id="mbrNameEnglish" placeholder="영문 이름을 입력해주세요. " name="en_name" aria-required="true" data-valid='Y'>
                        <div class="alert_red" style="display: none;">이름(영문) 항목 입력이 필요합니다.</div>
                    </div>
                </div>
                <div class="mbfrm necessary">
                    <div class="floatInput">
                        <input type="text" id="mbrBirthday" name="birth" data-valid='Y' placeholder="생년월일을 입력해 주세요. ex)19910909" maxlength="8" aria-required="true" >
	                    
                        
                        <div class="alert_red" style="display: none;">생년월일을 입력해 주세요.</div>
                    </div>
                </div>
                <div class="mbfrm necessary">
                    <input type="text" id="mobileNo" name="phone" data-valid='Y' placeholder="휴대폰 번호를 입력해 주세요.  ex)01012345678" maxlength="11" aria-required="true" >
                    <div class="alert_red" style="display: none;">휴대폰 번호를 입력해 주세요.</div>
                </div>
                
                <div class="mbfrm necessary">
                    <input type="text" id="email" name="email" data-valid='Y' placeholder="이메일을 입력해주세요.  ex)leeseulki@kimseungeun.com" maxlength="11" aria-required="true" >
                    <div class="alert_red" style="display: none;">이메일을 입력해 주세요.</div>
                </div>
               
               
                <!-- <div id="emailArea" class="mbfrm necessary">
                    <div class="floatInput">
                        <div class="emailWrap">
                            <input type="text" id="email1" placeholder="이메일을 입력해주세요. " aria-required="true" data-part-valid="Y">
                            <span class="division">@</span>
                            <input type="text" id="email2" aria-required="true" data-part-valid="Y">
                        </div>
                        <div class="emailSelect">
                            <div class="select-wrap email">
                                <div class="selected">
                                    <span class="selected-value">직접입력 </span>
                                    <em class="select-arrow"></em>
                                </div>
                                <ul id="emailList" class="select-box" data-part-valid="Y">
                                    <li class="option" data-first="true">직접입력 </li>
                                    
                                        <li class="option">naver.com</li>
                                    
                                        <li class="option">hanmail.net</li>
                                    
                                        <li class="option">hotmail.com</li>
                                    
                                        <li class="option">nate.com</li>
                                    
                                        <li class="option">gmail.com</li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="mbrEmail" name="mbrEmail" value="" data-valid='Y'/>
                    <div class="alert_red" style="display: none;">이메일 주소 형식이 맞지 않습니다. 다시 확인해 주세요.</div>
                </div> -->

                <!-- <div class="mbfrm">
                    <div class="jobSelect">
                        <div class="select-wrap">
                            <div class="selected">
                                <span class="selected-value">거주 도시를 선택해 주세요.</span>
                                <em class="select-arrow"></em>
                            </div>
                            <ul id="rCityList" class="select-box">
	                            <li class="option" data-value="">거주 도시를 선택해 주세요.</li>
                                
                                    <li class="option" data-value="서울특별시">서울특별시</li>
                                
                                    <li class="option" data-value="부산광역시">부산광역시</li>
                                
                                    <li class="option" data-value="인천광역시">인천광역시</li>
                                
                                    <li class="option" data-value="대구광역시">대구광역시</li>
                                
                                    <li class="option" data-value="대전광역시">대전광역시</li>
                                
                                    <li class="option" data-value="광주광역시">광주광역시</li>
                                
                                    <li class="option" data-value="울산광역시">울산광역시</li>
                                
                                    <li class="option" data-value="세종특별자치시">세종특별자치시</li>
                                
                                    <li class="option" data-value="경기도">경기도</li>
                                
                                    <li class="option" data-value="강원도">강원도</li>
                                
                                    <li class="option" data-value="충청북도">충청북도</li>
                                
                                    <li class="option" data-value="충청남도">충청남도</li>
                                
                                    <li class="option" data-value="전라북도">전라북도</li>
                                
                                    <li class="option" data-value="전라남도">전라남도</li>
                                
                                    <li class="option" data-value="경상북도">경상북도</li>
                                
                                    <li class="option" data-value="경상남도">경상남도</li>
                                
                                    <li class="option" data-value="제주특별자치도">제주특별자치도</li>
                                
                            </ul>
                        </div>
                    </div>
                    <input type="hidden" id="addrCityName" name="addrCityName" value="">
                    <div class="alert_red" style="display: none;">거주 도시를 선택이 필요합니다.</div>
                </div>

	            <div class="mbfrm">
					<div class="jobSelect">
						<div class="select-wrap">
							<div class="selected">
								<span class="selected-value">(호텔 현장가입 시) 가입 진행호텔을 선택해 주세요.</span>
								<em class="select-arrow"></em>
							</div>
							<ul id="hotelList" class="select-box">
								
							</ul>
						</div>
					</div>
		            <input type="hidden" id="hotelCode" name="hotelCode" value="">
				</div> -->
				
				   <div id="adrsArea" class="mbfrm necessary">
                    <div class="floatInput">
                        
                        <input type="text" id="adrs" placeholder="주소를 입력해주세요 " name="adrs" aria-required="true" data-valid='Y'>
                        <div class="alert_red" style="display: none;">주소 입력이 필요합니다.</div>
                    </div>
                </div>
 
                 <div class="mbfrm">
                    <input type="text" id="recommendedCode" name="recomId" data-valid='N' placeholder="추천인 코드" aria-required="false" value="" />
                </div>
                <div class="mbfrm">
                    <input type="text" id="couponCode" name="proCode" data-valid='N' placeholder="프로모션 코드" aria-required="false" value="" />
                </div>
            </div>
        </div>
        <div class="joinBtnArea btn-inline-box">
            <a href="#none" onclick="cancel();" title="취소" class="btn btn-navy-line">취소</a>
             <button type="submit" class="btn btn-primary">가입하기</button>
            <!-- <a href="#none" id="nextBtn" onclick="join(); return false;" title="가입완료" class="btn btn-inactive">가입완료</a> --> <!--모든정보입력 시 btn-active 클래스변경 -->
        </div>
    </div>
</div>
</form>



</body>
</html>