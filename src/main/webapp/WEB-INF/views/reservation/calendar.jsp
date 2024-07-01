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

function buildCalendar(){
  var row = null;
  var cnt = 0;
  var calendarTable = document.getElementById("calendar");
  var calendarTableTitle = document.getElementById("calendarTitle");
  calendarTableTitle.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
  var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

  while (calendarTable.rows.length > 2) {
    calendarTable.deleteRow(calendarTable.rows.length - 1);
  }

  row = calendarTable.insertRow();

  // 첫 번째 주의 공백을 추가합니다.
  for (var i = 0; i < firstDate.getDay(); i++) {
    var cell = row.insertCell();
    cell.innerHTML = "&nbsp;"; // 공백 표시
    cnt += 1;
  }

  // 날짜를 추가합니다.
  for (var i = 1; i <= lastDate.getDate(); i++) {
    if (cnt % 7 == 0) { // 새로운 주가 시작될 때 새로운 행을 추가합니다.
      row = calendarTable.insertRow();
    }

    var cell = row.insertCell();
    cnt += 1;

    cell.setAttribute('id', i);
    cell.innerHTML = i;
    cell.align = "center";

    cell.onclick = function() {
      var clickedYear = today.getFullYear();
      var clickedMonth = (1 + today.getMonth());
      var clickedDate = this.getAttribute('id');

      clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
      clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
      var clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;

      opener.document.getElementById("date").value = clickedYMD;
      self.close();
    };

    if (cnt % 7 == 1) {
      cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
    }

    if (cnt % 7 == 0) {
      cell.innerHTML = "<font color=skyblue>" + i + "</font>";
    }
  }

  // 마지막 주에 남은 공백을 추가합니다.
  if (cnt % 7 != 0) {
    for (var i = 0; i < 7 - (cnt % 7); i++) {
      var cell = row.insertCell();
      cell.innerHTML = "&nbsp;"; // 공백 표시
    }
  }
}

function prevCalendar() {
  today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
  buildCalendar();
}

function nextCalendar() {
  today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
  buildCalendar();
}

</script>


<body>
<table id="calendar" align="center">
		<tr>
			<td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
			<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
			<td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
		</tr>
		<tr>
			<td align="center"><font color ="#F79DC2">일</td>
			<td align="center">월</td>
			<td align="center">화</td>
			<td align="center">수</td>
			<td align="center">목</td>
			<td align="center">금</td>
			<td align="center"><font color ="skyblue">토</td>
		</tr>
		<script type="text/javascript">buildCalendar();</script>
	</table>
	
</body>
</html>