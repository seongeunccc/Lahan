<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 잘 넘어오는지 테스트~~</title>
</head>
<body>
<c:set var="resv" value="${dto}"/>
 hotel 이름 : ${hotel} <br>
성인 : ${adult}명  <br>
소인 : ${children}명  <br>
총 숙박인원  : ${adult+children }명 <br>
숙박일수 : ${night}일  <br>
체크인 일시 + 요일 : ${check_in_text} <br> 
체크아웃 일시 + 요일 : ${check_out_text} <br> 
체크인 일시 (. 대신 -) : ${check_in} <br> 
체크아웃 일시 (. 대신 -) : ${check_out} <br>
프로모션 코드 : ${Prm_code} <br> 
체크인 요일  : ${check_In_Day} <br>
체크아웃 요일 : ${check_Out_Day} <br>

<hr> 
 hotel 이름 : ${dto.hotel} <br>
성인 : ${dto.adult}명  <br>
소인 : ${dto.children}명  <br>
총 숙박인원  : ${dto.adult+dto.children }명 <br>
숙박일수 : ${dto.night}일  <br>
체크인 일시 + 요일 : ${dto.check_in_text} <br> 
체크아웃 일시 + 요일 : ${dto.check_out_text} <br> 
체크인 일시 (. 대신 -) : ${dto.check_in} <br> 
체크아웃 일시 (. 대신 -) : ${dto.check_out} <br>
프로모션 코드 : ${dto.prm_code} <br> 
체크인 요일  : ${dto.check_In_Day} <br>
체크아웃 요일 : ${dto.check_Out_Day} <br>
선택한 객실 : ${roomdto.room_name} <br>
<br/>
<hr> 
<table>
<c:forEach var="dto" items="${roomList}">
	<tr>
	<td>${dto.name } </td>
	<td>${dto.room_name } </td>
	<td>${dto.price } </td>
	</tr>
</c:forEach>
<c:forEach var="resvDto" items="${resvDto}">
	<tr>
	<td>${resvDto.reservation_id } </td>
	<td>${resvDto.hotel } </td>
	<td>${resvDto.price } </td>
	</tr>
</c:forEach>



</table>
</body>
</html>