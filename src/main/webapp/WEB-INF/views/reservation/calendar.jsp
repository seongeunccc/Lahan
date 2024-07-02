<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약을 원하시는 날짜를 선택해 주세요</title>
</head>
<script type="text/javascript">

var today = new Date();
const dayNames = ['(일)', '(월요일)', '(화요일)', '(수요일)', '(목요일)', '(금요일)', '(토요일)'];
function setCalendar(){
	var setNextDate = today.toISOString().substring(0, 10);
	var nextDay = new Date(today);
	nextDay.setDate(today.getDate()+1);	
	document.getElementById('checkInDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('checkInDate').min = new Date().toISOString().substring(0, 10);
	document.getElementById('checkOutDate').value = nextDay.toISOString().substring(0, 10);	
}

function setCheckOutDate() {
    var checkInDateValue = document.getElementById('checkInDate').value;
    var checkInDate = new Date(checkInDateValue);
    var nextDay = new Date(checkInDate);
    nextDay.setDate(checkInDate.getDate() + 1);
	console.log("체크아웃 : "+nextDay.toISOString().substring(0, 10));
    
    document.getElementById('checkOutDate').min = nextDay.toISOString().substring(0, 10);
    if (new Date(document.getElementById('checkOutDate').value) <= nextDay) {
        document.getElementById('checkOutDate').value = nextDay.toISOString().substring(0, 10);
    }
}


window.onload = function() {
setCalendar();
};

</script>


<body>
	<div align="center">
	<form action="/nextPage" name="resv" id="resv" >
		체크인 <input type="date"  id="checkInDate"  min="2024-07-01" value="2024-07-01"  onchange="setCheckOutDate()"> 체크아웃 <input type="date"  id="checkOutDate" min="2024-07-02" value="2024-07-05" >

	
	
	
	</form>
	</div>
	
</body>
</html>