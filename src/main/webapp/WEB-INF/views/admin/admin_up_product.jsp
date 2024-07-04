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


<header id="header" class="header">
			<!--(HEAD 최종수정일 : 2024-04-01 19:13)-->

			<div class="h-wrap">
				<div class="h-box-left">
					<h1 class="logo">
						<a href="./main" title="메인으로 이동">
							<img src="${pageContext.request.contextPath}/resources/images/main_logo.png" alt="LAHAN"/>
							<img src="${pageContext.request.contextPath}/resources/images/main-logo-bold.png" alt="LAHAN" class="off"/>
							<span class="fixedd_logo"><img src="${pageContext.request.contextPath}/resources/images/hub/main_logo_bl.png" alt="LAHAN3"/></span>
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
							<a href="${pageContext.request.contextPath}/admin/hotel.do">호텔/상품 관리</a>
						</li>
						<li>
							<a href="/lahan/admin/notice.do">공지/문의 관리</a>
						</li>
					</ul>
				</div>
				<div class="h-box-right">
					<ul class="set-wrap">
						
						<li><a href="${pageContext.request.contextPath}/login/logout" title="로그아웃">로그아웃<!-- 로그아웃 --></a></li>
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
		
		
		
		<form action="./upproductCommand" method="post" enctype="multipart/form-data" onsubmit="return validateProductForm()">
    <div id="container" class="container">
        <div class="join-contents-wrap">
            <div class="joinTitWrap">
                <strong>상품 등록</strong>
            </div>
            <div class="joinIfBox">
                <p>상품 정보를 입력해 주세요.</p>
            </div>
            <div class="joinMemberBox top">
                <div class="mbBoxTit">
                    <strong>상품 정보</strong>
                    <span>* 표시 필수 입력 사항</span>
                </div>
                <div class="mbfrmList">
                    <div class="mbfrm necessary">
                        <div class="floatInput join-id-overlap">
                            <input type="text" id="proId" name="proId" data-valid='Y' placeholder="상품 아이디를 입력해 주세요." aria-required="true" required>
                        </div>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="text" id="proName" name="proName" data-valid='Y' placeholder="상품명을 입력해 주세요." aria-required="true" required>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="text" id="proTitle" name="proTitle" data-valid='Y' placeholder="상품안내 제목을 입력해 주세요." aria-required="true" required>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="text" id="proScript" name="proScript" data-valid='Y' placeholder="상품안내 설명을 입력해 주세요." aria-required="true" required>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="number" id="proQuant" name="proQuant" data-valid='Y' placeholder="상품 수량을 입력해 주세요." aria-required="true" required>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="number" id="proPrice" name="proPrice" data-valid='Y' placeholder="상품 금액을 입력해 주세요." aria-required="true" required>
                    </div>
                    <div class="mbfrm necessary">
                        <input type="number" id="proPriceDis" name="proPriceDis" data-valid='Y' placeholder="상품 할인금액을 입력해 주세요." aria-required="true" required>
                    </div>
                    
                    
                    
                    <div class="mbfrm necessary">
                        <select id="proCate" name="proCate" class="form-control" aria-required="true" required>
                            <option value="">상품 카테고리를 선택해 주세요</option>
                            <option value="PB">PB</option>
                            <option value="상품권">상품권</option>
                            <option value="선물세트">선물세트</option>
                        </select>
                    </div>
                    
                    <div class="mbfrm necessary">
                    <label for="proFile">제품이미지</label>
                        <input type="file"  id="proFile" name="proFile" class="btn btn-navy-line" />
                    </div>
                    
                    
                </div>
            </div>
            <div class="joinBtnArea btn-inline-box">
                <button type="submit" class="btn btn-navy-line">등록하기</button>
                <!-- <a href="#none" onclick="cancel();" title="취소" class="btn btn-navy-line">취소</a> -->
            </div>
        </div>
    </div>
</form>



<!-- <form action="./upproductCommand" method="post" enctype="multipart/form-data">

        <div class="form-group">
            <label for="proId">상품 아이디 : </label>
            <input type="text" class="form-control" id="proId" name="proId" required>
        </div>
        <div class="form-group">
            <label for="proName">상품명 : </label>
            <input type="text" class="form-control" id="proName" name="proName" required>
        </div>
        <div class="form-group">
            <label for="proTitle">상품안내 제목 : </label>
            <input type="text" class="form-control" id="proTitle" name="proTitle" required>
        </div>
        <div class="form-group">
            <label for="proScript">상품안내 설명 : </label>
            <input type="text" class="form-control" id="proScript" name="proScript" required>
        </div>
        
         <div class="form-group">
            <label for="proQuant">상품 수량 : </label>
            <input type="number" class="form-control" id="proQuant" name="proQuant" required>
        </div>
        
        <div class="form-group">
            <label for="proPrice">상품 금액 : </label>
            <input type="number" class="form-control" id="proPrice" name="proPrice" required>
        </div>
        
        <div class="form-group">
            <label for="proPriceDis">상품 할인금액 : </label>
            <input type="number" class="form-control" id="proPriceDis" name="proPriceDis" required>
        </div>
     
         <div class="form-group">
            <label for="proFile">제품이미지</label>
            <input type="file" class="form-control-file" id="proFile" name="proFile" />
        </div> 
        
          <div class="form-group">
            <label for="proCate">상품 카테고리 : </label>
            <select class="form-control" id="proCate" name="proCate" required>
                <option value="PB">PB</option>
                <option value="상품권">상품권</option>
                <option value="선물세트">선물세트</option>
                
            </select>
        </div>
        
        
        
        <button type="submit" class="btn btn-primary">등록</button>
    </form>
     -->
    
    
    	<%@ include file="/WEB-INF/views/footer.jsp" %> 

</body>
</html>