/**
 *  꾩옱 議고쉶 꾩썡 媛  몄삤湲  (YYYYMM)
 * @returns {number}
 */
function getToYearMonth(){
	var varDate = new Date();

	var varYear = varDate.getFullYear();
	var varMonth = varDate.getMonth() + 1;

	if(varMonth < 10){
		varMonth = '0' + varMonth;
	}

	return varYear +''+ varMonth;
}

/**
* yyyy-mm-dd  뺤떇 蹂   
* @param date (Date)
* @return {string}
*/
function getToDate(date){
	var sep = "."; //援щ텇  
	var varDate = date ? date : new Date();

    var date = new Date(varDate);
    var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);
    var krTimeDiff = 9 * 60 * 60 * 1000;
    var krDate = new Date(utc + (krTimeDiff));


	var varYear = krDate.getFullYear();
	var varMonth = (krDate.getMonth() + 1) < 10 ? '0'+(krDate.getMonth()+1) : (krDate.getMonth()+1);
	var varDay = krDate.getDate() < 10 ? '0'+krDate.getDate() : krDate.getDate();
	var varFullDate = varYear + sep + varMonth + sep + varDay;

	return varFullDate;
}

/**
 *  좎쭨 ъ씠 媛꾧꺽 (1, 2, 3  )
 * @param startDate
 * @param endDate
 * @returns {number}
 */
function dateDiff(startDate, endDate) {
	var d1 = parseDate(startDate);
	var d2 = parseDate(endDate);
	var count = d2 - d1;
	return Math.floor(count/(24*3600*1000));
}

/**
 *     뷀븯湲 
 * @param strDate (string)
 * @param days (number)
 * @returns {string}
 */
function addDays(strDate, days) {
	var tempDate = new Date(strDate);

	return tempDate.setDate(tempDate.getDate() + days);
	//return this.getToDate(tempDate);
}

/**
 *  꾩옱   湲곗   좎옄  뷀븯湲 
 * @param days
 * @returns
 */
function nowAddDays(days) {
	var today = new Date();

	var tomorrow = new Date(today);
	tomorrow.setDate(today.getDate() + days);
	return getToDate(tomorrow);
}

/**
 * Date 蹂   
 * @param format
 * @param date
 * @returns {Date}
 */
function parseDate(date, format) {
	var sep = ".";
	var newDate = new Date();
	if (/*'yy-mm-dd' === format && */date !== '') {
		var parts = date.split(sep);
		newDate = new Date(parts[0], parts[1] - 1, parts[2]);
	}
	return newDate;
}

/**
*  붿씪 援ы븯湲 
* @param date
* @returns (string)
*/
function getDateToDay(dateStr, lang) {
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
}

/**
*  ㅽ듃留  8 먮━  щ㎎ 쇰줈 由ы꽩
**/
function getStrDateFormat(str, format) {
	return str.substr(0,4)+format+str.substr(4,2)+format+str.substr(6,2);
}

/**
 *  꾩썡 쇱떆遺꾩큹
 */
function getYyyyMMddhhmmss() {
	var date = new Date();
    var year = date.getFullYear().toString();

    var month = date.getMonth() + 1;
    month = month < 10 ? '0' + month.toString() : month.toString();

    var day = date.getDate();
    day = day < 10 ? '0' + day.toString() : day.toString();

    var hour = date.getHours();
    hour = hour < 10 ? '0' + hour.toString() : hour.toString();

    var minites = date.getMinutes();
    minites = minites < 10 ? '0' + minites.toString() : minites.toString();

    var seconds = date.getSeconds();
    seconds = seconds < 10 ? '0' + seconds.toString() : seconds.toString();

    return year + month + day + hour + minites + seconds;
}