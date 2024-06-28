$(document).ready(function(){
	// 꾩껜 硫붾돱
	$(".btn-all").on("click", function(){
		$(this).toggleClass("active");

		if( $(this).hasClass("active") ){
			//body scroll lock
			$("body").addClass("scrollLock");
			//header fixedd 異붽 
			$(".header").addClass("hfixedd");
			//dimmed 遺덈윭 ㅺ린
			$(".dimmed").show();
			// 꾩껜硫붾돱 遺덈윭 ㅺ린
			$(".all-menulist").slideDown();
		} else {
			$("body").removeClass("scrollLock");
			$(".header").removeClass("hfixedd");
			$(".dimmed").hide();
			$(".all-menulist").slideUp(300);
		}
	});

	// 명뀛李얘린 popup a > addClass
	// $(".select-link-box a").on("click", function(){
	// 	$(".select-link-box a").removeClass("select");
	// 	$(this).addClass("select");
	// });

	// 덉빟 > 媛앹떎  ㅻ챸 > 媛앹떎  ㅻ챸 popup > slider
	var resvInnerSlider = new Swiper (".resv-slider", {
		speed: 500,
		slidesPerView: 1,
		loop: $('.swiper-container .swiper-slide').length === 1 ? false:true,
		pagination: {
			el: ".swiper-pagination",
		},
	});

	// 덉빟 >  ⑦궎吏   ㅻ챸 >  ⑦궎吏   ㅻ챸 popup > slider
	var packInnerSlider = new Swiper (".pack-slider", {
		speed: 500,
		slidesPerView: 1,
		loop: $('.swiper-container .swiper-slide').length === 1 ? false:true,
		pagination: {
			el: ".swiper-pagination",
		},
	});
});