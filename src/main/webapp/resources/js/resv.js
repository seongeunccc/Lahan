//예약 가능날짜 담을 맵
var dateList;

//호텔 선택
function selHotel(sysCode){
	$("#sysCode").val(sysCode);
	$("#searchMonth").val("");
	$("#searchYear").val("");
	hotlCalendar(true);
}

function hotlCalendar(init){
	if(init){
		$(".calContainer").datepicker("destroy");
	}
	
	$.ajax({
		type : "POST"
		,url : "/api/resv/calendar.do"
		,cache : false
		,dataType : "json"
		,data : $("#form").serialize()
		,async : true
		,success:function(data){
			if(data != null && data != ""){
				$("#hotelCode").val(data.hotelCode);
				$("#pms_seq_no").val(data.SS_PMS_SEQ_NO);
				$("#SS_PMS_SEQ_NO").val(data.SS_PMS_SEQ_NO);
				$("#SS_PMS_CODE").val(data.SS_PMS_CODE);
				$("#htNmText").text(data.hotelNm);
				var map = new Map();
				$.each(data.calendar, function(index,item){
					map.set(item.enabledate , "1");
				})
				dateList = map;
				if(init){
					commonJs.initResvCalendar($(".calContainer"),siteLang);
				}else{
					$(".calContainer").datepicker("refresh");
				}
			}
		},
		beforeSend: function() {
	    	showLoading();
	    },
	    complete: function() {
			hideLoading();
	    },
		error:function(r, s, e){
			alert(alertAjaxError.replace("{1}", r.status).replace("{2}", r.responseText));
		}
	});
	
}


function setReservInit() {
    var today = getToDate();    // 오늘날짜
    var tomorrow = nowAddDays(1);   // 내일
    var todayWk = getDateToDay(today, siteLang);
    var tomorrowWk = getDateToDay(tomorrow, siteLang);
    $("#chkInDate").text(today);
    $("#ckinDay").text("("+todayWk+")");
    $("#chkOutDate").text(tomorrow);
    $("#ckoutDay").text("("+tomorrowWk+")");
    
    $("#check_in").val(today.replaceAll(".", "-"));
    $("#check_out").val(tomorrow.replaceAll(".", "-"));
}

//+버튼
function plus(id,e,min){
	var value = Number($("#"+id).val());
	var sum = Number($("#num1").val()) + Number($("#num2").val());
	if(5 == sum){
		//경고문구
		alert(alertResv0001);
		return;
	}else{
		$("#"+id).val(value+1);
		$(e).parent().find(".btnDown").removeClass("blank");
		if(sum+1 == 5){
			$(".ppBtn.btnUp").each(function(index,item){
				$(item).addClass("blank");
			})
		}
	}
}
//-버튼
function minus(id,e,min){
	var value = Number($("#"+id).val());
	var sum = Number($("#num1").val()) + Number($("#num2").val());
	if(id == "num1"){
		if(value == 1){
			return;
		}else{
			$("#"+id).val(value-1);
			$(".ppBtn.btnUp").removeClass("blank");
		}
	}else{
		if(value == 0){
			$(e).addClass("blank");
			return;
		}else{
			$("#"+id).val(value-1);
			$(".ppBtn.btnUp").removeClass("blank");
		}
	}
	
	if(value-1 == min){
		$(e).parent().find(".btnDown").addClass("blank");
	}
}
//다음스텝
function resvStart(){
	
	//호텔 선택여부
	if($("#pms_seq_no").val() == "" || $("#SS_PMS_SEQ_NO").val() == "" || $("#SS_PMS_CODE").val() == ""){
		alert(alertResv0011);
		return;
	}
	//날짜선택
	if($("#check_in").val() == "" || $("#check_out").val() == ""){
		alert(alertResv0031);
		return;
	} 
	//인원 수 검증
	if($("#num1").val() == "0"){
		alert(alertResv0002);
		return;
	}
	
	
	$("#night").val($("#nightText").text());
	$("#adult").val($("#num1").val());
	$("#children").val($("#num2").val());
	$("#check_in_text").val($("#chkInDate").text() +" "+$("#ckinDay").text()); // 체크인 텍스트
	$("#check_out_text").val($("#chkOutDate").text() +" "+$("#ckoutDay").text()); // 체크아웃 텍스트
    $("#check_in").val($("#chkInDate").text().replace(/\./gi, "-").trim()); // 체크인 날짜
    $("#check_out").val($("#chkOutDate").text().replace(/\./gi, "-").trim()); // 체크아웃 날짜
	$("#htNm").val($("#htNmText").text());

	const step2Param = $("#form").serialize();
	$("#step2Param").val(step2Param);
	showLoading();
	$("#form").submit();
}

function showLoading(){
	$(".dimmed2").show();
	$(".loading-box").show();
}
function hideLoading(){
	$(".dimmed2").hide();
	$(".loading-box").hide();
}

//프로모션 코드
function prmtnSeach(){
	//호텔 선택여부
	if($("#pms_seq_no").val() == "" || $("#SS_PMS_SEQ_NO").val() == "" || $("#SS_PMS_CODE").val() == ""){
		alert(alertResv0011);
		return;
	}

	const code = $("#prtmCode").val();
	//프로모션 코드 입력 ㅇ여부
	if(code == ""){
		alert(alertResv0003);
		$(".resv-step4-prcode").addClass("open");
		return;
	}
	$("#Prm_code").val(code);
	
	$.ajax({
		type : "POST"
		,url : "/api/resv/prmtnSearch.json"
		,cache : false
		,dataType : "json"
		,data : $("#form").serialize()
		,async : true
		,success:function(data){
			if(data.re == "null"){
				alert(alertResv0003);
				$(".resv-step4-prcode").addClass("open");
				$("#Prm_code").val("");
			}else{
				$("#prm_seq_no").val(data.re);
			}
		},
		error:function(r, s, e){
			alert(alertAjaxError.replace("{1}", r.status).replace("{2}", r.responseText));
		},
		beforeSend: function() {
	    	showLoading();
	    },
	    complete: function() {
			hideLoading();
	    },
	});
}