$(document).ready(function(){
	// 대읇  쇳븳
	$(".club-toggle .toggle-btn").on("click", function(){
		$(this).parents("li").toggleClass("active");

		if( $(this).parents("li").hasClass("active") ){
			$(this).parents(".toggle-head").next(".toggle-cont").slideDown();
		} else {
			$(this).parents(".toggle-head").next(".toggle-cont").slideUp();
		}
	});
});

var commonJsUp = {};
this.commonJsUp = commonJsUp;

$(document).ready(function () {
	
	commonJsUp.setFileUpload('.fileUpload');
	
	//layer popup
    $(document).on('click', '.open_layer', function () {
    
        var target = $(this).attr('layer-data');
    
        $('.layerPop[layer-data='+target+']').fadeIn();
        $(".dimmed").fadeIn();
    
        // 덉씠 댄뙘    ㅽ뵂   body  ㅽ겕濡  X
        if ($(".layerPop").is(':visible')) {
            $('body').addClass('scrollLock');
        }
    
        $(".layer-close").click(function () {
          $(".layerPop").fadeOut();
          $(".dimmed").fadeOut();
    
          // 덉씠 댄뙘    レ쓣   body  ㅽ겕濡  O
          $('body').removeClass('scrollLock');
        });
        
    });

	//tab list & radio tab
    $(document).on('click', '.tabList > li, .radioTab > span', function () {
        
        var tab_id = $(this).children('a').attr('data-tab');
		var radio_tabId = $(this).attr("data-tab");
	
        $(this).siblings().removeClass('on');
        $('.tab-cont, .radioTab-cont').removeClass('on');

        $(this).addClass('on');
        $('#' + tab_id).addClass('on');
		$('#' + radio_tabId).addClass('on');
        
    });
	
	//toggle list
	$(document).on('click', '.toggleList > li > a', function () {
		if($(this).siblings(".toggle-cont").is(":hidden")){
			$(this).siblings(".toggle-cont").slideDown();
			$(this).children(".category").addClass("active");
			$(this).children(".tit").addClass("active");
			$(this).children(".toggle-btn").addClass("action");
			
			$(this).parents("li").siblings().children(".toggle-cont").slideUp();
			$(this).parents("li").siblings().find(".category").removeClass("active");
			$(this).parents("li").siblings().find(".tit").removeClass("active");
			$(this).parents("li").siblings().find(".toggle-btn").removeClass("action");
		}else{
			$(this).siblings(".toggle-cont").slideUp();
			$(this).children(".category").removeClass("active");
			$(this).children(".tit").removeClass("active");
			$(this).children(".toggle-btn").removeClass("action");
		}
	});
	
	//select-wrap
	$(document).on("click", ".select-wrap", function(){
		var select_wrap = $(".select-wrap");
						
		if($(this).children("ul").is(":hidden")){
			select_wrap.children(".select-box").hide();
			select_wrap.children(".selected").find(".select-arrow").removeClass("arrow-action");
			
			$(this).children("ul").show();
			$(this).addClass("active");
			$(this).children(".selected").find(".selected-value").addClass("active");
			$(this).children(".selected").find(".select-arrow").addClass("arrow-action");
		}else{
			select_wrap.children(".select-box").hide();
			select_wrap.children(".selected").find(".select-arrow").removeClass("arrow-action");
			
			$(this).children("ul").hide();
			$(this).removeClass("active");
			$(this).children(".selected").find(".select-arrow").removeClass("arrow-action");
		}
		
		$(".select-box li").click(function(){
			var text = $(this).html();
			
			var $selected = $(this).closest('.select-box').siblings('.selected');
			$selected.find('span').html(text);
			
			$selected.closest(".select-box").hide();
		});
		
		$(document).bind('click', function(e) {
			var $clicked = $(e.target);
			if (!$clicked.parents().hasClass("active")){
				select_wrap.children(".select-box").hide();
				select_wrap.children(".selected").find(".select-arrow").removeClass("arrow-action");
				select_wrap.removeClass("active");//2023-01-03 異붽 
			}
		});
	});
	
});



commonJsUp.setFileUpload = function (uploadNode) {

    /**  뚯씪  좏깮 */
    $(document).on('change', uploadNode + ' .uploadBtn', function (e) {

        if (window.FileReader) {
            if (this.files.length < 1) {
                $(this)
                    .closest(uploadNode)
                    .find('.intDel .btnDel')
                    .hide();
                $(this)
                    .closest(uploadNode)
                    .find('.intDel')
                    .eq(0)
                    .find('.fileName')
                    .val('');
                $(this)
                    .get(0)
                    .value = "";
                return;
            }

            var filename = this
                .files[0]
                .name;
            $(this)
                .closest(uploadNode)
                .find('.intDel .fileName')
                .val(filename);

        } else {
            var filename = $(this)
                .val()
                .split('/')
                .pop()
                .split('\\')
                .pop();
            $(this)
                .closest(uploadNode)
                .find('.intDel:last .fileName')
                .val(filename);
        }
        $(this)
            .closest(uploadNode)
            .find('.btnDel')
            .show();

    });

    /**  뚯씪   젣 */
    $(document).on('click', uploadNode + ' .btnDel', function () {
        var _t = $(this);
        _t.hide();

        if (window.FileReader) {
            _t
                .closest(uploadNode)
                .find('.uploadBtn')
                .get(0)
                .files[0]
                .value = '';
            if (_t.closest(uploadNode).find('.intDel:visible').length > 1) {
                _t
                    .closest('.intDel')
                    .hide();
            } else {
                _t
                    .siblings('.fileName')
                    .val('');
                _t
                    .closest(uploadNode)
                    .find('.uploadBtn')
                    .get(0)
                    .value = "";
            }
        } else {
            _t
                .siblings('.fileName')
                .get(0)
                .value = '';
            var uploadNodeClone = _t
                .closest(uploadNode)
                .find('.uploadBtn')
                .clone(true);
            _t
                .closest(uploadNode)
                .find('.uploadBtn')
                .replaceWith(uploadNodeClone);
        }
    })
};
$(document).ready(function () {
	// 꾩껜 좏깮 泥댄겕諛뺤뒪  대┃
	$(document).on('click', '.frmAll', function () {
		if($("#allChked").prop("checked")) {			
			$("input[type=checkbox]").prop("checked",true).change();			
		} else {		
			$("input[type=checkbox]").prop("checked",false).change();
		}        
    });
    
    // ⑤씪 몄꺏  곸꽭  몃꽕    щ씪 대뱶
    var slider = new Swiper (".onlinethm-slider", {
			speed: 500,
			loop: $('.contents-slider .swiper-slide').length === 1 ? false:true,
			pagination: {
				el: ".swiper-pagination",
				clickable: true
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
	
		// 명뀛 뚭컻  곸꽭
		var subSlider = new Swiper (".contents-slider", {
			speed: 500,
			loop: $('.contents-slider .swiper-slide').length === 1 ? false:true,
			pagination: {
				el: ".swiper-pagination",
				type: "fraction",
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
});


