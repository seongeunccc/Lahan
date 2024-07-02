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
        
       
        
		
		<div id="container" class="container">
			<!--(페이지 URL)-->

<script>
/* 제이쿼리 말고 따로 만듦  */
function validateForm() {
	  var requiredCheckboxes = document.querySelectorAll('input[type=checkbox][required]');
	  var isChecked = false;

	  for (var i = 0; i < requiredCheckboxes.length; i++) {
	    if (requiredCheckboxes[i].checked) {
	      isChecked = true;
	      break;
	    }
	  }

	  if (!isChecked) {
	    alert('필수 항목에 동의해주세요.');
	    return false;
	  }

	  return true;
	}
	
/* 제이쿼리 말고 따로 만듦 끝  */

    jQuery(function(){

        //마케팅 개인정보 수집 동의 선택에 따라 마케팅 개인정보 처리업무 위탁 동의 선택 check box
        jQuery(document).on("click", "#mktAgree", function(){
           if(jQuery(this).is(":checked")){
               jQuery("#mktCnsgmntAgree").prop("checked", true);
           }else {
               jQuery("#mktCnsgmntAgree").prop("checked", false);
           }
        });

        jQuery(document).on("change keyup click", "[data-valid='Y']", function(){
            let flag = "Y";

            //필수 체크 대상 요소(data-valid = 'Y')
            jQuery("[data-valid='Y']").each(function () {
                const $this = jQuery(this);

                //체크 박스일 경우 체크 여부
                if($this.attr("type") == "checkbox" ){
                    if(!$this.is(":checked")){
                        flag = "N";
                        return false;
                    }
                }else {
                    if($this.val() == ""){
                        flag = "N";
                        return false;
                    }
                }
            });

            if (flag == "Y") {
                jQuery("#nextBtn").removeClass("btn-inactive");
                jQuery("#nextBtn").addClass("btn-active");
                jQuery("#nextBtn").attr("onclick", "goStep2(); return false;");
            }else {
                jQuery("#nextBtn").removeClass("btn-active");
                jQuery("#nextBtn").addClass("btn-inactive");
                jQuery("#nextBtn").attr("onclick", "");
            }

        });

        //체크박스 한개라도 해제시 전체 체크 해제
        jQuery(document).on('click', "input[type=checkbox]",function() {

       	 	let checkYN = "N";
	        let checkBoxLength = $(".agreeCont input[type=checkbox]").length;
            let checkedLength = $(".agreeCont input[type=checkbox]:checked").length;

        	if(checkBoxLength == checkedLength){
                checkYN = "Y";
	        }

        	if(checkYN == "Y") {
        		$("#allChked").prop("checked",true);
        		$("#allChked").attr("allChk", "Y");
        	} else if(checkYN == "N"){
        		$("#allChked").prop("checked",false);
        		$("#allChked").attr("allChk", "N");
        	}

        });
        
        //전체 체크 
        $("#allChked").on('click', function () {
    		if($("#allChked").attr("allChk") == "N") {			
    			$("input[type=checkbox]").prop("checked",true).change();
    			$("#allChked").attr("allChk", "Y");
    		} else {		
    			$("input[type=checkbox]").prop("checked",false).change();
    			$("#allChked").attr("allChk", "N");
    		}        
        });


    });

    function openIdentityVerificationPopup() {
        window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
        document.identityVerificationForm.action = "/common/identity/popup.do";
        document.identityVerificationForm.target = "popupChk";
        document.identityVerificationForm.submit();
    }

    //본인 인증 성공시 콜백 function
    function fncIdnttVrfctCallback(resultMap) {
        checkDuplicateMember();
    }


    function checkDuplicateMember() {
        jQuery.ajax({
            type : "POST",
            url : "/hub/api/member/join/checkDuplicateMember.json",
            cache : false,
            dataType : "json",
            async : true,
            data : {

            },
            global : false,
            beforeSend: function() {},
            complete: function() {
            },
            success : function(data){

                const isSuccess = data.isSuccess;
                const result = data.result;
                const langCode = jQuery("#langCode").val();
                if(isSuccess == "false"){
                    alert(data.resultMsg);

                    if (data.redirectUrl != null) {
                        location.href = data.redirectUrl;
                    }
                    return false;
                }else {
                    const resultCode = result.resultCode;
                    const resultMsg = result.resultMessage;
                    if (resultCode == "0000") {
                        //미등록 회원
                        document.form.action = "/hub/"+ langCode +"/join/step2.do";
                        document.form.submit();
                    }else if (resultCode == "5000") {
                        //기가입 회원
                        alert("이미 가입하신 회원 입니다. \n로그인 페이지로 이동합니다."); 
                        location.href = "/hub/" + langCode + "/login/loginForm.do";
                    }else if (resultCode == "5001") {
                        //오프라인 회원
                        alert("고객님은 오프라인 회원이십니다.\n온라인 인증하기 페이지로 이동합니다."); 
                        //오프라인 페이지로 이동
                        location.href = "/hub/"+langCode+"/join/off/step1.do";
                    }else if (resultCode == "9999") {
                        //가입 불가(나이 제한)
                        alert("만 19세 미만은 서비스를 이용할 수 없습니다."); 
                    }else {
                        alert(resultMsg);
                    }
                }

            },
            error:function(r, s, e){
                alert(e);
            }

        });

    }


 /*    function validation() {
        if(!jQuery("#frmChk01").is(":checked")){
            alert("이용 약관에 대한 동의는 필수 입니다.");
            jQuery("#frmChk01").focus();
            return false;
        }

        if(!jQuery("#frmChk02").is(":checked")){
            alert("개인 정보 수집•이용에 대한 동의는 필수 입니다.");
            jQuery("#frmChk02").focus();
            return false;
        }

        const mktAgreeYn = jQuery("#mktAgree").is(":checked") ? "Y" : "N";
        jQuery("#mktAgreeYn").val(mktAgreeYn);

        const mktCnsgmntAgreeYn = jQuery("#mktCnsgmntAgree").is(":checked") ? "Y" : "N";
        jQuery("#mktCnsgmntAgreeYn").val(mktCnsgmntAgreeYn);

        return true;
    } */

    function goStep2() {
        if(!validation()){
            return false;
        }
        openIdentityVerificationPopup();
    }


</script>
<!-- <form name="identityVerificationForm" method="post">

</form>
<form name="form" method="post">
    <input type="hidden" id="langCode" name="langCode" value="ko">
    <input type="hidden" id="mktAgreeYn" name="mktAgreeYn" value="">
    <input type="hidden" id="mktCnsgmntAgreeYn" name="mktCnsgmntAgreeYn" value="">
</form> -->
<form action="./step2" onsubmit="return validateForm()">
<div id="container" class="container">
    <div class="join-contents-wrap">
        <div class="joinTitWrap">
            <strong>회원가입</strong>
            

        </div>
	    <div class="joinIfBox">
            <p>라한호텔 무료멤버십에 가입하고,<br>포인트 적립, 회원 특전 등 다양한 서비스를 이용해보세요.</p>
        </div>
        <div class="joinStepWrap">
            <ul>
                <li class="on">
                    <span>Step1</span>
                    <p>약관동의</p>
                </li>
                <li>
                    <span>Step2</span>
                    <p>정보입력</p>
                </li>
                <li>
                    <span>Step3</span>
                    <p>가입완료</p>
                </li>
            </ul>
        </div>
        
        
        <div class="joinAgrBox">
            <div class="agrTit checkAll">
                <span class="frm frm-chk frmAll">
                     <input type="checkbox" id="allChked" allChk="N"><label for="allChked">모든 항목을 확인하였으며 이에 동의 합니다.</label>
                </span>
            </div>
            <ul class="toggleList agreeCont">
                
                    
                        

<li>
    <span class="frm frm-chk">
         <input type="checkbox" id="frmChk01" data-valid="Y" required><label for="frmChk01">이용 약관에 대한 동의 <span
		    class="necessary">(필수)</span></label></span>
	<a href="#none" class="toggle-btnwrap"><span class="toggle-btn"></span></a>
	<div class="toggle-cont" style="display: none;">
		<div class="joinScrollBox">
			<div class="joinAgrInner">
				<div class="joinAgreeTxt">
					<!-- 221213 이용약관 내용 변경 -->
					<div class="terms terms-ty-02">
						<p>라한호텔 고객님의 소중한 개인정보 보호를 위해 최선을 다하고 있으며 개인 정보 보호 관련 법규를 준수합니다.</p>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제1조 목적</strong>
							</div>
							<div class="terms-info-txt">
								<p>본 약관은 라한프라퍼티스매니지먼트 주식회사(이하 "운영사"라 함)가 제공하는 [클럽 라한] 멤버십서비스(이하 "본건 멤버십"이라 함)의 이용과 관련하여
									운영사와 멤버십회원의 제반 권리, 의무, 관련 절차 등을 규정하는데 그 목적이 있습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제2조 용어의 정의</strong>
							</div>
							<div class="terms-info-txt">
								<p>본 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.</p>
								<p>1) 멤버십회원이란 본건 멤버십을 정상적으로 이용할 수 있는 자로서 운영사 또는 멤버십제휴사의 각 영업점이나 홈페이지, 모바일 웹을 통해 본 약관
									제5조에 정해진 가입 절차에 따라 가입하여 정상적으로 본건 멤버십을 이용할 수 있는 권한을 부여 받은 고객을 말합니다.</p>
								<p>2) 멤버십포인트란 멤버십회원이 멤버십제휴사에서 호텔 서비스를 이용하면서 멤버십회원의 신원이 확인되었음을 전제로 운영사와 멤버십제휴사 사이에서 합의된
									기준에 따라 멤버십회원에게 제공되는 포인트로서, 멤버십제휴사의 호텔 서비스 구매에 사용할 수 있는 지급결제수단을 의미합니다.</p>
								<p>3) 멤버십제휴사란 운영사와 본건 멤버십과 관련하여 제휴계약을 맺고 본건 멤버십을 공동으로 운영하기로 합의한 회사를 의미합니다. 멤버십제휴사는 당사 및
									멤버십제휴사의 사정에 따라 추가되거나 종료될 수 있으며, 멤버십제휴사의 구체적인 내역은 e-mail 등의 수단을 통하여 멤버십회원에게
									안내됩니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제3조 약관의 개정</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 본 약관은 제5조에 따른 회원가입시 고객에게 직접 안내하거나 기타의 방법으로 고지하고, 이에 동의한 고객이 본건 멤버십에 가입함으로써 효력이
									발생합니다.</p>
								<p>2) 본 약관은 수시로 개정 가능하며 약관을 개정하고자 할 경우 운영사는 개정된 약관을 적용하고자 하는 날로부터 14일 이전에 약관이 개정된다는 사실과
									개정된 내용 등을 아래 규정된 방법 중 1가지 이상의 방법으로 멤버십회원에게 통지 합니다. 다만, 멤버십회원에게 불리하게 약관내용이 변경되는 경우에는
									최소한 30일 이상의 사전 유예기간을 두고 고지합니다.</p>
								<ul class="dot-list">
									<li>e-mail 통보</li>
									<li>휴대전화 문자 통보</li>
									<li>서면 통보 또는 전단고지</li>
									<li>멤버십제휴사 내 게시</li>
									<li>기타 회원가입 시, 멤버십회원이 제공한 연락처 정보 등을 이용한 전화 안내 등의 방법</li>
								</ul>
								<p>3) 운영사가 영업양도 등의 방법으로 본 약관에 따른 계약관계를 이전하고자 하는 경우, 그 사실을 멤버십회원에게 개별적으로 통지하고 멤버십회원이 이에
									대하여 30일간 이의를 제기하지 않은 경우에는 이에 대하여 동의한 것으로 봅니다.</p>
								<p>4) 운영사가 e-mail 통보 또는 서면 통보의 방법으로 본 약관이 개정된 사실 및 개정된 내용을 멤버십회원에게 고지하는 경우에는 멤버십회원이 제공한
									e-mail 주소나 주소지 중 가장 최근에 제공된 곳으로 통보하며 이 경우, 운영사가 적법한 통보를 완료한 것으로 봅니다.</p>
								<p>5) 본 규정에 의하여 개정된 약관은 원칙적으로 그 효력 발생일로부터 장래를 향하여 유효합니다.</p>
								<p>6) 본 약관의 개정과 관련하여 이의가 있는 멤버십회원은 회원탈퇴를 할 수 있으며 개정 된 약관의 효력발생일까지 탈퇴하지 않거나 별도로 운영사에 이의를
									제기하지 않는 경우 변경된 약관에 동의한 것으로 봅니다.</p>
								<p>7) 본 규정의 통지방법 및 통지의 효력은 본 약관의 각 조항에서 규정하는 개별적인 또는 전체적인 통지의 경우에 이를 준용합니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제4조 본건 멤버십 개요</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 운영사와 멤버십제휴사가 본 약관에 정해진 바에 따라 멤버십회원에게 제공하는 본건 멤버십의 내용은 아래와 같습니다.</p>
								<ol class="terms-list-ty03">
									<li>1.1. 적립 서비스<br/>
										멤버십회원은 운영사와 멤버십제휴사에서 호텔 서비스를 유료로 이용할 경우(객실료에서 부가세를 제외한 금액을 기준으로 3/4/5%) 또는
										이벤트(부가가치세를 포함한 정해진 금액) 등에 의해 멤버십포인트를 적립 받을 수 있습니다. 단, 운영사 및 멤버십제휴사의 사정에 따라 지정된
										일부 서비스는 적립 대상에서 제외될 수 있습니다.
									</li>
									<li>1.2. 사용 서비스<br/>
										멤버십회원은 적립된 멤버십포인트를 사용하여 운영사 또는 멤버십제휴사에서 지정한 호텔 서비스를 구입(부가가치세가 포함된 전체 결제금액에서
										사용원하는 포인트 상당 금액만큼을 차감)할 수 있습니다. 단, 멤버십회원이 멤버십포인트를 사용 하기 위해서는 멤버십회원의 신원정보를 확인할 수
										있는
										사진이 부착된 신분증을 제시하거나 멤버십회원 번호와 기타 신분을 확인할 수 있는 정보를 제공하여야 합니다.
									</li>
								</ol>
								<p>2) 멤버십회원에게 제공되는 본건 멤버십은 운영사의 영업정책이나 멤버십제휴사의 사정에 따라 변경될 수 있습니다.</p>
								<p>3) 멤버십회원은 멤버십 홈페이지의 개인계정을 이용하여 보유포인트, 적립내역, 개인정보 등 각종 정보를 열람 및 수정 할 수 있습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제5조 회원가입</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 회원가입은 멤버십 제휴사 홈페이지 및 서면으로 된 가입신청서에 정해진 사항을 기입 및 서명을 한 후 본 약관과 개인정보처리방침에 동의함으로써
									회원가입을 신청합니다. 또한, 본건 멤버십 회원가입은 만 19세 이상의
									개인회원을 대상으로 하며, 법인 또는 단체 등은 멤버십에 가입할 수 없습니다.
								</p>
								<p>2) 고객으로부터 회원가입 신청이 있는 경우 운영사 및 멤버십제휴사는 자체 기준에 따른 심사를 거친 후 고객에게 멤버십회원 자격을 부여 할 수 있으며
									멤버십회원 자격이 부여된 고객은 운영사로부터 가입 완료 공지를 받은
									시점부터 멤버십회원으로서의 지위를 취득합니다.
								</p>
								<p>3) 멤버십회원은 회원자격을 타인에게 양도하거나 대여 또는 담보의 목적으로 이용할 수 없습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제6조 본건 멤버십의 이용</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									1) 멤버십회원이 본건 멤버십을 운영사와 멤버십제휴사에서 이용하고자 할 경우, 멤버십회원의 등록된 전화번호 및 비밀번호에 의한 인증 또는 기타 운영사가
									정한 인증절차를 거쳐야 하며 운영사와 멤버십제휴사는
									본인 확인 등의 합리적인 이유가 있을 때 멤버십회원에게 신분증 제시를 요청할 수 있습니다. 멤버십회원은 이러한 요청을 있을 경우 요청에 응해야
									정상적이고 원활한 본건 멤버십을 제공 받을 수 있습니다.
								</p>
								<p>
									2) 멤버십회원은 본인의 전화번호 및 비밀번호가 정상적으로 등록되었을 때, 본건 멤버십의 이용이 가능하고, 본건 멤버십은 멤버십회원 본인만 사용
									가능하며, 멤버십회원은 제3자에게 임의적으로 본인의 전화번호 및
									비밀번호를 대여 사용하게 하거나 양도 또는 담보의 목적으로 사용 할 수 없습니다.
								</p>
								<p>3) 멤버십회원의 전화번호 및 비밀번호는 멤버십회원 스스로의 책임하에 관리하여야 하며 멤버십회원의 고의 또는 과실로 유출되는 등의 사고가 발생할 경우,
									당해 멤버십회원은 그 사실을 운영사나 멤버십제휴사에즉시 통지하여야 합니다.</p>
								<p>
									4) 운영사나 멤버십제휴사는 멤버십회원으로부터 본 조 제3항에 따른 통지를 받을 경우, 즉시 사고 등록 및 당해 비밀번호의 사용을 중지하는 등 필요한
									제반 조치를 취합니다. 단, 운영사나 멤버십제휴사는 멤버십회원이
									본 조 제3항에 따른 통지 시점 이전에 발생한 손해로서, 해당 사고가 멤버십회원의 고의 또는 과실 등 귀책사유에 의한 경우에는 이에 대해서 어떠한
									책임도 지지 않습니다.
								</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제7조 회원탈퇴 및 자격상실</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									1) 멤버십회원은 언제든지 서면, e-mail, 전화, 기타 운영사가 정하는 방법으로 회원탈퇴를 요청할 수 있으며, 운영사와 멤버십제휴사는 다음
									제1호의 경우 또는 본 조 제2항의 경우를 제외하고는 멤버십회원의 요청에 따라
									속히 회원탈퇴에 필요한 제반 절차를 수행합니다. 단, 회원탈퇴 시 탈퇴일로부터 본 조 제5항 제1호에 따른 30일간의 유예기간이 만료한 이후 30일
									이내에는 재가입이 불가합니다.
								</p>
								<ol>
									<li>1.1. 운영사나 멤버십제휴사를 통해 구매하거나 예약한 서비스가 실현되지 아니한 때</li>
								</ol>
								<p>
									2) 멤버십포인트 사용 후 사용 된 멤버십포인트의 적립 원천이 되는 구매 행위의 취소로 인해 마이너스(-) 포인트가 발생한 멤버십회원은 별도 운영사나
									멤버십제휴사의 승인이나 해당 포인트에 해당하는 금액을
									변제하기 전까지는 탈퇴가 불가합니다.
								</p>
								<p>3) 멤버십회원이 다음 각 호에 해당하는 경우, 운영사는 당해 멤버십회원에 대한 통보로써 멤버십회원 자격을 상실시킬 수 있습니다. 단, 제3호의 경우에는
									멤버십회원에 대한 통보 없이 자격이 상실됩니다.</p>
								<ol>
									<li>3.1. 회원가입 신청 시, 허위 내용을 등록하거나 타인의 명의를 도용한 경우</li>
									<li>3.2. 멤버십회원이 부정적립, 부정사용 등 본건 멤버십을 부정한 방법 또는 목적으로 이용한 경우</li>
									<li>3.3. 멤버십회원이 사망한 경우</li>
									<li>3.4. 기타 본 약관이 규정하는 멤버십회원의 의무를 위반하는 경우</li>
									<li>3.5. 기타 본건 멤버십 운영을 고의로 방해하는 행위를 하는 경우</li>
								</ol>
								<p>
									4) 본 조 제3항에 의해 멤버십회원 자격이 상실된 멤버십회원은 운영사로부터 해당 사유발생에 대한 통지를 받은 날로부터 최대 30일 이내에 본인의
									의견을 소명할 수 있으며, 운영사는 멤버십회원의 소명 내용을 심사하여
									멤버십회원의 주장이 타당하다고 판단하는 경우 멤버십회원으로 하여금 계속하여 정상적인 본건 멤버십을 이용할 수 있도록 합니다.
								</p>
								<p>5) 조 제1항에 의한 회원탈퇴 또는 제3항에 의한 회원자격상실이 확정되는 시점은 아래와 같습니다.</p>
								<ol>
									<li>5.1. 멤버십회원의 탈퇴요청의 경우에는 운영사가 회원탈퇴 처리의 완료 통보하는 시점에서 탈퇴가 완료됩니다. [다만, 운영사는 완료 통보일로부터
										30일의 유예 기간 동안 기 적립된 멤버십포인트 정보를 소멸시키지 아니하고 저장하였다가, 멤버십회원이 별도의 절차를 거쳐 재가입 요청을 하고
										회사가 이를 허락하여 유예 기간 내 재가입할 경우, 모든 멤버십포인트를 재사용토록 하며, 재가입이 없이 유예기간이 지나면, 모든 멤버십포인트가
										즉시 소멸됩니다.]
									</li>
									<li>
										5.2. 회원자격상실의 경우 통보일에 회원자격상실이 확정됩니다. 단 사망으로 인한 자격상실의 경우에는 운영사의 통보여부와 상관없이 멤버십회원
										사망일에 자격상실이 확정되며, 당해 멤버십회원에게 제공된 기 본건
										멤버십과 관련된 권리나 의무 및 멤버십포인트는 당해 멤버십회원의 상속인에게 상속되지 않습니다.
									</li>
								</ol>
								<p>6) 본 조 제1항에 의한 회원탈퇴 또는 제3항에 의한 회원자격상실이 된 경우 멤버십회원 정보는 다음과 같이 처리 됩니다.</p>
								<ol>
									<li>6.1. 탈퇴한 멤버십회원의 정보는 본 조 제5항 제1호에 따른 유예기간 30일이 경과한 이후에 삭제처리 됩니다.</li>
									<li>6.2. 회원자격이 상실된 멤버십회원의 정보는 회원자격상실 확정 후(단, 사망으로 인한 경우는 제외함) 본건 멤버십 부정 이용 방지 및 타
										멤버십회원의 추가적인 피해 방지를 위해 2년간 보유 하며 이 기간 동안 재가입 및 본건 멤버십 이용이 불가할 수도 있습니다.
									</li>
								</ol>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제8조 멤버십포인트 적립</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 운영사나 멤버십제휴사는 서비스를 이용하고 그에 따른 대금을 결제한 멤버십회원에게 운영사나 멤버십제휴사 간에 약정 고지된 바에 따라 본 약관
									제4조에서 설명한 방식으로 멤버십포인트를 산정, 부여합니다. 단, 멤버십포인트와 관련하여 발생하는 제세공과금은 멤버십회원이 부담합니다.</p>
								<p>2) 멤버십제휴사의 정책에 따라 일부 멤버십제휴사에서는 멤버십포인트 적립이 불가 할 수도 있으며, 일부 서비스의 경우 적립률 및 적립방식 등이 상이할 수
									있고, 해당 내용을 별도 표기 또는 안내합니다.</p>
								<p>
									3) 멤버십포인트 적립은 서비스를 구입 즉시 요청 해 적립하는 것을 원칙으로 하나 운영사나 멤버십제휴사가 공식적으로 허용한 기한이 있는 경우
									멤버십회원은 본인의 구매내역에 한하여 그 기간 내 구매가 이루어진
									멤버십제휴사에서 구매 영수증을 제시함으로써 소급하여 적립을 청구 할 수 있습니다. 운영사나 멤버십제휴사는 내부정책에 따라 멤버십포인트 소급 적립 청구
									기간 변경이 가능하고 경우에 따라 멤버십회원의 소급 청구를 거부 할 수 있습니다.
								</p>
								<p>4) 멤버십포인트 적립률 및 기준은 운영사와 멤버십제휴사의 내부 방침에 따라 임의로 변경될 수 있습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제9조 멤버십포인트 사용</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 멤버십포인트를 사용하기 위해서는 회원가입을 통해 멤버십회원의 지위를 취득하고, 반드시 본인의 전화번호 및 온라인 비밀번호를 등록해야 합니다. 또
									일정 금액 이상의 멤버십포인트 사용시에는 인증을 거쳐야 합니다. 적립된 멤버십포인트 사용 순서는 멤버십회원이 보유 중인 사용 가능한 멤버십포인트 (이하
									"가용포인트"라 함)에서 중 소멸 일자가 빠른 멤버십포인트부터 우선적으로 차감(부가가치세가 포함된 이용대금 전체에서 사용을 원하는 포인트 상당금액이
									차감) 됩니다.</p>
								<p>2) 운영사와 멤버십제휴사는 별도로 사용 가능 최저 멤버십포인트 및 멤버십포인트 사용 단위를 정하며 이는 운영사 및 멤버십제휴사의 매장 내 고시(구두
									안내 포함) 등의 방법으로 고지 됩니다.</p>
								<p>3) 멤버십회원은 멤버십포인트를 타인에게 양도하거나 대여 또는 담보의 목적으로 이용할 수 없습니다.</p>
								<p>4) 멤버십포인트 사용 후 사용 된 멤버십포인트의 적립 원천이 되는 구매 행위의 취소로 인해 잔여 멤버십포인트가 마이너스(-)인 경우 잔여 가용포인트가
									0 포인트가 되기 전까지 적립되는 포인트는 사용이 불가합니다.</p>
								<p>5) 멤버십포인트는 객실이용시 1만점 단위로 사용이 가능하며 식음료, 레포츠에서는 사용이 불가합니다.</p>
								<p>6) 미사용 멤버십포인트는 최초발생일 기준 5년 이후에 소멸됩니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제10조 멤버십 회원 등급 및 특전</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 회원 등급은 실버, 골드, 다이아몬드 총 3단계로 분류합니다.</p>
								<p>2) 회원 가입과 동시에 실버 회원 자격이 부여됩니다.</p>
								<p>3) 회원 등급의 유지 및 승급에는 회사가 규정한 조건을 충족해야 합니다.</p>
								<p>4) 운영사는 회원의 1년간 이용실적(호텔 홈페이지 및 당일 예약(walk-in) 결제금액 중 객실분에 대한 적립)을 점수로 산출하여 다음의 기준에 따라
									회원 등급을 조정합니다.</p>
								<table class="table-ty-02">
									<colgroup>
										<col width="25%"/>
										<col width="25%"/>
										<col width="25%"/>
										<col width="25%"/>
									</colgroup>
									<thead>
									<tr>
										<th>구분</th>
										<th>SILVER</th>
										<th>GOLD</th>
										<th>DIAMOND</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<td>등급선정(누적 객실이용금액)</td>
										<td>가입 시</td>
										<td>100만원 이상</td>
										<td>300만원 이상</td>
									</tr>
									<tr>
										<td>적립율</td>
										<td>3%</td>
										<td>4%</td>
										<td>5%</td>
									</tr>
									</tbody>
								</table>
								<p>5) 등급 조정은 승급, 유지, 강등으로 분류합니다.</p>
								<p>6) 등급 평가 및 조정은 1월1일부터 12월 31일까지 1년 동안의 이용실적을 기반으로 매년 1월 첫째 주에 반영합니다.</p>
								<p>7) 승급 및 강등은 1단계씩 조정되며 등급유지 미충족시 다음해 강등됩니다.</p>
								<p>8) 등급 변동이 있을 시 회사는 회원에게 해당 내용을 전자우편으로 통보합니다.</p>
								<p>9) 회원등급별 혜택은 다음과 같으며 상위 등급 객실 만실 등의 이유로 호텔 상황에 따라 일부 혜택이 제공되지 않거나 다른 혜택으로 변경될 수
									있습니다.</p>
								<table class="table-ty-03">
									<colgroup>
										<col width="30%"/>
										<col width="*"/>
									</colgroup>
									<thead>
									<tr>
										<th>구분</th>
										<th>혜택</th>
									</tr>
									</thead>
									<tbody>
									<tr>
										<td>SILVER</td>
										<td>중식/석식뷔페 이용 시 10% 상시할인 / 신규가입 즉시 웰컴스낵 제공 / 생일 당월 케이크 30% 할인 / 조식뷔페 추가이용 시 10%
											상시할인 / 주중 레이크 체크아웃 1시간 (등급별 횟수상이)
										</td>
									</tr>
									<tr>
										<td>GOLD</td>
										<td>중식/석식뷔페 이용 시 10% 상시할인 / 신규가입 즉시 웰컴스낵 제공 / 생일 당월 케이크 30% 할인 / 조식뷔페 추가이용 시 10%
											상시할인 / 주중 레이크 체크아웃 1시간 (등급별 횟수상이) / 주중 객실 전망 업그레이드(연간 1회) / 주중 객실 타입
											업그레이드(연간 1회) / 얼리체크인 오후 1시(연간 3회) / 사우나 1인 이용권(연간 2매) / 수영장 1인 이용권(연간 2매)
										</td>
									</tr>
									<tr>
										<td>DIAMOND</td>
										<td>중식/석식뷔페 이용 시 10% 상시할인 / 신규가입 즉시 웰컴스낵 제공 / 생일 당월 케이크 30% 할인 / 조식뷔페 추가이용 시 10%
											상시할인 / 주중 레이크 체크아웃 1시간 (등급별 횟수상이) / 주중 객실 전망 업그레이드(연간 2회) / 주중 객실 타입
											업그레이드(연간 2회) / 얼리체크인 오후 1시(연간 3회) / 사우나 1인 이용권(연간 4매) / 수영장 1인 이용권(연간 4매)
										</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제11조 개인정보 수집</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									1) 운영사와 멤버십제휴사는 사전에 멤버십회원으로부터 동의를 얻어 멤버십회원이 가입신청을 할 때 제공하는 개인정보, 본건 멤버십 이용 시 생성되는
									개인정보, 멤버십회원이 서비스 이용 시 생성되는 개인정보를
									수집할 수 있으며, 이를 분석하여 멤버십회원에게 보다 나은 서비스를 제공하고 고객 지향적인 마케팅 활동을 하기 위해 이용합니다. 개인정보 수집 및
									이용에 관한 자세한 사항은 멤버십제휴사의 서비스홈페이지에
									게재되어 있는 ‘개인정보 처리방침’을 참고하시기 바랍니다.
								</p>
								<p>2) 운영사와 멤버십제휴사는 개인정보를 수집하고자 하는 경우 원칙적으로 멤버십회원으로부터 개인정보 처리에 관한 동의를 받습니다. 멤버십회원은 언제든지
									개인정보 처리에 관한 동의를 철회할 수 있습니다.</p>
								<p>3) 멤버십회원은 제공한 개인정보에 변경사항이 있는 경우 지체 없이 운영사나 멤버십제휴사에 그 변경사실을 통지하여야 하며, 이를 통지하지 않아 발생한
									손해에 대하여 운영사와 멤버십제휴사는 어떠한 책임도 지지 않습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제12조 개인정보 이용과 제공</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									운영사와 멤버십제휴사는 원칙적으로 개인정보 관련 법령에 따라 멤버십회원에게 고지하고 동의 받은 제3자에게만 개인정보를 제공하고, 동의 받은 목적 범위
									내에서만 개인정보를 활용하며, 당해 멤버십회원의 동의 없이
									개인정보를 당초 동의 받은 목적 범위를 넘어선 용도로 이용하거나 동의 받은 자 이외의 제3자에게 제공하지 않습니다.<br/>
									다만, 예외적으로 개인정보 보호법 또는 정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라 허용된 경우에는 멤버십회원의 동의 없이 개인정보를 목적
									외로 이용하거나 제3자에게 제공할 수 있습니다.
								</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제13조 개인정보 보유 및 이용기간</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									운영사와 멤버십제휴사는 원칙적으로 이용목적이 달성되거나 동의 받은 기간이 경과한 경우 지체 없이 멤버십회원의 개인정보를 파기합니다.<br/>
									다만, 다른 법령에 따라 개인정보를 보존하여야 하는 경우에는 해당 법령이 요구하는 기간 동안 멤버십회원의 개인정보를 더 보관할 수 있습니다.
								</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제14조 개인정보 보호를 위한 멤버십회원의 권리</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 멤버십회원은 회원탈퇴를 통해 개인정보의 수집, 이용, 제공 등 처리에 관한 동의를 철회할 수 있습니다.</p>
								<p>
									2) 멤버십회원은 운영사나 멤버십제휴사에 대하여 본인의 개인정보에 대한 열람을 요구할 수 있으며, 자신의 개인정보에 오류가 있는 경우 멤버십제휴사의
									서비스홈페이지를 통해 직접 정정하거나 운영사나 멤버십제휴사에
									대하여 정정을 요구할 수 있습니다. 멤버십회원은 운영사나 멤버십제휴사에게 위와 같은 요구를 하는 경우에는 멤버십제휴사가 서비스홈페이지에 게재한
									‘개인정보 처리방침’에 공개된 연락처를 이용하여야 합니다.
								</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제15조 개인정보 처리의 위탁</strong>
							</div>
							<div class="terms-info-txt">
								<p>
									운영사와 멤버십제휴사는 수집된 개인정보의 처리 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 외부 위탁업체에 위탁할 수
									있습니다. 외부 위탁업체 및 위탁하는 업무의 세부내용은
									멤버십제휴사의 서비스 홈페이지에 게재된 ‘개인정보 처리방침’을 통해 확인할 수 있습니다.
								</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제16조 개인정보 처리</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 운영사와 멤버십제휴사는 수집된 멤버십회원의 개인정보 처리 및 보호를 위해 각 사에 개인정보 보호책임자를 지정하여 관리하고 있습니다.</p>
								<p>2) 운영사와 멤버십제휴사는 멤버십회원이 안심하고 본건 멤버십 서비스를 이용할 수 있도록 개인정보 관련 법령에 따라 개인정보 보호를 위한 기술적,
									관리적, 물리적 안전조치를 취하고 있습니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제17조 저작권의 귀속 및 이용제한</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 운영사가 작성한 저작물에 대한 저작권 기타 지적재산권은 운영사에 귀속합니다.</p>
								<p>2) 멤버십회원은 본건 멤버십을 이용함으로써 얻은 정보를 운영사의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로
									이용하거나 제3자로 하여금 이용하게 해서는 안됩니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제18조 본건 멤버십의 종료</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 본건 멤버십을 종료하고자 할 경우, 운영사는 본건 멤버십 종료일로부터 최소 3개월 이전에 멤버십회원에게 통지합니다.</p>
								<p>2) 본건 멤버십 종료일 이후 멤버십회원은 멤버십포인트 적립 및 본건 멤버십에 따른 혜택을 받지 못하며, 운영사가 별도 지정하는 날 이후에는 미사용
									멤버십포인트는 소멸됩니다.</p>
							</div>
						</div>
						<div class="terms-box">
							<div class="terms-sub-tit">
								<strong>제19조 준거법 및 합의 관할</strong>
							</div>
							<div class="terms-info-txt">
								<p>1) 본 약관의 해석에 관하여는 대한민국 법률에 따라 해석되고 집행된다.</p>
								<p>2) 본 약관과 관련한 분쟁은 서울중앙지방법원이 제1심의 전속적 관할권을 가진다.</p>
							</div>
						</div>
						<div class="terms-box2">
							<div class="terms-sub-tit">
								<strong>부칙</strong>
							</div>
							<div class="terms-info-txt">
								<p>이 약관은 2023년 8월 15일부터 시행합니다.</p>
								<p class="mt20">
									약관 개정 및 공표일 : 2023년 8월 1일<br/>
									시행일 : 2023년 8월 15일<br/><br/>
								</p>
							</div>
						</div>
						<!-- // 221213 이용약관 내용 변경 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</li>
<li>
    <span class="frm frm-chk">
         <input type="checkbox" id="frmChk02" data-valid="Y" required><label for="frmChk02">개인 정보 수집•이용에 대한 동의 <span
		    class="necessary">(필수)</span></label>
    </span>
	<a href="#none" class="toggle-btnwrap"><span class="toggle-btn"></span></a>
	<div class="toggle-cont" style="display: none;">
		<div class="joinScrollBox">
			<div class="joinAgrInner">
				<div class="joinAgreeTxt">
					<!-- 2023-07-06 내용변경 및 추가-->
					<div class="terms">
						<dl>
							<dt>수집항목</dt>
							<dd>
								• 성명(국문, 영문), 생년월일, 휴대전화, 이메일, ID 및 비밀번호, 본인확인정보(DI), 멤버십 고객번호(오프라인으로 가입 후 온라인 인증을 한 회원의
								경우)
							</dd>
							<dt>수집목적</dt>
							<dd> • 본인확인 및 개인식별, 19세미만 여부 확인, 포인트 적립 사용 및 할인 등 각종 멤버십 서비스의 제공, 고지사항 전달, 고객불만 등 민원처리, 법적
								분쟁
								등의 처리
							</dd>
							<dt>보유 및 이용기간</dt>
							<dd> • 온라인으로 가입한 회원:<br/>- 탈퇴 시 즉시삭제<br/>- 투숙 등 최종 멤버십 서비스 이용일로부터 5년</dd>
							<dd> • 오프라인으로 가입한 후 온라인 인증을 한 회원:<br>- 탈퇴 시 즉시삭제(단, 서면가입신청서는 가입신청서 제출 후 1년 후 파기)<br/>- 투숙
								등 최종 멤버십 서비스 이용일로부터 5년
							</dd>
						</dl>
						<p class="mt20"><b>필수적 개인정보 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의 거부시 멤버십 가입이 제한될 수 있습니다.</b></p>
					</div>
					<div class="terms-box ty-05">
						<strong class="terms-sub-minitit">개인정보처리업무 위탁에 대한 안내</strong>
						<p>라한프라퍼티스매니지먼트㈜는 멤버십 운영을 위하여 아래와 같이 개인정보 처리업무를 위탁하고 있으며, 관계법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록
							필요한 사항을 규정하고 있습니다.</p>
						<table class="table-ty-02">
							<colgroup>
								<col width="35%"/>
								<col width="*"/>
							</colgroup>
							<thead>
							<tr>
								<th>수탁업체</th>
								<th>위탁업무내용</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>㈜ 산하정보기술</td>
								<td>영업 시스템 개발 및 유지보수</td>
							</tr>
							<tr>
								<td>한국전자영수증 ㈜</td>
								<td>멤버십 운영시스템 개발 및 유지보수관리</td>
							</tr>
							<tr>
								<td>주식회사 라한호텔, 주식회사 라한호텔 포항,
									주식회사 라한호텔 전주
								</td>
								<td>멤버십 가입 및 서비스 제공 업무 대행</td>
							</tr>
							<tr>
								<td>나이스 평가정보 ㈜</td>
								<td>온라인 회원 가입 시, 고객 본인확인을 위한 인증 (휴대폰 인증)</td>
							</tr>
							<tr>
								<td>스티비 주식회사</td>
								<td>회원 대상 공지메일 발송</td>
							</tr>
							<tr>
								<td>(주)KT Biz</td>
								<td>광고성 정보 수신동의 및 거부 안내 문자 발송</td>
							</tr>
							</tbody>
						</table>
					</div>
					<!-- //2023-07-06 내용변경 및 추가-->
				</div>
			</div>
		</div>
	</div>
</li>

<li>
	<span class="frm frm-chk">
		<input type="checkbox" id="frmChk05" data-valid="Y" required><label for="frmChk05">개인정보 제3자제공에 대한 동의 <span class="necessary">(필수)</span></label>
	</span>
	<a href="#none" class="toggle-btnwrap"><span class="toggle-btn"></span></a>
	<div class="toggle-cont" style="display: none;">
		<div class="joinScrollBox">
			<div class="joinAgrInner">
				<div class="joinAgreeTxt">
					<div class="terms">
						<dl>
							<dt>개인정보를 제공받는 자 </dt>
							<dd>- 주식회사 라한호텔, 주식회사 라한호텔 포항, 주식회사 라한호텔 전주</dd>
							<dt>제공받는 자의 개인정보 이용목적</dt>
							<dd>- 클럽라한 멤버십 포인트의 적립 및 사용</dd>
							<dd>- 클럽라한 멤버십 관련 민원 처리</dd>
							<dd>- 클럽라한 멤버십 관련 법적 분쟁 등의 처리</dd>
							<dt>제공하는 개인정보 항목</dt>
							<dd>- 클럽라한 멤버십 회원번호, 이름(국문, 영문), 휴대전화, 이메일, 생년월일</dd>
							<dt>제공받는 자의 보유 · 이용기간</dt>
							<dd>- 법령상 특별한 보존 이유가 없는 한, 마지막 클럽라한 멤버십 포인트 적립 또는 사용일로부터 5년</dd>
						</dl>
						<p class="mt20"><b>* 귀하께서는 개인정보의 제3자제공에 동의하지 않으실 수 있으나, 이러한 경우 클럽라한 멤버십 회원가입이 불가합니다.</b></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</li>
</form>

<li><!-- 2023-07-06 내용변경 및 추가-->
	<span class="frm frm-chk">
								<input type="checkbox" id="mktAgree">
								<label for="mktAgree">
									<p class="longTxt">
										광고성 정보 수신동의<br/><span class="small">(선택 / 체크
											시 아래항목
											자동선택)</span>
									</p>
								</label>
                    </span>
	<a href="#none" class="toggle-btnwrap"><span class="toggle-btn"></span></a>
	<div class="toggle-cont" style="display: none;">
		<div class="joinScrollBox">
			<div class="joinAgrInner">
				<div class="joinAgreeTxt">

					<div class="terms-box mt0">
						<p>클럽라한 멤버십 회원에게 제공되는 상품 정보, 각종 프로모션 정보, 이벤트 정보 등 각종 광고성 정보를 포함한 이메일의 수신여부를 선택하여 주시기 바랍니다.</p>
						<strong class="terms-sub-minitit mt50">광고성 정보 발송을 위한 개인정보처리업무 위탁에 대한 안내(광고성 정보 수신 동의 시
							적용)</strong>
						<p>광고성 정보 수신동의를 한 회원의 개인정보에 한하여, 아래 기재된 수탁업체에게 고객정보 처리업무를 위탁합니다.</p>
						<table class="table-ty-02">
							<colgroup>
								<col width="35%"/>
								<col width="*"/>
							</colgroup>
							<thead>
							<tr>
								<th>수탁업체</th>
								<th>위탁업무내용</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>주식회사 라한호텔,<br/>주식회사 라한호텔 포항,<br/> 주식회사 라한호텔 전주,<br/>스티비 주식회사</td>
								<td>이메일을 통한 회원서비스·프로모션 및 이벤트 관련 정보 등 광고성 정보의 발송</td>
							</tr>
							</tbody>
						</table>
						<p class="mt20">* 포인트 소멸 안내는 광고성 정보의 수신여부와 관계없이 고객님께 이메일 혹은 문자로 안내합니다.</p>
					</div>

				</div>
			</div>
		</div>
	</div>
</li>
<!--  <form method="get" action="./step2" onsubmit="return validateForm()"> -->
<li>
    <span class="frm frm-chk">
				<input type="checkbox" id="mktCnsgmntAgree" name="agreeEmail">
				<label for="mktCnsgmntAgree">
					<p class="longTxt">마케팅 목적을 위한 개인정보 수집 및 이용에 대한 동의 (선택)</p>
				</label>
    </span>
	<a href="#none" class="toggle-btnwrap"><span class="toggle-btn"></span></a>
	<div class="toggle-cont" style="display: none;">
		<div class="joinScrollBox">
			<div class="joinAgrInner">
				<div class="joinAgreeTxt">

					<div class="terms">
						<dl>
							<dt>수집항목</dt>
							<dd>
								• 이메일, 생년월일, 거주도시
							</dd>
							<dt>수집 목적</dt>
							<dd> • 각종 프로모션 등 고객맞춤 서비스 안내(이메일, 생년월일, 거주도시를 이용) 고객군 통계작성(생년월일과 거주도시를 이용)</dd>
							<dt>보유 및 이용기간</dt>
							<dd> • 온라인으로 가입한 회원:<br/>- 탈퇴 시 즉시삭제<br/>- 투숙 등 최종 멤버십 서비스 이용일로부터 5년</dd>
							<dd> • 오프라인으로 가입한 후 온라인 인증을 한 회원:<br>- 탈퇴 시 즉시삭제(단, 서면가입신청서는 가입신청서 제출 후 1년 후 파기)<br/>- 투숙
								등 최종 멤버십 서비스 이용일로부터 5년
							</dd>
						</dl>
						<p class="mt20"><b>선택적 개인정보의 수집 및 이용을 거부할 수 있으나, 동의 거부 시 회사로부터 유용한 정보를 제공받지 못할 수 있습니다.</b></p>
					</div>

				</div>
			</div>
		</div>
	</div>
</li>

                    
                    
                

            </ul>
        </div>
        <div class="joinBtnArea btn-inline-box">
            <a href="/main" title="취소" class="btn btn-navy-line">취소</a>
            <button type="submit" class="btn btn-navy-line" style="width: 200px; height: 56px; margin: 0px 20px 0px 0px; padding: 0px 5px;">다음</button>
            <!-- <a href="./step2" id="nextBtn" onclick="" title="다음" class="btn btn-inactive">다음</a>  -->
        </div>
    </div>
</div>
		</div>
</form>
		
		
		
		<%@ include file="/WEB-INF/views/footer.jsp" %> 
		
		<!-- <footer id="footer" class="footer">
			(FOOTER 최종수정일 : 2023-02-28 08:19:02)

			<div class="f-wrap">
				<div class="f-box-top">
					<div class="box-top-inner">
						<ul class="f-nav-list">
                            <li><a href="https://www.lahanhotels.com/hub/ko/hotel/brandIntroduce.do" title="라한 브랜드">라한 브랜드라한 브랜드</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/clublahan/membership.do" title="멤버십">멤버십무료멤버십</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/notice/generalInfo/list.do" title="공지사항">공지사항공지사항</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/customer/contact.do" title="제안/제보">제안/제보고객문의</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/ethical/terms.do" title="윤리경영">윤리경영윤리경영</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/sitemap.do" title="사이트맵">사이트맵사이트맵</a></li>
						</ul>
						<ul class="f-nav-list">
							<li><a href="https://www.lahanhotels.com/hub/ko/termsUse/terms.do" title="이용약관">이용약관이용약관</a></li>
							<li><a href="https://www.lahanhotels.com/hub/ko/terms/terms.do" title="개인정보처리방침" class="pr-po"><strong>개인정보처리방침개인정보처리방침</strong></a></li>
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
								<li><b>라한프라퍼티스매니지먼트(주)(주)라한프라퍼티스 매니지먼트</b></li>
								<li>
									<p>주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층주소 &#58; 서울특별시 중구 한강대로 416 서울스퀘어 21층</p>

									<p>통합예약실 1644-8005통합예약실</p>

								</li>
								<li>

									<p>사업자등록번호 666-86-01031사업자등록번호 666&#45;86&#45;01031</p>

									<p>통신판매신고번호 2015-경북경주-0192호통신판매신고번호 00구00000호</p>
								</li>
							</ul>
						</div>
						<div class="box-bottom-right">

							<ul class="f-cer-info">
								<li>
                                    <a href="https://isms.kisa.or.kr/main/ispims/issue/?certificationMode=list" target="_blank">
									    <span><img src="/static/pc/images/common/f-cer1.png" alt="호텔 예약 서비스 및 멤버십 서비스 인증 이미지"></span>
									    <span>인증범위. 라한호텔 예약 및 멤버십 서비스<br/>유효기간. 2023.12.06 ~ 2026.12.05인증범위. 호텔 예약 서비스 및 멤버십 서비스<br/>유효기간. 2020.09.16 ~ 2023.09.15</span>
                        			</a>
								</li>
							</ul>

							<div class="f-site-info">
								<div class="f-select-wrap select">
									<div class="select-lahan selected">
										<span class="select-site selected-value">FAMILY SITEFAMILY SITE</span>
									</div>
									<ul class="f-select-box">
										<li><a href="https://www.seamarqhotel.com/" title="GANGNEUNG" class="option" target="_blank">강릉 씨마크</a></li>강릉 씨마크
										<li><a href="https://www.lahanhotels.com/mokpo/ko/main.do" title="MOKPO" class="option" target="_blank">호텔현대 바이 라한 목포호텔현대 바이 라한 목포</a></li>
										<li><a href="https://www.lahanhotels.com/ulsan/ko/main.do" title="ULSAN" class="option" target="_blank">호텔현대 바이 라한 울산호텔현대 바이 라한 울산</a></li>
										<li><a href="https://www.lahanhotels.com/pohang/ko/main.do" title="POHANG" class="option" target="_blank">라한호텔 포항라한호텔 포항</a></li>
										<li><a href="https://www.lahanhotels.com/jeonju/ko/main.do" title="JEONJU" class="option" target="_blank">라한호텔 전주라한호텔 전주</a></li>
										<li><a href="https://www.lahanhotels.com/gyeongju/ko/main.do" title="GYEONGJU" class="option" target="_blank">라한셀렉트 경주라한셀렉트 경주</a></li>
										<li><a href="https://www.lahanhotels.com/hub/ko/main.do" title="LAHAN" class="option" target="_blank">라한라한</a></li>
									</ul>
								</div>
								<div class="f-sns-wrap">
									<a href="https://www.instagram.com/lahan_hotel/" title="Lahan Instagram" target="_blank"><span>라한 인스타그램라한 인스타그램</span></a>
									<a href="https://www.facebook.com/LAHANHOTEL" title="Lahan Facebook" target="_blank"><span>라한 페이스북라한 페이스북</span></a>
									<a href="https://pf.kakao.com/_Umxebxb" title="Lahan Kakaochanel" target="_blank"><span>라한 카카오채널라한 카카오채널</span></a>
								</div>
								<p class="copTxt">&#169; 2022 by Lahan Hotels Co., Ltd&#169; 2022 by Lahan Hotels Co., Ltd</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</footer> -->
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

<!-- <form id="form" method="post" action="https://www.lahanhotels.com/hub/ko/resv/step2.do">
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

</form> -->

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