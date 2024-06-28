function setCookie(cookie_name, value, days) {
    const exdate = new Date();
    exdate.setDate(exdate.getDate() + days);
    const cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
    document.cookie = cookie_name + '=' + cookie_value + ';path=/';;
}

function getCookie(cookie_name) {
    var x, y;
    var val = document.cookie.split(';');

    for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); //  욊낵  ㅼ쓽 怨듬갚  쒓굅 섍린
        if (x == cookie_name) {
            return unescape(y); // unescape濡   붿퐫      媛  由ы꽩
        }
    }
}

//Kakao.init('438640d4b9805e71798285300d414ccf');
//function shareKakao() {
//	Kakao.Link.sendDefault({
//        objectType: 'feed',
//        content: {
//        	title: $('meta[property="og:title"]').attr('content'),				//肄섑뀗痢     댄땼
//            description: $('meta[property="og:description"]').attr('content'),	//肄섑뀗痢좎쓽  곸꽭 ㅻ챸
//            imageUrl: $('meta[property="og:image"]').attr('content'),			//肄섑뀗痢좎쓽  대 吏   URL
//          	link: {
//            	mobileWebUrl: $('meta[property="og:url"]').attr('content').replace(/&amp;/g,'&'),		//紐⑤컮   移댁뭅 ㅽ넚  밸쭅   URL
//            	webUrl: $('meta[property="og:url"]').attr('content').replace(/&amp;/g,'&'),				//PC踰꾩쟾 移댁뭅 ㅽ넚  밸쭅   URL */ //PC踰꾩쟾 移댁뭅 ㅽ넚  밸쭅   URL
//          	},
//        },
//        success: function(response) {
//           console.log(response);
//        },
//        fail: function(error) {
//           console.log(error);
//        }
//	});
//}


/*
 * URL 蹂듭궗 섍린
*/
function copyToClipboard(lang) {
	var copyUrl = document.createElement("textarea");
	document.body.appendChild(copyUrl);
	copyUrl.value = document.location.href;
	copyUrl.select();
	document.execCommand('copy');
	document.body.removeChild(copyUrl);
	if(lang == "en") {
		alert("The URL has been copied to the clipboard.");
	} else {
		alert("留곹겕媛  蹂듭궗 섏뿀 듬땲  .");
	}
}

function goBooking(lang) {
	if(lang == "en") {
		window.open("https://booking.parnashoteljeju.com/reservation/?code=H0217&lang=english");
	} else {
		window.open("https://booking.parnashoteljeju.com/reservation/?code=H0217&lang=korean");
	}
}

function goRestaurant(lang) {
	if(lang == "en") {
		window.open('https://app.catchtable.co.kr/ct/shop/parnas_jeju');
	} else {
		window.open('https://app.catchtable.co.kr/ct/shop/parnas_jeju');
	}
}

//  뚮씪硫뷀꽣  댁꽍
function getParameter(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function appJsInterface(funNm, param) {
	var userAgent = navigator.userAgent.toLowerCase();
	if(userAgent.indexOf("android") !== -1){
	    // android      	
		if(param == "") {
			eval("Android."+funNm + "()");
		} else {
			eval("Android."+funNm + "('"+JSON.stringify(param)+"')");
		}
	} else if(userAgent.indexOf("iphone") !== -1){
	    // iphone      
		
		var iosParam = {
			"action": funNm,
			"data" : param				
		}
		
		if(param == "") {
			eval("webkit.messageHandlers.IOS.postMessage('"+JSON.stringify(iosParam)+"')");
		} else {
			eval("webkit.messageHandlers.IOS.postMessage('"+JSON.stringify(iosParam)+"')");
		}

	}
}

