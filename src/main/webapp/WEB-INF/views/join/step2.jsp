<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
        function goBack() {
            window.history.back();
        }
        
        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                alert("��й�ȣ�� ��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�. �ٽ� �Է��� �ּ���.");
                return false;
            }
            return true;
        }
        
        
    </script>
</head>
<body>

agree Email : ${param.agreeEmail} �Ѿ���� �� �Ѿ���� on ���� ���� �ȳѾ���� null �ε�

<div>
<h2 class="text-center mb-4">ȸ�� ���� - ���� �Է�</h2>
    <ul class="nav nav-pills justify-content-center mb-4">
        <li class="nav-item">
            <a class="nav-link disabled" href="#">1. �������</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="#">2. �����Է�</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#">3. ���ԿϷ�</a>
        </li>
    </ul>
    <form action="./registerAction.ho" method="post" onsubmit="return validateForm()">
        <!-- ��� ���� �� ������ ���� -->
       
       <%--  <input type="hidden" name="agreesms" value="${param.agreesms}"> --%>
        <input type="hidden" name="agreeEmail" value="${param.agreeEmail}">
        
        <!-- ȸ�� ���� ���� �Է� -->
        <div class="form-group mb-3">
            <label for="userId">���̵�</label>
            <input type="text" class="form-control" id="id" name="id" required>
        </div>
        <div class="form-group mb-3">
            <label for="password">��й�ȣ</label>
            <input type="password" class="form-control" id="pw" name="pw" required>
        </div>
        <div class="form-group mb-3">
            <label for="confirmPassword">��й�ȣ Ȯ��</label>
            <input type="password" class="form-control" id="confirmPw" name="confirmPw" required>
        </div>
        <div class="form-group mb-3">
            <label for="name">�̸�</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
         <div class="form-group mb-3">
            <label for="name">�����̸�</label>
            <input type="text" class="form-control" id="en_name" name="en_name" required>
        </div>
         <div class="form-group mb-3">
            <label for="name">�������</label>
            <input type="text" class="form-control" id="birth" name="birth" required>
        </div>
        <div class="form-group mb-3">
            <label for="phone">�޴���ȭ</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>
        <div class="form-group mb-3">
            <label for="adrs">�ּ�</label>
            <input type="text" class="form-control" id="adrs" name="adrs" required>
        </div>
        <div class="form-group mb-3">
            <label for="email">�̸���</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
         <div class="form-group mb-3">
            <label for="email">��õ���ڵ�</label>
            <input type="email" class="form-control" id="recomId" name="recomId" >
        </div>
         <div class="form-group mb-3">
            <label for="email">���θ���ڵ�</label>
            <input type="email" class="form-control" id="proCode" name="proCode" >
        </div>
        
        <!-- ��ư -->
        <div class="text-center">
            <button type="submit" class="btn btn-primary">�����ϱ�</button>
            <button type="button" class="btn btn-secondary" onclick="history.back()">���</button>
        </div>
    </form>
</div>

</body>
</html>