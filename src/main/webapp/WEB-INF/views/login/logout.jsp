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
%> <%-- 	jstl �� ������ �Ͱ� �������� jstl�� id�� ������ �Ű� ����� ���� �� ������ ��--%>
<script>
location.href='${pageContext.request.contextPath}/main'
</script>


</body>
</html>