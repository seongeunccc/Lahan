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


</body>
</html>