var commonJs = {};
this.commonJs = commonJs;
var ANIMATION_EASING = 'easeOutExpo';
var headerFixH = 80;

$(document).ready(function () {
	commonJs.initFromToCalendar($('#datepickerFrom'), $('#datepickerTo'));
})


$(window).on('load', function () {
	commonJs.setRevArea('.revArea');
})

/***********************************************************************************************************
 * document.Ready     몄텧
 **********************************************************************************************************/

/**
 * HUMY4200T.html
 * 湲곌컙議고쉶 罹섎┛  
 *
 * @param from (Element)
 * @param to (Element)
 */
commonJs.initFromToCalendar = function (_from, _to) {
	// var currentDate = new Date(); var tommorowDate = new Date(currentDate);
	// tommorowDate.setDate(tommorowDate.getDate() + 1);
	// _from.val(currentDate.getFullYear() + '.' + lpad((currentDate.getMonth() +
	// 1), 2, 0) + '.' + currentDate.getDate()); _to.val(tommorowDate.getFullYear()
	// + '.' + lpad((tommorowDate.getMonth() + 1), 2, 0) + '.' +
	// tommorowDate.getDate());

	var nowDate = new Date();
	var monthOfYear = nowDate.getMonth();
	var minDate = new Date();
	var maxDate = new Date();

	//1 꾩쟾
	minDate.setMonth(monthOfYear - 12);
	//1 꾪썑
	maxDate.setMonth(monthOfYear + 12);
	from = _from
		.datepicker({
			// defaultDate: "+1w",
			numberOfMonths: 1,
			showMonthAfterYear: true,
			monthNames: [
				"01",
				"02",
				"03",
				"04",
				"05",
				"06",
				"07",
				"08",
				"09",
				"10",
				"11",
				"12"
			],
			dayNamesMin: [
				"S",
				"M",
				"T",
				"W",
				"T",
				"F",
				"S"
			],
			dateFormat: 'yy.mm.dd',
			minDate: minDate,
			maxDate: maxDate,
			onDayCreate: function (dObj, dStr, fp, dayElem) {
				  //  쇱슂    쒖떆
				    if (dayElem.dateObj.getDay() === 0) {
				      dayElem.classList.add("sun");
				    }
				    var obj = dayElem.dateObj;
				    var date = obj.getFullYear() + get2DigitFmt(obj.getMonth() + 1) + get2DigitFmt(obj.getDate());

			},
			beforeShow: function () {
				$(this)
					.datepicker("widget")
					.addClass("datepickerFrom");
			},
			onClose: function () {
				$(this)
					.datepicker("widget")
					.removeClass("datepickerFrom");
			}
		})
		.on("change", function () {
			to.datepicker("option", "minDate", getDate(this));
		}),
		to = _to
		.datepicker({
			// defaultDate: "+1w",
			numberOfMonths: 1,
			showMonthAfterYear: true,
			monthNames: [
				"01",
				"02",
				"03",
				"04",
				"05",
				"06",
				"07",
				"08",
				"09",
				"10",
				"11",
				"12"
			],
			dayNamesMin: [
				"S",
				"M",
				"T",
				"W",
				"T",
				"F",
				"S"
			],
			dateFormat: 'yy.mm.dd',
			minDate: minDate,
			maxDate: maxDate,
			beforeShow: function () {
				$(this)
					.datepicker("widget")
					.addClass("datepickerTo");
			},
			onClose: function () {
				$(this)
					.datepicker("widget")
					.removeClass("datepickerTo");
			}
		})
		.on("change", function () {
			from.datepicker("option", "maxDate", getDate(this));
		});
	$('#ui-datepicker-div').wrap('<div class="datepicker-wrapper"/>');

	function getDate(element) {
		var date;
		var dateFormat = 'yy.mm.dd';
		try {
			date = $
				.datepicker
				.parseDate(dateFormat, element.value);
		} catch (error) {
			date = null;
		}
		return date;
	}
}

//硫붿씤  덉빟罹섎┛    좎쭨愿    留ㅻ땲吏뺥븿  
commonJs.calendarMgr = {
	chkInDate: '',
	chkOutDate: '',
	_getChkInDate: function () {
		return this.chkInDate;
	},
	_getChkOutDate: function () {
		return this.chkOutDate;
	},
	_setChkInDate: function (date) {
		this.chkInDate = date;
	},
	_setChkOutDate: function (date) {
		this.chkOutDate = date;
	},
	_resetDate: function (calendarEl, startDate, endDate) {
		commonJs.setCalendarChkInOutDate(calendarEl, startDate, endDate);
		this.chkInDate = '';
		this.chkOutDate = '';

		commonJs.gotoDate(calendarEl, startDate.getMonth(), startDate.getFullYear());
		calendarEl.datepicker('refresh');
		calendarEl.trigger('refresh');

	}
}

/**
 * HURE1000M.html
 *  덉빟 罹섎┛  
 * https://api.jqueryui.com/datepicker/
 *
 * @param calendarEl (Element)
 */
commonJs.initResvCalendar = function (calendarEl,lang) {
	if (!calendarEl.length) {
		return;
	}
	var option = {};
	calendarEl.empty();

var chkInDate = commonJs
	.calendarMgr
	._getChkInDate();
var chkOutDate = commonJs
	.calendarMgr
	._getChkOutDate();

var clickCnt = 0;
var resved = false;
if(chkOutDate != "" && chkInDate != ""){
	clickCnt = 2;
	resved = true;
}
var isOneday = calendarEl.hasClass('oneDay');
var unSelectableDate = [];

var startDate = new Date();

var endDate = new Date(startDate.getFullYear(), startDate.getMonth() + 12, 0);

/*calendarEl.on('refresh', function () {
	clickCnt = 0;
	resved = false;
})*/
//checkInOut calendar
option = {
	defaultDate: startDate,
	tDay: startDate, // .ui-datepicker-today  곸슜  좎쭨
	chkInTitle: '泥댄겕  ',
	chkOutTitle: '泥댄겕 꾩썐',
	numberOfMonths: 2,
	showOtherMonths: false,
    selectOtherMonths: false,
	showMonthAfterYear: true,
	monthNames: [
		"01",
		"02",
		"03",
		"04",
		"05",
		"06",
		"07",
		"08",
		"09",
		"10",
		"11",
		"12"
	],
	dayNamesMin: (lang == 'ko') ?
		[
			"  ",
			"  ",
			"  ",
			"  ",
			"紐 ",
			"湲 ",
			"  "
		] :
		[
			"SUN",
			"MON",
			"TUE",
			"WED",
			"THU",
			"FRI",
			"SAT"
		],
	// minDate: 0, maxDate : '+11m',
	minDate: startDate,
	maxDate: endDate,
	dateFormat: 'yy.mm.dd',
	onChangeMonthYear: function (year, month, inst) {
		// 좎쭨 좏깮 諛   щ젰     대룞    몄텧 setUnselectableDate(year, month);
		$("#searchMonth").val(month);
		$("#searchYear").val(year);
		hotlCalendar();
	},
	onDayCreate: function (dObj, dStr, fp, dayElem) {
	 	//var obj = dayElem.dateObj;
	  	//var date = obj.getFullYear() + get2DigitFmt(obj.getMonth() + 1) + get2DigitFmt(obj.getDate());
	},
	beforeShowDay: function (date) {
		var calDate = dUtils.getToDate(date);
    	var yyyymmdd = date.getFullYear() + "-" + ((date.getMonth() + 1) > 9 ? (date.getMonth() + 1).toString() : "0" + (date.getMonth() + 1)) + "-" + (date.getDate() > 9 ? date.getDate().toString() : "0" + date.getDate().toString());

		chkInDate = commonJs
			.calendarMgr
			._getChkInDate();
		chkOutDate = commonJs
			.calendarMgr
			._getChkOutDate();


		if(dateList.get(yyyymmdd) == undefined){
			if(clickCnt != 1){
				if (chkOutDate == calDate) {
					return [true, 'sel revOff'];
				}else{
					return [false];

				}
			}
		}

		// 泥댄겕  
		if (chkInDate == calDate) {
			return [true, 'sel revOn ui-datepicker-unselectable ui-state-disabled'];
		}

		// 泥댄겕 꾩썐
		if (chkOutDate == calDate) {
			return [true, 'sel revOff'];
		}

		//  좏깮 쒗븳  좎쭨
		if (unSelectableDate.indexOf(calDate) != -1) {
			if (clickCnt == 0 || resved) {
				return [true, 'tdDefault'];
			}
			if (clickCnt == 1 && chkInDate > calDate) {
				return [true, 'tdDefault'];
			}
		}

		// 以묎컙  좎쭨  좏깮
		return [
			true,
			(calDate > chkInDate && calDate < chkOutDate) ?
			'sel revIng' :
			''
		];




	},
	onSelect: function (date, inst) {
		var mon = inst.selectedMonth,
			year = inst.selectedYear,
			drawMonth = inst.drawMonth;

		var selectPrevChkIn = false;
		var dateSplit = date.split('.');

		if (chkInDate != '' && date < chkInDate) {
			selectPrevChkIn = true;
		}

		if (resved || (chkInDate != '' && date < chkInDate)) {
			resved = false;
			clickCnt = 0;
			chkInDate = '';
			chkOutDate = '';
			commonJs
				.calendarMgr
				._setChkInDate('');
			commonJs
				.calendarMgr
				._setChkOutDate('');
		}
		clickCnt++;
		if (clickCnt > 1) {
			chkOutDate = date;
			commonJs
				.calendarMgr
				._setChkOutDate(date);
			var ckinDay = dUtils.getDateToDay(chkInDate,lang);
			var ckoutDay = dUtils.getDateToDay(chkOutDate,lang);
			var nightCnt = dUtils.dateDiff(chkInDate, chkOutDate);
			$("#cntDay").html(nightCnt);
			if ($("#night").length) {
				$("#nightText").text(nightCnt); // 泥댄겕    좎쭨
				$("#chkInDate").text(chkInDate);
				$("#chkOutDate").text(chkOutDate);
				$("#ckinDay").text("("+ckinDay+")");
				$("#ckoutDay").text("("+ckoutDay+")");
				$("#night").val(nightCnt); // 泥댄겕    좎쭨
				$("#resveCheckIn").val(chkInDate); // 泥댄겕    좎쭨
				$("#resveCheckOut").val(chkOutDate); // 泥댄겕 꾩썐  좎쭨
				if (window.location.href.indexOf("main") > -1) {
					$("#check_in").val(chkInDate.replace(/\./gi, "-")); // 泥댄겕    좎쭨
					$("#check_out").val(chkOutDate.replace(/\./gi, "-")); // 泥댄겕 꾩썐  좎쭨
				}
				if (window.location.href.indexOf("resv/step1") > -1) {
					$("#check_in").val(chkInDate.replace(/\./gi, "-")); // 泥댄겕    좎쭨
					$("#check_out").val(chkOutDate.replace(/\./gi, "-")); // 泥댄겕 꾩썐  좎쭨
				}

			}
			var daysDiff = dUtils.dateDiff(chkInDate, chkOutDate);
			// var startDate = new Date(); var endDate = new Date(startDate.getFullYear(),
			// startDate.getMonth() + 12, 0);
			if (daysDiff > 0) {
				/*calendarEl.datepicker('setDate', chkOutDate);*/

				/*calendarEl.datepicker(
					'option',
					'minDate',
					new Date(calendarEl.datepicker('option', 'minDate'))
				);
				calendarEl.datepicker(
					'option',
					'maxDate',
					new Date(calendarEl.datepicker('option', 'maxDate'))
				);
				//媛앹떎 諛   몄썝 좏깮  꾩퐫 붿뼵 open
				if (calendarEl.closest('.checkDate').length) {
					calendarEl
						.closest('li')
						.next('li')
						.find('.btnToggle')
						.trigger('click_checkDate');
				}*/
			}
			$(".mainCalendar").hide();
		} else {
			chkInDate = date;
			commonJs
				.calendarMgr
				._setChkInDate(date);

			var _cid = new Date(dateSplit[0], dateSplit[1] - 1, dateSplit[2]);
			if (isOneday) {
				_cid.setDate(_cid.getDate() + 1);
			} else {
				_cid.setDate(_cid.getDate() + 365);
			}

			/*calendarEl.datepicker('setDate', chkInDate);
			// calendarEl.datepicker('option' , 'minDate', 0);
			calendarEl.datepicker(
				'option',
				'minDate',
				calendarEl.datepicker('option', 'minDate')
			);
			if (_cid > endDate) {
				calendarEl.datepicker(
					'option',
					'maxDate',
					calendarEl.datepicker('option', 'maxDate')
				);
			} else {
				calendarEl.datepicker('option', 'maxDate', _cid);
			}*/
		}
		/*if (drawMonth == new Date(dateSplit[0], dateSplit[1] - 1, dateSplit[2]).getMonth()) {
			commonJs.gotoDate(calendarEl, mon, year);
		} else {
			commonJs.gotoDate(calendarEl, mon - 1, year);
		}*/
		if (chkInDate != '' && chkOutDate != '') {
			resved = true;
		}
	}
};

calendarEl.datepicker(option);
/**
 *  좏깮 쒗븳  붾  곗씠  
 */
function setUnselectableDate(year, month) {
	//date push
	unSelectableDate = [];
	//test dummy
	var i = 20;
	while (i < 25) {
		unSelectableDate.push(year + '.' + lpad(month, 2, 0) + '.' + i);
		i++;
	}
}
if (calendarEl.hasClass('oneDay')) {
	setUnselectableDate(
		calendarEl.datepicker('getDate').getFullYear(),
		calendarEl.datepicker('getDate').getMonth() + 2
	);
	calendarEl.datepicker('refresh');
}
$(document).on(
	'mouseover',
	'.calendar tbody td:not(".ui-datepicker-unselectable")',
	function (e) {

		if (chkInDate != '') {
			var chkInCalendarIdx = $('.revOn')
				.closest('.calInner')
				.index();

			var calendarIdx = $(e.currentTarget)
				.closest('.calInner')
				.index();
			var currentTr = $(e.currentTarget).closest('tr');
			var currentTd = $(e.currentTarget);
			var startTr = $('.revOn').closest('tr');
			var startTd = $('.revOn');
			var chkInRightCalendar = false;

			if (chkOutDate != '') {
				return;
			}
			if ((chkInCalendarIdx == calendarIdx && currentTd.index() <= startTd.index()) || (chkInCalendarIdx == calendarIdx && currentTr.index() < startTr.index())) {
				calendarEl
					.find('.calInner:eq(' + calendarIdx + ') tbody tr td')
					.each(function (idx, itm) {
						$(this).removeClass('sel revIng revIngEnd');
					})
				startTd.addClass('sel');
			}
		} else {
			return;
		}

		if (chkOutDate != '') {
			return;
		}
		if (chkInCalendarIdx == 1) {
			chkInRightCalendar = true;
		} else if (currentTr.closest('.calRight').length && chkInCalendarIdx == 0) {
			calendarEl
				.find('.calLeft tbody tr')
				.each(function (idx, itm) {
					if (idx == startTr.index()) {
						setTdState(startTr, startTd.index(), 6);
					} else if (idx > startTr.index()) {
						setTdState($(itm), 0, 6);
					}
				})

			chkInRightCalendar = true;
			startTr = $('.calRight tbody tr:eq(0)');
			startTd = startTr
				.find('td[data-handler="selectDay"]')
				.eq(0);

		} else if (currentTr.closest('.calLeft').length && chkInCalendarIdx == 0) {
			calendarEl
				.find('.calRight tbody tr td')
				.removeClass('revIng revIngEnd sel');
		} else {
			return;
		}

		if (chkInRightCalendar) {

			calendarEl
				.find('.calRight .calendar tbody tr')
				.each(function () {
					var _this = $(this);

					if (_this.index() < startTr.index() || _this.index() > currentTr.index() || calendarIdx == 0) {
						return;
					}

					if (_this.index() == startTr.index() && _this.index() == currentTr.index()) {
						//start1
						if (currentTd.index() < startTd.index() || currentTr.index() < startTr.index()) {
							tdIdx = -1;
						} else {
							tdIdx = currentTd.index()
						};
						setTdState(startTr, startTd.index(), tdIdx, true);
						return;
					} else if (_this.index() == startTr.index() && _this.index() != currentTr.index()) {
						//start2
						setTdState(startTr, startTd.index(), startTr.find('td').length - 1);
						return;
					}

					if (_this.index() >= startTr.index() && _this.index() < currentTr.index()) {
						//ing
						setTdState(
							calendarEl.find('.calendar').eq(calendarIdx).find('tbody tr').eq(_this.index()),
							0,
							6
						);
						return;
					}

					if (_this.index() > startTr.index() && _this.index() == currentTr.index()) {
						//end
						setTdState(
							calendarEl.find('.calendar').eq(calendarIdx).find('tbody tr').eq(_this.index()),
							0,
							currentTd.index(),
							true
						);
						return;
					}

				})
		} else {
			calendarEl
				.find('.calLeft .calendar tbody tr')
				.each(function () {
					var _this = $(this);

					if (_this.index() < startTr.index() || _this.index() > currentTr.index()) {
						return;
					}

					if (_this.index() == startTr.index() && _this.index() == currentTr.index()) {
						if (currentTd.index() < startTd.index() || currentTr.index() < startTr.index()) {
							tdIdx = -1;
						} else {
							tdIdx = currentTd.index()
						};
						setTdState(startTr, startTd.index(), tdIdx, true);
						return;
					} else if (_this.index() == startTr.index() && _this.index() != currentTr.index()) {
						setTdState(startTr, startTd.index(), startTr.find('td').length - 1);
						return;
					}

					if (_this.index() >= startTr.index() && _this.index() < currentTr.index()) {
						setTdState(
							calendarEl.find('.calendar').eq(calendarIdx).find('tbody tr').eq(_this.index()),
							0,
							_this.find('td').length - 1
						);
						return;
					}

					if (_this.index() > startTr.index() && _this.index() == currentTr.index()) {
						setTdState(
							calendarEl.find('.calendar').eq(calendarIdx).find('tbody tr').eq(_this.index()),
							0,
							currentTd.index(),
							true
						);

						return;
					}

				})
		}
	}
)

function setTdState(trEl, start, end, _round) {
	var round = _round || false;
	trEl
		.find('td')
		.filter(function () {
			var idx = $(this).index();
			if (end == -1) {
				$(this).removeClass('revIngEnd');
				return;
			}
			if (idx >= start && idx < end) {
				$(this).removeClass('revIngEnd');
				$(this).addClass('sel revIng');
			} else {
				$(this).removeClass('sel revIng revIngEnd');
			}
			if (idx == end) {
				$(this).addClass('sel revIng revIngEnd');
			}
			if (idx == 6 && !round) {
				$(this).removeClass('revIngEnd');
			}
		})
	trEl
		.nextAll('tr')
		.find('td')
		.removeClass('sel revIng revIngEnd');
}

$('.calWrap').css('width', '');
}
commonJs.gotoDate = function ($j, month, year) {
	$j.each(function (i, el) {
		var inst = $
			.datepicker
			._getInst(el);
		inst.drawMonth = inst.selectedMonth = month;
		inst.drawYear = inst.selectedYear = year;
		$
			.datepicker
			._notifyChange(inst);
		$
			.datepicker
			._adjustDate(el);
	});
}

/**
 *  щ젰  좎쭨  명똿
 *
 * @param calendarEl ( 붿냼)
 * @param minDate ( 쒖옉  )
 * @param maxDate (醫낅즺  )
 *
 */
commonJs.setCalendarChkInOutDate = function (calendarEl, minDate, maxDate) {
	calendarEl.datepicker('option', 'minDate', minDate);
	calendarEl.datepicker('option', 'maxDate', maxDate);
	calendarEl.datepicker('option', 'tDay', minDate);
	calendarEl.datepicker('setDate', minDate);
}

/**
 *  щ젰  좎쭨  명똿
 *
 * @param calendarEl ( 붿냼)
 * @param ckinDate (泥댄겕  )
 * @param ckoutDate (泥댄겕  )
 *
 */
commonJs.setCalendarChkInOutDate = function (calendarEl, ckinDate, ckoutDate) {
	calendarEl.datepicker('option', 'minDate', ckinDate);
	calendarEl.datepicker('option', 'maxDate', ckoutDate);
}

/**
 *  앹뾽  깃 罹섎┛  
 * BSBM1100T.html
 *
 * @param calendarEl (Element)
 */
commonJs.initPopSingleCalendar = function (calendarEl) {
	calendarEl.datepicker({
		tDay: new Date(2020, 7, 25),
		defaultDate: new Date(2020, 7, 25),
		numberOfMonths: 1,
		showMonthAfterYear: true,
		monthNames: [
			"01",
			"02",
			"03",
			"04",
			"05",
			"06",
			"07",
			"08",
			"09",
			"10",
			"11",
			"12"
		],
		dayNamesMin: [
			"SUN",
			"MON",
			"TUE",
			"WED",
			"THU",
			"FRI",
			"SAT"
		],
		dateFormat: 'yy.mm.dd',

		beforeShow: function (input) {},
		onClose: function () {},
		onChangeMonthYear: function () {}
	});
	$('#ui-datepicker-div').wrap('<div class="datepicker-wrapper"/>');
}


/*********************************************************************************************************
 *  window.onLoad     몄텧
 *********************************************************************************************************/
/**
 * 硫붿씤  덉빟 곸뿭
 * BSMA1000M.html
 *
 * @param revArea(String)
 */
commonJs.setRevArea = function (revArea) {
	var revAreaEl = $(revArea);
	if (!revAreaEl.length) {
		return;
	}

	var previousIdx = 0;

	revAreaEl
		.find('.selectGroup .selectWrap')
		.on('change', function (e) {
			var opIdx = revAreaEl
				.find('.selectWrap select option')
				.index(revAreaEl.find('.selectWrap select option:selected'));
			$('.selectInner div[role="area"]')
				.eq(opIdx)
				.show();
			$('.selectInner div[role="area"]')
				.not(":eq(" + opIdx + ")")
				.hide();

			revAreaEl
				.find(
					'.selectInner div[role="area"]:eq(' + previousIdx + ') .clearCont .btnClose'
				)
				.trigger('click.setRevArea');

			revAreaEl
				.find(
					'.selectInner div[role="area"]:eq(' + opIdx + ') .clearCont:eq(0)'
				)
				.removeAttr('style')
				.addClass('opened')
				.show();
			revAreaEl.css({
				//'margin-top': 210,
				'z-index': 999
			})
			$('.revArea')
				.next('.dimmed')
				.show();
			previousIdx = opIdx;
		})

	//open
	var openRevArea = function (e) {
		if($("#hotelCode").val() == "" && window.location.href.indexOf("hub") > -1){
			alert(hotlAlert);//<!--  명뀛    좏깮 댁＜ 몄슂. -->
			return false;
		}

		if ($(this).siblings('.clearCont').is(':animated')) {
			return;
		}

		$(this)
			.closest(revArea)
			.next('.dimmed')
			.show();
		$(this)
			.closest(revArea)
			.find('.clearCont')
			.hide();

		var con = $(this).siblings('.clearCont');
		var h = con.outerHeight();

		//$('.header').css('opacity', '.4');

		$(this)
			.closest(revArea)
			.css({
				//'margin-top': 210,
				'z-index': 599
			})

		con.addClass('opened');
		con
			.show()
			.css({
				'overflow': 'hidden',
				'height': 0,
			})
			.stop()
			.animate({
				height: h
			}, 800, ANIMATION_EASING, function () {
				con.css({
					'overflow': '',
					'height': ''
				})
			})
		if (window.location.href.indexOf("hub") == -1 && $(".calContainer").val() == '') {
			selHotel($("#sysCode").val());
		}

	}

	$(document).on('click', '.resv-step2-box', openRevArea);

	//close
	$(document).on(
		'click.setRevArea',
		revArea + ' .clearCont .btnClose',
		function (e) {
			$(this).closeRevArea(e);
		}
	)

	$.fn.closeRevArea = function (e) {
		if ($(this).closest(revArea).find('.mainCalendar').is(':animated')) {
			return;
		}
		if ($(this).hasClass('btnPromo')) {
			return;
		}
		if ($(this).closest(revArea).length && $(this).hasClass('btnSC')) {
			return;
		}
		$(this).hide();
		//$('.header').css('opacity', '');
		$(this)
			.closest(revArea)
			.next('.dimmed')
			.hide();
		$(this)
			.closest('.clearCont')
			.removeClass('opened');
		$(this)
			.closest(revArea)
			.css({
				'margin-top': '',
				'z-index': ''
			});
		$(this)
			.closest('.clearCont')
			.css({
				'overflow': 'hidden'
			})
			.stop()
			.animate({
				'height': 0,
				'padding-top': 0,
				'padding-bottom': 0
			}, 400, ANIMATION_EASING, function () {
				$(this)
					.closest('.clearCont')
					.css({
						'height': '',
						'padding-top': '',
						'padding-bottom': ''
					})
					.hide();
			})
	}

	$('html').on('click', function (e) {

		if ($(e.target).hasClass('ui-icon')) {
			return;
		}
		if (!$(e.target).closest('.revArea').length && !$(e.target).closest('.chkInout , .roomWrap').length) {


			revAreaEl
				.find('.clearCont.opened')//.btnClose:visible
				.each(function (e1) {
					//$(this).trigger('click.setRevArea');
					$(this).closeRevArea(e1);
				})
		}
	});
}

var dUtils = {
	sep: '.', //援щ텇  
	format: 'yy.mm.dd', // щ㎎

	/**
	 *  꾩옱 議고쉶 꾩썡 媛  몄삤湲  (YYYYMM)
	 * @returns {number}
	 */
	getToYearMonth: function () {
		var varDate = new Date();

		var varYear = varDate.getFullYear();
		var varMonth = varDate.getMonth() + 1;

		if (varMonth < 10) {
			varMonth = '0' + varMonth;
		}

		return varYear + '' + varMonth;
	},

	/**
	 * yyyy-mm-dd  뺤떇 蹂   
	 * @param date (Date)
	 * @return {string}
	 */
	getToDate: function (date) {
		var varDate = date ?
			date :
			new Date();

		var varYear = varDate.getFullYear();
		var varMonth = (varDate.getMonth() + 1) < 10 ?
			'0' + (
				varDate.getMonth() + 1
			) :
			(varDate.getMonth() + 1);
		var varDay = varDate.getDate() < 10 ?
			'0' + varDate.getDate() :
			varDate.getDate();
		var varFullDate = varYear + this.sep + varMonth + this.sep + varDay;

		return varFullDate;
	},

	/**
	 *  좎쭨 ъ씠 媛꾧꺽 (1, 2, 3  )
	 * @param startDate
	 * @param endDate
	 * @returns {number}
	 */
	dateDiff: function (startDate, endDate) {
		var d1 = dUtils.parseDate(startDate);
		var d2 = dUtils.parseDate(endDate);
		var count = d2 - d1;
		return Math.floor(count / (24 * 3600 * 1000));
	},

	/**
	 *     뷀븯湲 
	 * @param strDate (string)
	 * @param days (number)
	 * @returns {string}
	 */
	addDays: function (strDate, days) {
		var tempDate = new Date(strDate);
		return tempDate.setDate(tempDate.getDate() + days);
		//return this.getToDate(tempDate);
	},

	/**
	 * Date 蹂   
	 * @param format
	 * @param date
	 * @returns {Date}
	 */
	parseDate: function (date, format) {
		var newDate = new Date();
		if ( /*'yy-mm-dd' === format && */
			date !== '') {
			var parts = date.split(this.sep);
			newDate = new Date(parts[0], parts[1] - 1, parts[2]);
		}
		return newDate;
	},

	/**
	 *  붿씪 援ы븯湲 
	 * @param date
	 * @returns (string)
	 */
	getDateToDay: function (dateStr,lang) {
		dateStr = dateStr.replace(/\./gi, "-");
        var date = new Date(dateStr);
        var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);
        var krTimeDiff = 9 * 60 * 60 * 1000;
        var krDate = new Date(utc + (krTimeDiff));

		var week = lang == 'ko' ? [
			'  ',
			'  ',
			'  ',
			'  ',
			'紐 ',
			'湲 ',
			'  '
		] :
		[
			"SUN",
			"MON",
			"TUE",
			"WED",
			"THU",
			"FRI",
			"SAT"
		];

		var dayOfWeek = week[krDate.getDay()];
		return dayOfWeek;
	},

	/**
	 *  뚯닽   吏  뺤옄由  諛섏삱由  (媛 ,  먮┸  )
	 */
	Round: function (n, pos) {
		var digits = Math.pow(10, pos);
		var sign = 1;
		if (n < 0) {
			sign = -1;
		}
		n = n * sign;
		var num = Math.round(n * digits) / digits;
		num = num * sign;
		return num.toFixed(pos);
	}
};

function Jessture(target) {
	var startX = 0;
	var startY = 0;
	var _this = $(this);
	var UP = this.UP = 'jsUp';
	var DOWN = this.DOWN = 'jsDown';
	var RIGHT = this.RIGHT = 'jsRight';
	var LEFT = this.LEFT = 'jsLeft';
	var MOUSEDOWN = this.MOUSEDOWN = 'jsMouseDown'

	target.on('touchstart , mousedown', function (e) {
		if (e.type == 'mousedown') {
			// input  꾨뱶 泥댄겕
			if ($(e.target).filter('input').length == 0) {
				e.preventDefault();
			}
			startX = e.pageX;
			startY = e.pageY;
		} else {
			startX = e
				.originalEvent
				.touches[0]
				.pageX;
			startY = e
				.originalEvent
				.touches[0]
				.pageY;
		}
	});

	target.on('touchmove , mousemove', function (e) {
		var endX = 0;
		var endY = 0;
		e.preventDefault();
		if (e.type != 'mousemove') {}
	});
	target.on('touchend , mouseup', function (e) {
		var endX = 0;
		var endY = 0;
		if (e.type == 'mouseup') {
			endX = Number(e.pageX);
			endY = Number(e.pageY);
			e.preventDefault();
		} else {
			endX = Number(e.originalEvent.changedTouches[0].pageX);
			endY = Number(e.originalEvent.changedTouches[0].pageY);
		}
		var disX = Math.abs((startX * startX) - (endX * endX));
		var disY = Math.abs((startY * startY) - (endY * endY));

		if (disX > disY) {
			if (Math.abs(startX - endX) > 70) {
				if (startX < endX) {
					_this.trigger(RIGHT);
				} else {
					_this.trigger(LEFT);
				}
			}
		} else {
			if (disY > 70) {
				if (startY < endY) {
					_this.trigger(DOWN);
				} else {
					_this.trigger(UP);
				}
			}
		}
		startX = 0;
		startY = 0;
	});

	target.on('mousedown', function (e) {
		e.preventDefault();
	})

	this.on = function (evt, func) {
		_this.on(evt, func);
	};
};