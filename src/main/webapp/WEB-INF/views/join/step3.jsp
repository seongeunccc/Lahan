<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<p class="text-center">ȸ�� ������ �Ϸ�Ǿ����ϴ�.</p>
		<div class="card mb-3">
			<div class="card-body">
				<p>
					<strong>���̵�:</strong> ${param.userid}
				</p>
				<p>
					<strong>�̸�:</strong> ${param.name}
				</p>
				<p>
					<strong>�̸���:</strong> ${param.email}
				</p>
			</div>
		</div>
		<div class="text-center">
			<a href="./homepage.ho" class="btn btn-primary">�������� �̵�</a>
		</div>

</body>
</html>