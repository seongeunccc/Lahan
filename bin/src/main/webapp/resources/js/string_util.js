
/**
 * byte check
 * return byte
 */
function fnChkByteChk(obj){
	var str = $("#"+obj).val();
	var codeByte = 0;
    for (var idx = 0; idx < str.length; idx++) {
        var oneChar = escape(str.charAt(idx));
        if ( oneChar.length == 1 ) {
            codeByte ++;
        } else if (oneChar.indexOf("%u") != -1) {
            codeByte += 2;
        } else if (oneChar.indexOf("%") != -1) {
            codeByte ++;
        }
        console.log("oneChar ==> " + oneChar);
        
    }
	return codeByte;
}

/**
 *  대찓   泥댄겕
 */
function fnEmailChk(str) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if (!str.match(regExp)) {
    	return false;
    } else {
  		return true;
    }
}

/**
 *  먮━   泥댄겕
 */
function fnChkStrLength(obj) {
	return $("#"+obj).val().length;
}
/**
 * 媛쒗뻾泥섎━
 * 
 */
function fnReplaceBrTag(str) {
	if (str == undefined || str == null)
    {
        return "";
    }

    str = str.replace(/\r\n/ig, '<br>');
    str = str.replace(/\\n/ig, '<br>');
    str = str.replace(/\n/ig, '<br>');
    return str;
}