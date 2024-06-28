/**
 * 3 먮━ 肄ㅻ쭏 泥섎━
 */
function getNumberFormat(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
/**
 *  レ옄 뺤씤吏  泥댄겕
 */
function fnNumberChk(obj){
 	var s = ''+ $("#"+obj).val(); // 臾몄옄 대줈 蹂   
  	s = s.replace(/^\s*|\s*$/g, ''); // 醫뚯슦 怨듬갚  쒓굅
  	if (s == '' || isNaN(s)) return false;
  	return true;
}