<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<head>
	<meta charset="UTF-8">

    
    <title>라한</title>
 
	<link rel="canonical" href="https://www.lahanhotels.com/">

	<!-- css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_jquery.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_font.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_kor_common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_swiper.css">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/라한_main.css">
	
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
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTWJWS8"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

    
    
    <div class="wrap sub">
    

        
<%@ include file="/WEB-INF/views/header.jsp" %> 
		
		<div id="container" class="container">
			<!--(페이지 URL)-->

 <script>

    const UNIT_OF_CURRENCY = "만원 ";

    //혜택 목록 하드코딩
    const benefitList =[
	    {
            "benefitName" : "수영장 or 사우나<br/>1인 무료", //혜택 명
			"requiredNights" : 3                        //필요 숙박 일수
		},
		{
            "benefitName" : "2인 조식<br/>무료".replace("<br/>",""),
			"requiredNights" : 5
		},
		{
            "benefitName" : "주중 디럭스<br/>숙박권".replace("<br/>",""),
			"requiredNights" : 20,
		},
    ]

	$(document).ready(function(){
        getMemberInfo();
    });
	
    function getMemberInfo() {

        $.ajax({
            type : "GET",
            url : "/hub/api/member/mypage/memberInquiry.json",
            dataType : "json",
            data : {},
            async : true,
            success : function(data){
                api 실패
                if (data.isSuccess == "false" || data.isSuccess == false) {
                    //msg 가 있을 경우 alert
                    if (data.resultMsg) {
                        alert(data.resultMsg);
                    }
                    //redirectUrl 이 있을 경우 페이지 이동
                    if (data.redirectUrl) {
                        location.href = data.redirectUrl;
                    }
                    return false;
                }
                console.log(data)
                const langCode = jQuery("#langCode").val();
                const memberInfo = data.result;
                let couponCount = memberInfo.countCoupon; //쿠폰 개수
                let currentGrade = memberInfo.currentGrade.toLowerCase();   //현재 등급
                let grades = memberInfo.grades;           //등급 정보(array)
                let mbrName = langCode == 'ko' ? memberInfo.mbrName : memberInfo.mbrNameEnglish;  //회원명
                let mbrNumber = memberInfo.mbrNumber;     //회원 번호
                let points = memberInfo.points;           //최근 포인트 내역(array)
                let totalNights = memberInfo.totalNights; //올해 누적 숙박일수
                let totalPaymentAmount = Number(memberInfo.totalPaymentAmount);   //올해 누적 결제금액
                let usablePoint = getNumberFormat(Number(memberInfo.usablePoint));         //사용 가능한 적립 포인트
            
	            //혜택 영역 세팅
	            renderBenefitsInfo(totalNights, benefitList);
            
                //회원 정보 세팅
	            renderMemberInfo(mbrName, mbrNumber, usablePoint, couponCount, currentGrade);
            
                //등급 정보 세팅
                renderGradeInfo(grades, totalPaymentAmount, currentGrade, mbrName);
            
                //포인트 적립/사용 내역 세팅
                renderPointsList(points);



            },
            error:function(r, s, e){
                alert("API 통신중 오류가 발생하였습니다. 잠시 후 다시 시도해주세요.");
                return false;
            }
        })
    }


    //혜택 영역 세팅
    function renderBenefitsInfo(totalNights, benefitList) {
        const $currentNights = $("#currentNights");         //숙박 일수 html
        const $benefitsTitle = $("#benefitsTitle");       //달성 혜택 타이틀 html
        const $benefitsItem = $("#benefitsItem");         //달성 혜택 아이템 html
		const $benefitsCompletionMessage = $("#benefitsCompletionMessage");   //인센티브 발급 완료 여부 영역 html
		const $incentiveBar = $("#incentiveBar");

	    //값이 없는 경우 0으로 세팅
		if(!totalNights){
            totalNights = 0;
		}
        // 숙박 일자 세팅
        $currentNights.find("em").text(totalNights);

        const incentiveBarClass = "w"+Number(totalNights).toString().padStart(2, "0");
        $incentiveBar.addClass(incentiveBarClass);

        //오름차순으로 확인
	    benefitList.some((item)=> {
            if (Number(totalNights) <= item.requiredNights) {
                $benefitsTitle.html(item.requiredNights+"박 달성 혜택"); // n박 달성 혜택
                $benefitsItem.html(item.benefitName);
                if (Number(totalNights) == item.requiredNights) {
                    $benefitsCompletionMessage.show();
                }
                return true;
            }
	    })


    }

    //회원 정보 세팅
    function renderMemberInfo(mbrName, mbrNumber, usablePoint, couponCount, currentGrade ){
		jQuery("#mbrName").text(mbrName);
        jQuery("#mbrNumber").text(mbrNumber);
        jQuery("#currentGrade").text(currentGrade);

        jQuery("#usablePoint").find("em").text(usablePoint);
        jQuery("#countCoupon").find("em").text(couponCount);
        jQuery("#currentGrade").addClass(currentGrade);
    }

    //등급 정보 세팅
    function renderGradeInfo(grades, totalPaymentAmount, currentGrade, mbrName) {
        const langCode = jQuery("#langCode").val();

        // 등급 별 메세지 및 금액 세팅 start -------
        //업그레이드 필요 금액으로 정렬
        grades.sort(function(a, b){
            return Number(a.upgradeGradeAmount) - Number(b.upgradeGradeAmount);
        });



        //다음 등급(사용 금액 기준) , 현재 등급 관계 X
        let nextGradeName = null;
        //다음 등급 필요 사용 금액
        let upgradeGradeAmount = null;

        //사용 금액으로 다음 등급 조회
        const nextGrade = grades.find(grade => Number(grade.upgradeGradeAmount) > totalPaymentAmount);

        let restAmount = 0; //업그레이드까지 남은 금액
        let restPer = 100;     //업그레이드까지 남은 금액 퍼센트

        //화면에 보여줄 금액(국문일 경우 만원단위)
        let viewUpgradeGradeAmount = 0;
        let viewRestAmount = 0;
        let viewTotalPaymentAmount = 0;

        //다음 등급이 존재 하면
        if (nextGrade) {
            //다음 등급(사용 금액 기준) , 현재 등급 관계 X
            nextGradeName = nextGrade.grade;
            //다음 등급 필요 사용 금액
            upgradeGradeAmount = nextGrade.upgradeGradeAmount;
            restAmount = (upgradeGradeAmount - totalPaymentAmount);

            //남은 금액 퍼센트
            /*restPer = Math.round((totalPaymentAmount / upgradeGradeAmount) * 10) * 10;*/
            restPer = Math.floor((totalPaymentAmount / upgradeGradeAmount) * 10) * 10;

            //국문일 경우 금액 만원단위
            if(langCode === "ko"){
                viewUpgradeGradeAmount = upgradeGradeAmount / 10000;
                viewRestAmount = restAmount / 10000;
                viewTotalPaymentAmount = getNumberFormat(totalPaymentAmount / 10000);
            }else {
                viewUpgradeGradeAmount = getNumberFormat(upgradeGradeAmount);
                viewRestAmount = getNumberFormat(restAmount);
                viewTotalPaymentAmount = getNumberFormat(totalPaymentAmount);
            }

            //다음 등급 업그레이드 금액
            jQuery(".upgradeNum").find("span").text(`${viewUpgradeGradeAmount }${UNIT_OF_CURRENCY}`);

            //사용금액 , 다음 등급 업그레이드 금액 연산
        }

        //국문일 경우 금액 만원단위
        if(langCode === "ko"){
            viewTotalPaymentAmount = getNumberFormat(totalPaymentAmount / 10000);
        }else {
            viewTotalPaymentAmount = getNumberFormat(totalPaymentAmount);
        }

        jQuery("#upgradeCircle").addClass("w"+restPer); // w10 ~ w100 10단위로 클래스 생성

        const $upgradeInfo = jQuery("#upgradeInfo");

        //사용 금액 , 등급별 하드코딩
        let gradeInfoMsg = "";

        if(0 <= totalPaymentAmount  && totalPaymentAmount <= 999_999 ){
            //0원 이상 100만 미만
            
            if(currentGrade == "silver") {
                // 현재 등급 실버, 금액 등급 실버 , 다음 등급 골드 목표
                //ㅇㅇㅇ님 N 만원 추가 사용 시, 다음 해에 GOLD 등급으로 업그레이드가 진행됩니다.
                gradeInfoMsg = '{1}님  {2}만원 추가 사용 시,<br> 다음 해에 {3} 등급으로 업그레이드가 진행됩니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<em>${viewRestAmount}</em>`)
                    .replace("{3}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`);
                /*gradeInfoMsg = `<em>${mbrName}</em>님  <em>${viewRestAmount}</em> 만원 추가 사용 시,<br> 다음 해에 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급으로 업그레이드가 진행됩니다.`;*/

            } else if(currentGrade == "gold") {
                // 현재 등급 골드, 금액 등급 실버 , 다음 등급 골드 목표
                //ㅇㅇㅇ님 N 만원 추가 사용 시, 다음 해에 GOLD 등급이 유지됩니다.
                /*gradeInfoMsg = `<em>${mbrName}</em>님  <em>${viewRestAmount}</em> 만원 추가 사용 시,<br> 다음 해에 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급이 유지됩니다.`;*/
                gradeInfoMsg = '{1}님  {2}만원 추가 사용 시,<br> 다음 해에 {3} 등급이 유지됩니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<em>${viewRestAmount}</em>`)
                    .replace("{3}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`);
            } else if(currentGrade == "diamond") {
                // 현재 등급 다이아, 금액 등급 실버 , 다음 등급 골드 목표
                //ㅇㅇㅇ님 N 만원 추가 사용 시, 다음 해에 GOLD 등급이 유지됩니다.
                /*gradeInfoMsg = `<em>${mbrName}</em>님  <em>${viewRestAmount}</em> 만원 추가 사용 시,<br> 다음 해에 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급으로 업그레이드 가능합니다.`;*/
                gradeInfoMsg = '{1}님  {2}만원 추가 사용 시,<br> 다음 해에 {3} 등급으로 업그레이드 가능합니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<em>${viewRestAmount}</em>`)
                    .replace("{3}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`);
            }

        }else if (1_000_000 <= totalPaymentAmount  && totalPaymentAmount <= 2_999_999 ) {
            //100만 이상 300만 미만

            if(currentGrade == "silver") {
                // 현재 등급 실버, 금액 등급 골드 , 다음 등급 다이아 목표
                //ㅇㅇㅇ님 다음 해에 GOLD 등급으로 업그레이드 진행이 확정되었으며, N 만원 추가 사용 시 즉시 DIAMOND 등급으로 업그레이드가 진행됩니다.
                //gradeInfoMsg = `<em>${mbrName}</em>님 다음 해에 <span class="gold">GOLD</span> 등급으로 업그레이드 진행이 확정되었으며,<br> <em>${viewRestAmount}</em> 만원 추가 사용 시 즉시 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급으로 업그레이드가 진행됩니다.`;
                gradeInfoMsg = '{1}님 다음 해에 {2} 등급으로 업그레이드 진행이 확정되었으며,<br> {3} 만원 추가 사용 시 즉시 {4} 등급으로 업그레이드가 진행됩니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<span class="gold">GOLD</span>`)
                    .replace("{3}", `<em>${viewRestAmount}</em>`)
                    .replace("{4}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`);



            } else if(currentGrade == "gold") {
                // 현재 등급 골드, 금액 등급 골드 , 다음 등급 다이아 목표
                //ㅇㅇㅇ님 다음 해에 GOLD 등급 유지 진행이 확정되었으며, N 만원 추가 사용 시 즉시 DIAMOND 등급으로 업그레이드가 진행됩니다.
                //gradeInfoMsg = `<em>${mbrName}</em>님 다음 해에 <span class="gold">GOLD</span> 등급 유지 진행이 확정되었으며,<br> <em>${viewRestAmount}</em> 만원 추가 사용 시 즉시 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급으로 업그레이드가 진행됩니다.`;
                gradeInfoMsg = '{1}님 다음 해에 {2} 등급 유지 진행이 확정되었으며,<br> {3} 만원 추가 사용 시 즉시 {4} 등급으로 업그레이드가 진행됩니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<span class="gold">GOLD</span>`)
                    .replace("{3}", `<em>${viewRestAmount}</em>`)
                    .replace("{4}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`);

            } else if(currentGrade == "diamond") {
                // 현재 등급 다이아, 금액 등급 골드 , 다음 등급 다이아 목표
                //ㅇㅇㅇ님 N 만원 추가 사용 시, 다음 해에 DIAMOND 등급 유지 진행이 확정됩니다.
                //gradeInfoMsg = `<em>${mbrName}</em>님 <em>${viewRestAmount}</em> 만원 추가 사용 시 <span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span> 등급 유지 진행이 확정됩니다.`;
                gradeInfoMsg = '{1}님 {2} 만원 추가 사용 시 {3} 등급 유지 진행이 확정됩니다.'
                    .replace("{1}", `<em>${mbrName}</em>`)
                    .replace("{2}", `<em>${viewRestAmount}</em>`)
                    .replace("{3}", `<span class="${nextGradeName.toLowerCase()}">${nextGradeName}</span>`)
            }

        }else if(3_000_000 <= totalPaymentAmount) {
            //300만 이상
            //다음 해에 DIAMOND 등급 유지 진행이 확정됩니다.
            //gradeInfoMsg = `다음 해에 <span class="diamond">DIAMOND</span> 등급 유지 진행이 확정됩니다.`;
            gradeInfoMsg = '다음 해에 {1} 등급 유지 진행이 확정됩니다.'
                .replace("{1}", `<span class="diamond">DIAMOND</span>`)
        }else {
            //오류
        }

        $upgradeInfo.html(gradeInfoMsg);

        // 등급 별 메세지 및 금액 세팅 end -------

	    //총 사용 금액 / 등급별 그래프 세팅
        jQuery(".mygradeCircle").addClass(currentGrade);
        jQuery("#circleCurrentGrade").text(currentGrade);
        jQuery("#totalPaymentAmount").html(viewTotalPaymentAmount +`<span>${UNIT_OF_CURRENCY}</span>`);
    }

    //포인트 list 렌더링
    function renderPointsList(points) {
        const langCode = jQuery("#langCode").val();
        let pointHtml = "";
        if (points != null && points.length > 0) {
            for (let i = 0; i < points.length; i++) {
                let date = points[i].pointDay;                   //포인트 일자
                let hotelName = langCode == 'ko' ? points[i].hotelName : points[i].hotelNameEnglish; //호텔 명
                let paymentAmount = points[i].paymentAmount;     //결제 금액
                let savePoint = points[i].savePoint;             //적립 포인트
                let marketCode = points[i].marketCode;           //적립 구분 코드
                let usePoint = points[i].usePoint;               //사용 포인트
                pointHtml += `<tr>
                                <td>${date }</td>
                                <td>${hotelName }</td>
                                <td>${getNumberFormat(savePoint) }</td>
                                <td>${getNumberFormat(usePoint) }</td>
                            </tr>`;
            }

            jQuery("#points").find("tbody").html(pointHtml);

        }
    } 
</script>

<!-- 하루전 -->


<div id="container" class="container">
    <section class="sub-contents mypage">
        <div class="sub-contents-wrap">
            <!-- 컨텐츠 시작 -->
            <div class="top-menu-wrap">
                
<ul class="top-menu">
    <li  class="on"  ><a href="/hub/ko/mypage.do">마이페이지<!-- 마이페이지 --></a></li>
    <li ><a href="/hub/ko/mypage/mypoint/myPointForm.do">마이포인트<!-- 마이포인트 --></a></li>
    <li ><a href="/hub/ko/mypage/mycoupon/myCouponForm.do">마이쿠폰<!-- 마이쿠폰 --></a></li>
	<li ><a href="/hub/ko/mypage/myResvList.do">예약조회/확인<!-- 예약조회/확인 --></a></li>
    <li ><a href="/hub/ko/mypage/update/pwCheckForm.do">개인정보관리/탈퇴<!-- 개인정보관리/탈퇴 --></a></li>
</ul>
            </div>
            <div class="sub-tit-wrap">
                <h3 class="sub-tit01">마이페이지<!-- 마이페이지 --></h3>
            </div>
            <div class="myAccountInfo">
                <dl class="myInfoList">
                    <dt>이름 </dt>
                    <dd id="mbrName"></dd>
                </dl>
                <dl class="myInfoList">
                    <dt>회원번호 </dt>
                    <dd id="mbrNumber"></dd>
                </dl>
                <dl class="myInfoList">
                    <dt>회원등급 </dt>
                    <dd class="grade" id="currentGrade"></dd><!-- 등급별 클래스 silver / gold / diamond 입니다  -->
                </dl>
                <dl class="myInfoList">
                    <dt>보유포인트 </dt>
                    <dd id="usablePoint"><a href="/hub/ko/mypage/mypoint/myPointForm.do"><em></em> P</a></dd>
                </dl>
                <dl class="myInfoList">
                    <dt>보유쿠폰 </dt>
                    <dd id="countCoupon"><a href="/hub/ko/mypage/mycoupon/myCouponForm.do"><em></em> 개</a></dd>
                </dl>
            </div>
            <div class="myMemberArea">
                <div class="mmbArea">
                    <div class="mypageMainTit">
                        <h1>적립 및 등급 현황 </h1>
                        <a href="/hub/ko/clublahan/membership.do" target="_blank" class="moreBtn">등급별 혜택보기 </a>
                    </div>
                    <div class="mmbBox grade">
                        <div class="mygradeCircle"><!-- 등급별 클래스 silver / gold / diamond 입니다  -->
                            <div class="circlewrap">
                                <div class="upgradeNum"><span></span></div>
                                <div id="upgradeCircle" class="circle"><!--w10 ~ w100 10단위로 클래스 생성  -->
                                    <div class="mygrade">
                                        <div class="gradeList">
                                            <p>현재등급 </p>
                                            <span class="grade" id="circleCurrentGrade"></span>
                                            <div class="occupy" id="totalPaymentAmount"></div>
                                        </div>
                                    </div>
                                    <div class="slice1 slice-list"></div>
                                    <div class="slice2 slice-list"></div>
                                </div>
                            </div>
                        </div>
                        <div id="upgradeInfo" class="bottomTxt"><!-- 등급별 클래스 silver / gold / diamond 입니다  -->
                            
                        </div>
                    </div>
                </div>
	            <div class="mmbArea">
					<div class="mypageMainTit">
						<h1>인센티브 혜택 </h1>
						<a href="/hub/ko/clublahan/membership.do" target="_blank" class="moreBtn">혜택 상세보기 </a>
					</div>
					<div class="mmbBox">
						<div id="incentiveBar" class="incentiveBar_new "><!-- 7박일때 w07 : w01 ~ w20 클래스 생성 -->
							<div id="incentiveItemArea" class="topBarWap">
								<div class="barTd circleBox btd03">
									<p>수영장 or 사우나<br/>1인 무료 </p>
								</div>
								<div class="barTd circleBox btd05">
									<p>2인 조식<br/>무료 </p>
								</div>
								<div class="barTd circleBox btd20">
									<p>주중 디럭스<br/>숙박권 </p>
								</div>
							</div>
						</div>
						<div class="incentiveBottom">
							<div class="bottom-table">
								<div class="box">
									<div class="txt_wrap">
										<strong>현재 투숙일 수 </strong>
										<p>2024-07-02일 기준 </p>
									</div>
									<div id="currentNights" class="incentive_wrap">
										<p><em>0</em> 박 </p>
									</div>
								</div>
								<div class="box">
									<div class="txt_wrap">
										<strong id="benefitsTitle"></strong>
										<p id="benefitsItem"></p>
									</div>
									<div id="benefitsCompletionMessage" class="coupon_wrap" style="display: none;">
										<button type="button" class="coupon">쿠폰발급 완료 </button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
            <div class="mypageMainTit">
                <h1>최근 포인트 적립/사용 내역 </h1>
                <a href="/hub/ko/mypage/mypoint/myPointForm.do" class="moreBtn">포인트내역 더보기 </a>
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
                        <td>날짜 </td>
                        <td>호텔 </td>
                        <td>적립포인트 </td>
                        <td>사용포인트 </td>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="4"><!-- 테이블 안에 데이터 없음 이미지 넣어야 할 경우 colspan 맞춰줘야됨 -->
                                <div class="nodata-wrap">
                                    <img src="/static/pc/images/hub/icon/ico_nodata.png" class="nodata_img">
                                    <p>데이터가 없습니다.</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="mpBottmGuide type02">
                <ul>
                    <li>
                        ※ 적립 포인트는 2024년  07월  02일 기준입니다.
                    </li>
                    <li>※ 당일 적립된 포인트는 익일 확인 가능합니다. </li>
                    <li>※ 적립된 포인트는 1,000p부터 사용 가능합니다. </li>
                </ul>
            </div>
            <!-- 컨텐츠 끝 -->
        </div>
    </section>
</div>


		</div>
		
		 	<%@ include file="/WEB-INF/views/footer.jsp" %> 
		
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