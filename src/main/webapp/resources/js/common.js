//공통
$(document).ready(function(){
	
	const selectBoxElements = document.querySelectorAll(".select");

	function toggleSelectBox(selectBox) {
		selectBox.classList.toggle("active");
	}

	function selectOption(optionElement) {
		const selectBox = optionElement.closest(".select");
		const selectedElement = selectBox.querySelector(".selected-value");
		selectedElement.textContent = optionElement.textContent;
	}

	selectBoxElements.forEach(selectBoxElement => {
		selectBoxElement.addEventListener("click", function (e) {
			const targetElement = e.target;
			const isOptionElement = targetElement.classList.contains("option");

			if (isOptionElement) {
				selectOption(targetElement);
			}

			toggleSelectBox(selectBoxElement);
		});
	});

	document.addEventListener("click", function (e) {
		const targetElement = e.target;
		const isSelect = targetElement.classList.contains("select") || targetElement.closest(".select");

		if (isSelect) {
			return;
		}

		const allSelectBoxElements = document.querySelectorAll(".select");

		allSelectBoxElements.forEach(boxElement => {
			boxElement.classList.remove("active");
		});
		
	});

	//layer popup
	$(document).on('click', '.open_layer', function () {
    
			var target = $(this).attr('layer-data');

			$('.layerPop[layer-data='+target+']').fadeIn();
			$(".dimmed2").fadeIn();

			//레이어팝업 오픈시 body 스크롤 X
			if ($(".layerPop").is(':visible')) {
				$('body').addClass('scrollLock');
			}

			$(".layer-close").click(function () {
				$(".layerPop").fadeOut();
				$(".dimmed2").fadeOut();

				//레이어팝업 닫을시 body 스크롤 O
				$('body').removeClass('scrollLock');
			});
			
	});

		//header nav:hover시 bg 여부
		$(".nav-list > li").on("mouseenter", function(){
			$(this).parents(".header").addClass("open");
		});

		$(".header").on("mouseleave", function(){
			$(this).removeClass("open");
		});

		$(".logo").on("mouseenter", function(){
			$(".logo > img").eq(0).addClass("off");
			$(".logo > img").eq(1).removeClass("off").addClass("on");
		});

		$(".logo").on("mouseleave", function(){
			$(".logo > img").eq(0).removeClass("off").addClass("on");
			$(".logo > img").eq(1).removeClass("on").addClass("off");
		});

		//언어
		$(".lang-box").on("click", function(){
			var langTarget = $(".lang-box .selected-value").text();
			var valueTarget1 = $(".lang-wrap > li:eq(0)").text();
			var valueTarget2 = $(".lang-wrap > li:eq(1)").text();

			if( langTarget === valueTarget1 ){
				$(".lang-wrap > li:eq(0)").hide();
				$(".lang-wrap > li:eq(1)").show();
			} else if( langTarget === valueTarget2 ){
				$(".lang-wrap > li:eq(1)").hide();
				$(".lang-wrap > li:eq(0)").show();
			}
		});

		//header > fixedd , dimmed 추가
		$(window).scroll(function(){
			var hScroll = $(this).scrollTop();
			if( hScroll > 42 ){
				$(".header").addClass("fixedd");
			} else {
				$(".header").removeClass("fixedd");
			}
		});
		
		//banner close
		$(".banner-close").on("click", function(){
			$(this).parents(".banner-wrap").removeClass("show-banner");
		});

});


//달력
$.datepicker.setDefaults({
	dateFormat: 'yy.mm.dd',
	prevText: '이전 달',
	nextText: '다음 달',
	monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	showMonthAfterYear: true,
	showButtonPane: false,
	yearSuffix: '.',
	autoSize: false,
	numberOfMonths: 2,
	multidate: true,
	selectOtherMonths: true
});
