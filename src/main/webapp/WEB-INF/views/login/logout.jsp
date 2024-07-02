<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
session.invalidate();
%> <%-- 	jstl 로 날리넌 것과 차이점은 jstl은 id만 날리는 거고 여기는 세션 다 날리는 것--%>
<script>
location.href='${pageContext.request.contextPath}/main'
</script>


</body>
</html>