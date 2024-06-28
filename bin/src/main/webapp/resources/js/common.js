//怨듯넻
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

			// 덉씠 댄뙘    ㅽ뵂   body  ㅽ겕濡  X
			if ($(".layerPop").is(':visible')) {
				$('body').addClass('scrollLock');
			}

			$(".layer-close").click(function () {
				$(".layerPop").fadeOut();
				$(".dimmed2").fadeOut();

				// 덉씠 댄뙘    レ쓣   body  ㅽ겕濡  O
				$('body').removeClass('scrollLock');
			});
			
	});

		//header nav:hover   bg  щ 
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

		// 몄뼱
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

		//header > fixedd , dimmed 異붽 
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


// щ젰
$.datepicker.setDefaults({
	dateFormat: 'yy.mm.dd',
	prevText: ' 댁쟾   ',
	nextText: ' ㅼ쓬   ',
	monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
	monthNamesShort: ['1  ', '2  ', '3  ', '4  ', '5  ', '6  ', '7  ', '8  ', '9  ', '10  ', '11  ', '12  '],
	dayNames: ['  ', '  ', '  ', '  ', '紐 ', '湲 ', '  '],
	dayNamesShort: ['  ', '  ', '  ', '  ', '紐 ', '湲 ', '  '],
	dayNamesMin: ['  ', '  ', '  ', '  ', '紐 ', '湲 ', '  '],
	showMonthAfterYear: true,
	showButtonPane: false,
	yearSuffix: '.',
	autoSize: false,
	numberOfMonths: 2,
	multidate: true,
	selectOtherMonths: true
});