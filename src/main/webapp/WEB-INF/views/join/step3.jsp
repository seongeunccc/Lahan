<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<p class="text-center">회원 가입이 완료되었습니다.</p>
		<div class="card mb-3">
			<div class="card-body">
				<p>
					<strong>아이디:</strong> ${param.userid}
				</p>
				<p>
					<strong>이름:</strong> ${param.name}
				</p>
				<p>
					<strong>이메일:</strong> ${param.email}
				</p>
			</div>
		</div>
		<div class="text-center">
			<a href="./homepage.ho" class="btn btn-primary">메인으로 이동</a>
		</div>

</body>
</html>